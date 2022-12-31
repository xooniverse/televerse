part of televerse;

class Televerse extends Event {
  final String token;

  late Fetcher fetcher;

  Televerse(
    this.token, {
    Fetcher? fetcher,
  }) {
    this.fetcher = fetcher ?? LongPolling(this);
  }

  final String _baseUrl = "api.telegram.org";
  Uri _buildUri(String method, [Map<String, dynamic>? params]) {
    params?.removeWhere((key, value) => value == null);
    params = params?.map((key, value) => MapEntry(key, value.toString()));
    Uri uri = Uri.https(_baseUrl, "/bot$token/$method", params);
    return uri;
  }

  ///
  void _onUpdate(Update update) {
    emitUpdate(update, this);
  }

  /// Start polling for updates.
  Future<void> start() async {
    fetcher.start();
    fetcher.onUpdate().listen((update) {
      _onUpdate(update);
    });
  }

  /// Stream of [Update] objects.
  ///
  /// ! **IMPORTANT NOTE** !
  ///
  /// **This stream is used internally by the library to receive updates.**
  /// So, if you are using [start] method to start polling, you should not use this stream.
  /// If you do a [LongPollingException.alreadyPolling] will be thrown.
  Stream<Update> get updatesStream {
    return fetcher.onUpdate();
  }

  /// Use this method to receive incoming updates using long polling.
  /// An Array of Update objects is returned.
  ///
  /// See more at https://core.telegram.org/bots/api#getupdates
  Future<List<Update>> getUpdates({
    int? offset,
    int? limit,
    int? timeout,
    List<String>? allowedUpdates,
  }) async {
    Map<String, dynamic> params = {
      "offset": offset,
      "limit": limit,
      "timeout": timeout,
    };

    if (allowedUpdates != null && allowedUpdates.isNotEmpty) {
      params["allowed_updates"] = jsonEncode(allowedUpdates);
    }

    Uri uri = _buildUri("getUpdates", params);

    final response = await HttpClient.get(uri);

    if (response is! List) {
      throw LongPollingException("Got an invalid response. $response");
    }

    return (response)
        .map((e) => Update.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Use this method to specify a URL and receive incoming updates via an outgoing webhook.
  /// Whenever there is an update for the bot, we will send an HTTPS POST request to the specified URL,
  /// containing a JSON-serialized Update. In case of an unsuccessful request, we will give up after a
  /// reasonable amount of attempts. Returns True on success.
  /// If you'd like to make sure that the webhook was set by you, you can specify secret data in the
  /// parameter secret_token. If specified, the request will contain a header “X-Telegram-Bot-Api-Secret-Token”
  /// with the secret token as content.
  ///
  /// See more at https://core.telegram.org/bots/api#setwebhook
  Future<bool> setWebhook({
    required String url,
    io.File? certificate,
    String? ipAddress,
    int? maxConnections,
    List<String>? allowedUpdates,
    bool? dropPendingUpdates,
    String? secretToken,
  }) async {
    Map<String, dynamic> params = {
      "url": url,
      "ip_address": ipAddress,
      "max_connections": maxConnections,
      "allowed_updates": jsonEncode(allowedUpdates),
      "drop_pending_updates": dropPendingUpdates,
      "secret_token": secretToken,
    };
    if (certificate != null) {
      List<MultipartFile> files = [];
      files.add(MultipartFile(
        'certificate',
        certificate.openRead(),
        certificate.lengthSync(),
        filename: certificate.path.split("/").last,
      ));
      Uri uri = _buildUri("setWebhook");
      return await HttpClient.multipartPost(uri, files, params);
    } else {
      Uri uri = _buildUri("setWebhook");
      return await HttpClient.post(uri, params);
    }
  }

  /// Use this method to remove webhook integration if you decide to switch back to getUpdates.
  /// Returns True on success.
  ///
  /// See more at https://core.telegram.org/bots/api#deletewebhook
  Future<bool> deleteWebhook({bool? dropPendingUpdates}) async {
    Map<String, dynamic> params = {
      "drop_pending_updates": dropPendingUpdates,
    };
    Uri uri = _buildUri("deleteWebhook", params);

    bool response = await HttpClient.get(uri);
    return response;
  }

  /// Use this method to get current webhook status. Requires no parameters. On success, returns a WebhookInfo object.
  /// If the bot is using getUpdates, will return an object with the url field empty.
  ///
  /// See more at https://core.telegram.org/bots/api#getwebhookinfo
  Future<WebhookInfo> getWebhookInfo() async {
    Uri uri = _buildUri("getWebhookInfo");

    Map<String, dynamic> response = await HttpClient.get(uri);
    return WebhookInfo.fromJson(response);
  }

  /// A simple method for testing your bot's authentication token. Requires no parameters.
  /// Returns basic information about the bot in form of a User object.
  ///
  /// See more at https://core.telegram.org/bots/api#getme
  Future<User> getMe() async {
    Uri uri = _buildUri("getMe");

    Map<String, dynamic> response = await HttpClient.get(uri);
    return User.fromJson(response);
  }

  /// Use this method to log out from the cloud Bot API server before launching the bot locally. You must log out the bot before running it locally, otherwise there is no guarantee that the bot will receive updates. After a successful call, you can immediately log in on a local server, but will not be able to log in back to the cloud Bot API server for 10 minutes. Returns True on success. Requires no parameters.
  /// Note: This will affect all running bots.
  ///
  /// See more at https://core.telegram.org/bots/api#logout
  Future<bool> logOut() async {
    Uri uri = _buildUri("logOut");

    bool response = await HttpClient.get(uri);
    return response;
  }

  /// Use this method to close the bot instance before moving it from one local server to another. You need to delete the webhook before calling this method to ensure that the bot isn't launched again after server restart. The method will return error 429 in the first 10 minutes after the bot is launched. Returns True on success. Requires no parameters.
  ///
  /// See more at https://core.telegram.org/bots/api#close
  Future<bool> close() async {
    Uri uri = _buildUri("close");

    bool response = await HttpClient.get(uri);
    return response;
  }

  /// Use this method to send text messages. On success, the sent [MessageContext] is returned.
  ///
  /// Required parameters:
  /// - [chatId] - Chat ID can either be [ChatID] or [ChannelID] or [SupergroupID]
  ///
  /// - [text] - Text of the message to be sent
  ///
  /// You can optionally pass the more parameters as described in the official documentation.
  /// See more at https://core.telegram.org/bots/api#sendmessage
  ///
  /// **Example:**
  /// ```dart
  /// /// If you're using [ChatID] specify the chat id as an integer
  /// bot.sendMessage(ChatID(123456789), "Hello World!");
  ///
  /// /// If you're using [ChannelID] or [SupergroupID] specify the chat id as a string
  /// /// Both [ChannelID] and [SupergroupID] are treated the same way
  /// bot.sendMessage(ChannelID("@myChannel"), "Hello World!");
  /// ```
  ///
  /// On success, the sent [MessageContext] is which can be used to reply to the message.
  Future<MessageContext> sendMessage(
    ID chatId,
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "text": text,
      "message_thread_id": messageThreadId,
      "parse_mode": parseMode?.value,
      "entities": entities?.map((e) => e.toJson()).toList(),
      "disable_web_page_preview": disableWebPagePreview,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Uri uri = _buildUri("sendMessage", params);

    Map<String, dynamic> response = await HttpClient.get(uri);
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to forward messages of any kind. Service messages can't be forwarded. On success, the sent [MessageContext] is returned.
  ///
  /// Required parameters:
  /// - [chatId] - Chat ID can either be [ChatID] or [ChannelID] or [SupergroupID]
  /// - [fromChatId] - Chat ID can either be [ChatID] or [ChannelID] or [SupergroupID]
  /// - [messageId] - Message identifier in the chat specified in [fromChatId]
  ///
  /// You can optionally pass the more parameters as described in the official documentation.
  ///
  /// - [disableNotification] - Sends the message silently. Users will receive a notification with no sound.
  /// - [messageThreadId] - Unique identifier for the target message thread (topic) of the forum; for forum supergroups only
  /// - [protectContent] - Protects the contents of the forwarded message from forwarding and saving
  ///
  /// **Example:**
  /// ```dart
  /// /// If you're using [ChatID] specify the chat id as an integer
  /// bot.forwardMessage(ChatID(123456789), ChatID(987654321), 123456789);
  ///
  /// /// If you're using [ChannelID] or [SupergroupID] specify the chat id as a string
  /// /// Both [ChannelID] and [SupergroupID] are treated the same way
  /// bot.forwardMessage(ChannelID("@myChannel"), ChannelID("@myChannel"), 123456789);
  /// ```
  ///
  /// See more at https://core.telegram.org/bots/api#forwardmessage
  Future<MessageContext> forwardMessage(
    ID chatId,
    ID fromChatId,
    int messageId, {
    bool? disableNotification,
    int? messageThreadId,
    bool? protectContent,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "from_chat_id": fromChatId.id,
      "message_id": messageId,
      "disable_notification": disableNotification,
      "message_thread_id": messageThreadId,
      "protect_content": protectContent,
    };
    Uri uri = _buildUri("forwardMessage", params);

    Map<String, dynamic> response = await HttpClient.get(uri);
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to copy messages of any kind. Service messages and invoice messages can't be copied. A quiz poll can be copied only if the value of the field correct_option_id is known to the bot. The method is analogous to the method forwardMessage, but the copied message doesn't have a link to the original message. Returns the MessageId of the sent message on success.
  Future<MessageId> copyMessage(
    ID chatId,
    ID fromChatId,
    int messageId, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "from_chat_id": fromChatId.id,
      "message_id": messageId,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Uri uri = _buildUri("copyMessage", params);

    Map<String, dynamic> response = await HttpClient.get(uri);
    return MessageId.fromJson(response);
  }

  /// Use this method to send photos. On success, the sent Message is returned.
  Future<MessageContext> sendPhoto(
    ID chatId,
    InputFile photo, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "disable_notification": disableNotification,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    if (photo.type == InputFileType.file) {
      if (!photo.file!.existsSync()) {
        throw TeleverseException.fileDoesNotExist(photo.file!.path);
      }
      List<MultipartFile> files = [
        MultipartFile.fromBytes(
          "photo",
          photo.file!.readAsBytesSync(),
          filename: photo.file!.path.split("/").last,
        )
      ];
      params.removeWhere((key, value) => value == null);
      response = await HttpClient.multipartPost(
        _buildUri("sendPhoto"),
        files,
        params,
      );
    } else {
      params["photo"] = photo.fileId ?? photo.url;
      response = await HttpClient.get(_buildUri("sendPhoto", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send audio files, if you want Telegram clients to display them in the music player. Your audio must be in the .MP3 or .M4A format. On success, the sent Message is returned. Bots can currently send audio files of up to 50 MB in size, this limit may be changed in the future.
  ///
  /// For sending voice messages, use the [sendVoice] method instead.
  Future<MessageContext> sendAudio(
    ID chatId,
    InputFile audio, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? duration,
    String? performer,
    String? title,
    InputFile? thumb,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "duration": duration,
      "performer": performer,
      "title": title,
      "thumb": thumb?.fileId ?? thumb?.url,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    List<MultipartFile> files = [];
    if (audio.type == InputFileType.file || thumb?.type == InputFileType.file) {
      if (audio.type == InputFileType.file) {
        if (!audio.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(audio.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "audio",
            audio.file!.readAsBytesSync(),
            filename: audio.file!.path.split("/").last,
          ),
        );
      }
      if (thumb?.type == InputFileType.file) {
        if (!thumb!.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(thumb.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "thumb",
            thumb.file!.readAsBytesSync(),
            filename: thumb.file!.path.split("/").last,
          ),
        );
      }
      params.removeWhere((key, value) => value == null);
      response = await HttpClient.multipartPost(
        _buildUri("sendAudio"),
        files,
        params,
      );
    } else {
      params["audio"] = audio.fileId ?? audio.url;
      response = await HttpClient.get(_buildUri("sendAudio", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
  Future<MessageContext> sendDocument(
    ID chatId,
    InputFile document, {
    int? messageThreadId,
    InputFile? thumb,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableContentTypeDetection,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "thumb": thumb?.fileId ?? thumb?.url,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "disable_content_type_detection": disableContentTypeDetection,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    List<MultipartFile> files = [];
    if (document.type == InputFileType.file ||
        thumb?.type == InputFileType.file) {
      if (document.type == InputFileType.file) {
        if (!document.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(document.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "document",
            document.file!.readAsBytesSync(),
            filename: document.file!.path.split("/").last,
          ),
        );
      }
      if (thumb?.type == InputFileType.file) {
        if (!thumb!.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(thumb.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "thumb",
            thumb.file!.readAsBytesSync(),
            filename: thumb.file!.path.split("/").last,
          ),
        );
      }
      params.removeWhere((key, value) => value == null);
      response = await HttpClient.multipartPost(
        _buildUri("sendDocument"),
        files,
        params,
      );
    } else {
      params["document"] = document.fileId ?? document.url;
      response = await HttpClient.get(_buildUri("sendDocument", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }
}
