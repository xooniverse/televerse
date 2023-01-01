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
  /// DO NOT USE THIS STREAM IF YOU ARE USING [start] METHOD.
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
    final response = await HttpClient.getURI(uri);

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
      return await HttpClient.postURI(uri, params);
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

    bool response = await HttpClient.getURI(uri);
    return response;
  }

  /// Use this method to get current webhook status. Requires no parameters. On success, returns a WebhookInfo object.
  /// If the bot is using getUpdates, will return an object with the url field empty.
  ///
  /// See more at https://core.telegram.org/bots/api#getwebhookinfo
  Future<WebhookInfo> getWebhookInfo() async {
    Uri uri = _buildUri("getWebhookInfo");

    Map<String, dynamic> response = await HttpClient.getURI(uri);
    return WebhookInfo.fromJson(response);
  }

  /// A simple method for testing your bot's authentication token. Requires no parameters.
  /// Returns basic information about the bot in form of a User object.
  ///
  /// See more at https://core.telegram.org/bots/api#getme
  Future<User> getMe() async {
    Uri uri = _buildUri("getMe");

    Map<String, dynamic> response = await HttpClient.getURI(uri);
    return User.fromJson(response);
  }

  /// Use this method to log out from the cloud Bot API server before launching the bot locally. You must log out the bot before running it locally, otherwise there is no guarantee that the bot will receive updates. After a successful call, you can immediately log in on a local server, but will not be able to log in back to the cloud Bot API server for 10 minutes. Returns True on success. Requires no parameters.
  /// Note: This will affect all running bots.
  ///
  /// See more at https://core.telegram.org/bots/api#logout
  Future<bool> logOut() async {
    Uri uri = _buildUri("logOut");

    bool response = await HttpClient.getURI(uri);
    return response;
  }

  /// Use this method to close the bot instance before moving it from one local server to another. You need to delete the webhook before calling this method to ensure that the bot isn't launched again after server restart. The method will return error 429 in the first 10 minutes after the bot is launched. Returns True on success. Requires no parameters.
  ///
  /// See more at https://core.telegram.org/bots/api#close
  Future<bool> close() async {
    Uri uri = _buildUri("close");

    bool response = await HttpClient.getURI(uri);
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

    Map<String, dynamic> response = await HttpClient.getURI(uri);
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

    Map<String, dynamic> response = await HttpClient.getURI(uri);
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

    Map<String, dynamic> response = await HttpClient.getURI(uri);
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
      response = await HttpClient.getURI(_buildUri("sendPhoto", params));
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
      params["thumb"] = thumb?.fileId ?? thumb?.url;
      response = await HttpClient.getURI(_buildUri("sendAudio", params));
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
      params["thumb"] = thumb?.fileId ?? thumb?.url;
      response = await HttpClient.getURI(_buildUri("sendDocument", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send video files, Telegram clients support MPEG4 videos (other formats may be sent as Document). On success, the sent Message is returned. Bots can currently send video files of up to 50 MB in size, this limit may be changed in the future.
  Future<MessageContext> sendVideo(
    ID chatId,
    InputFile video, {
    int? messageThreadId,
    int? duration,
    int? width,
    int? height,
    InputFile? thumb,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? hasSpoiler,
    bool? supportsStreaming,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "has_spoiler": hasSpoiler,
      "supports_streaming": supportsStreaming,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    List<MultipartFile> files = [];
    if (video.type == InputFileType.file || thumb?.type == InputFileType.file) {
      if (video.type == InputFileType.file) {
        if (!video.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(video.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "video",
            video.file!.readAsBytesSync(),
            filename: video.file!.path.split("/").last,
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
        _buildUri("sendVideo"),
        files,
        params,
      );
    } else {
      params["video"] = video.fileId ?? video.url;
      params["thumb"] = thumb?.fileId ?? thumb?.url;
      response = await HttpClient.getURI(_buildUri("sendVideo", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.
  Future<MessageContext> sendAnimation(
    ID chatId,
    InputFile animation, {
    int? messageThreadId,
    int? duration,
    int? width,
    int? height,
    InputFile? thumb,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? hasSpoiler,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "has_spoiler": hasSpoiler,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    List<MultipartFile> files = [];
    if (animation.type == InputFileType.file ||
        thumb?.type == InputFileType.file) {
      if (animation.type == InputFileType.file) {
        if (!animation.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(animation.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "animation",
            animation.file!.readAsBytesSync(),
            filename: animation.file!.path.split("/").last,
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
        _buildUri("sendAnimation"),
        files,
        params,
      );
    } else {
      params["animation"] = animation.fileId ?? animation.url;
      params["thumb"] = thumb?.fileId ?? thumb?.url;
      response = await HttpClient.getURI(_buildUri("sendAnimation", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send audio files, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an .OGG file encoded with OPUS (other formats may be sent as Audio or Document). On success, the sent Message is returned. Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.
  Future<MessageContext> sendVoice(
    ID chatId,
    InputFile voice, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    int? duration,
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
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    List<MultipartFile> files = [];
    if (voice.type == InputFileType.file) {
      if (!voice.file!.existsSync()) {
        throw TeleverseException.fileDoesNotExist(voice.file!.path);
      }
      files.add(
        MultipartFile.fromBytes(
          "voice",
          voice.file!.readAsBytesSync(),
          filename: voice.file!.path.split("/").last,
        ),
      );
      params.removeWhere((key, value) => value == null);
      response = await HttpClient.multipartPost(
        _buildUri("sendVoice"),
        files,
        params,
      );
    } else {
      params["voice"] = voice.fileId ?? voice.url;
      response = await HttpClient.getURI(_buildUri("sendVoice", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// As of v.4.0, Telegram clients support rounded square MPEG4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.
  Future<MessageContext> sendVideoNote(
    ID chatId,
    InputFile videoNote, {
    int? messageThreadId,
    int? duration,
    int? length,
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
      "duration": duration,
      "length": length,
      "thumb": thumb?.fileId ?? thumb?.url,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response;
    List<MultipartFile> files = [];
    if (videoNote.type == InputFileType.file ||
        thumb?.type == InputFileType.file) {
      if (videoNote.type == InputFileType.file) {
        if (!videoNote.file!.existsSync()) {
          throw TeleverseException.fileDoesNotExist(videoNote.file!.path);
        }
        files.add(
          MultipartFile.fromBytes(
            "video_note",
            videoNote.file!.readAsBytesSync(),
            filename: videoNote.file!.path.split("/").last,
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
        _buildUri("sendVideoNote"),
        files,
        params,
      );
    } else {
      params["video_note"] = videoNote.fileId ?? videoNote.url;
      params["thumb"] = thumb?.fileId ?? thumb?.url;
      response = await HttpClient.getURI(_buildUri("sendVideoNote", params));
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send a group of photos, videos, documents or audios as an album. Documents and audio files can be only grouped in an album with messages of the same type. On success, an array of Messages that were sent is returned.
  Future<List<MessageContext>> sendMediaGroup(
    ID chatId,
    List<InputMedia> media, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
  }) async {
    if (media.length > 10) {
      throw TeleverseException(
        "Invalid Parameter in [sendMediaGroup]",
        "The maximum number of items in a media group is 10.",
      );
    }
    if (media.length < 2) {
      throw TeleverseException(
        "Invalid Parameter in [sendMediaGroup]",
        "The minimum number of items in a media group is 2.",
      );
    }
    bool containsInvalidType = media.any((m) {
      return m.type == InputMediaType.animation ||
          m.type == InputMediaType.audio;
    });
    if (containsInvalidType) {
      throw TeleverseException(
        "Invalid Parameter in [sendMediaGroup]",
        "Audio and Animation files can't be sent in a media group.",
      );
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
    };

    List<MultipartFile> files = [];
    List<Map<String, dynamic>> mediaList = [];

    if (media.any((m) => m.media.type == InputFileType.file)) {
      for (InputMedia m in media) {
        if (m.media.type == InputFileType.file) {
          if (!m.media.file!.existsSync()) {
            throw TeleverseException.fileDoesNotExist(m.media.file!.path);
          }
          files.add(
            MultipartFile.fromBytes(
              m.type == InputMediaType.photo ? "photo" : "video",
              m.media.file!.readAsBytesSync(),
              filename: m.media.file!.path.split("/").last,
            ),
          );
        } else {
          mediaList.add(m.toJson());
        }
      }
      params["media"] = jsonEncode(mediaList);
      List<dynamic> response = await HttpClient.multipartPost(
        _buildUri("sendMediaGroup"),
        files,
        params,
      );
      return (response)
          .map((e) => MessageContext(this, Message.fromJson(e)))
          .toList();
    }

    params["media"] = jsonEncode(media.map((m) => m.toJson()).toList());

    List<dynamic> response = await HttpClient.getURI(
      _buildUri("sendMediaGroup", params),
    );
    return (response)
        .map((e) => MessageContext(this, Message.fromJson(e)))
        .toList();
  }

  /// Use this method to send point on the map. On success, the sent Message is returned.
  Future<MessageContext> sendLocation(
    ID chatId,
    double latitude,
    double longitude, {
    int? messageThreadId,
    double? horizontalAccuracy,
    int? livePeriod,
    int? heading,
    int? proximityAlertRadius,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "latitude": latitude,
      "longitude": longitude,
      "horizontal_accuracy": horizontalAccuracy,
      "live_period": livePeriod,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendLocation", params),
    );
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to edit live location messages. A location can be edited until its live_period expires or editing is explicitly disabled by a call to [stopMessageLiveLocation]. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
  Future<MessageContext?> editMessageLiveLocation(
    ID chatId,
    int messageId, {
    String? inlineMessageId,
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "inline_message_id": inlineMessageId,
      "latitude": latitude,
      "longitude": longitude,
      "horizontal_accuracy": horizontalAccuracy,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic>? response = await HttpClient.getURI(
      _buildUri("editMessageLiveLocation", params),
    );
    if (response == null) {
      return null;
    }
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to stop updating a live location message before live_period expires. On success, if the message is not an inline message, the edited Message is returned, otherwise True is returned.
  ///
  /// This one is a bit weird, because it can return either a MessageContext or a boolean.
  /// If the message is an inline message, it returns a boolean, otherwise it returns a MessageContext.
  ///
  /// You can use [CtxOrBool] type inside the [MessageContextOrBoolean] class to get the correct type.
  Future<MessageContextOrBoolean> stopMessageLiveLocation(
    ID chatId,
    int messageId, {
    String? inlineMessageId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
    };
    dynamic response = await HttpClient.getURI(
      _buildUri("stopMessageLiveLocation", params),
    );
    return MessageContextOrBoolean.fromJson(response, this);
  }

  /// Use this method to send information about a venue. On success, the sent Message is returned.
  Future<MessageContext> sendVenue(
    ID chatId,
    double latitude,
    double longitude,
    String title,
    String address, {
    int? messageThreadId,
    String? foursquareId,
    String? foursquareType,
    String? googlePlaceId,
    String? googlePlaceType,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "latitude": latitude,
      "longitude": longitude,
      "title": title,
      "address": address,
      "foursquare_id": foursquareId,
      "foursquare_type": foursquareType,
      "google_place_id": googlePlaceId,
      "google_place_type": googlePlaceType,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendVenue", params),
    );
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send phone contacts. On success, the sent Message is returned.
  Future<MessageContext> sendContact(
    ID chatId,
    String phoneNumber,
    String firstName, {
    int? messageThreadId,
    String? lastName,
    String? vcard,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "phone_number": phoneNumber,
      "first_name": firstName,
      "last_name": lastName,
      "vcard": vcard,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendContact", params),
    );
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send a native poll. On success, the sent Message is returned.
  Future<MessageContext> sendPoll(
    ID chatId,
    String question,
    List<String> options, {
    int? messageThreadId,
    bool? isAnonymous,
    PollType type = PollType.regular,
    bool? allowsMultipleAnswers,
    int? correctOptionId,
    String? explanation,
    ParseMode? explanationParseMode,
    List<MessageEntity>? explanationEntities,
    int? openPeriod,
    DateTime? closeDate,
    bool? isClosed,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    if (options.length < 2 || options.length > 10) {
      throw TeleverseException(
        "The number of options must be between 2 and 10",
        "You provided ${options.length} options. Please provide between 2 and 10 options.",
      );
    }
    if (closeDate != null && openPeriod != null) {
      throw TeleverseException(
        "You can't provide both a close date and an open period",
        "You provided both a close date and an open period. Please provide only one of them.",
      );
    }

    if (closeDate?.isBefore(DateTime.now()) ?? false) {
      throw TeleverseException(
        "The close date must be in the future",
        "The close date you provided is in the past. Please provide a date in the future.",
      );
    }

    if (openPeriod != null && openPeriod < 5) {
      throw TeleverseException(
        "The open period must be at least 5 seconds",
        "The open period you provided is less than 5 seconds. Please provide a period of at least 5 seconds.",
      );
    }

    if (openPeriod != null && openPeriod > 600) {
      throw TeleverseException(
        "The open period must be at most 600 seconds",
        "The open period you provided is more than 600 seconds. Please provide a period of at most 600 seconds.",
      );
    }

    if (type == PollType.quiz && correctOptionId == null) {
      throw TeleverseException(
        "You must provide a correct option ID for a quiz",
        "You provided a quiz poll type but did not provide a correct option ID. Please provide a correct option ID.",
      );
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "question": question,
      "options": options,
      "is_anonymous": isAnonymous,
      "type": type.type,
      "allows_multiple_answers": allowsMultipleAnswers,
      "correct_option_id": correctOptionId,
      "explanation": explanation,
      "explanation_parse_mode": explanationParseMode?.value,
      "explanation_entities":
          explanationEntities?.map((e) => e.toJson()).toList(),
      "open_period": openPeriod,
      "close_date": closeDate?.unixTime,
      "is_closed": isClosed,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendPoll", params),
    );
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.
  ///
  /// [emoji] The emoji on which the dice throw animation is based. Currently, must be one of dice, darts, basketball, football, or slot_machine. Dice can have values 1-6 for “dice”, “darts” and “basketball”, values 1-5 for “football”, and values 1-64 for “slot_machine”. Defaults to dice.
  ///
  /// Example:
  /// ```dart
  /// await bot.sendDice(chatId, emoji: DiceEmoji.dice);
  ///
  /// await bot.sendDice(chatId, emoji: DiceEmoji.dart); // 🎯
  /// ```
  Future<MessageContext> sendDice(
    ID chatId, {
    DiceEmoji emoji = DiceEmoji.dice,
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "emoji": emoji.emoji,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": replyMarkup?.toJson(),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendDice", params),
    );
    return MessageContext(this, Message.fromJson(response));
  }

  /// Use this method when you need to tell the user that something is happening on the bot's side. The status is set for 5 seconds or less (when a message arrives from your bot, Telegram clients clear its typing status). Returns True on success.
  ///
  /// Example: The ImageBot needs some time to process a request and upload the image. Instead of sending a text message along the lines of “Retrieving image, please wait…”, the bot may use sendChatAction with action = upload_photo. The user will see a “sending photo” status for the bot.
  ///
  /// [action] Type of action to broadcast. We have a dedicated list of actions for bots, see [ChatAction].
  ///
  /// Example:
  /// ```dart
  /// await bot.sendChatAction(chatId, ChatAction.typing);
  /// ```
  /// This will send a typing action to the chat.
  ///
  Future<bool> sendChatAction(
    ID chatId,
    ChatAction action, {
    int? messageThreadId,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "action": action.value,
      "message_thread_id": messageThreadId,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendChatAction", params),
    );
    return response["ok"];
  }

  /// Use this method to get a list of profile pictures for a user. Returns a UserProfilePhotos object.
  Future<UserProfilePhotos> getUserProfilePhotos(
    int userId, {
    int? offset,
    int? limit,
  }) async {
    Map<String, dynamic> params = {
      "user_id": userId,
      "offset": offset,
      "limit": limit,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("getUserProfilePhotos", params),
    );
    return UserProfilePhotos.fromJson(response);
  }

  /// Use this method to get basic information about a file and prepare it for downloading. For the moment, bots can download files of up to 20MB in size. On success, a File object is returned. The file can then be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>, where <file_path> is taken from the response. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile again.
  ///
  /// Note: This function may not preserve the original file name and MIME type. You should save the file's MIME type and name (if available) when the File object is received.
  Future<File> getFile(String fileId) async {
    Map<String, dynamic> params = {
      "file_id": fileId,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("getFile", params),
    );
    return File.fromJson(response);
  }

  /// Use this method to ban a user in a group, a supergroup or a channel. In the case of supergroups and channels, the user will not be able to return to the chat on their own using invite links, etc., unless unbanned first. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> banChatMember(
    ID chatId,
    int userId, {
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "until_date": untilDate?.unixTime,
      "revoke_messages": revokeMessages,
    };
    bool response = await HttpClient.getURI(
      _buildUri("banChatMember", params),
    );
    print(response);
    return response;
  }

  /// Use this method to unban a previously banned user in a supergroup or channel. The user will not return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be removed from the chat. If you don't want this, use the parameter only_if_banned. Returns True on success.
  Future<bool> unbanChatMember(
    ID chatId,
    int userId, {
    bool? onlyIfBanned,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "only_if_banned": onlyIfBanned,
    };
    bool response = await HttpClient.getURI(
      _buildUri("unbanChatMember", params),
    );
    return response;
  }

  /// Use this method to restrict a user in a supergroup. The bot must be an administrator in the supergroup for this to work and must have the appropriate administrator rights. Pass True for all permissions to lift restrictions from a user. Returns True on success.
  Future<bool> restrictChatMember(
    ID chatId,
    int userId,
    ChatPermissions permissions, {
    DateTime? untilDate,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "permissions": permissions.toJson(),
      "until_date": untilDate?.unixTime,
    };
    bool response = await HttpClient.getURI(
      _buildUri("restrictChatMember", params),
    );
    return response;
  }
}
