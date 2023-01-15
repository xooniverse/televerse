part of televerse;

/// Televerse
/// This class is used to create a new bot instance. The bot instance is used to send and receive messages.
///
/// You can use the [token] to create a new bot instance. You can also pass a [fetcher] to the constructor. The fetcher is used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
///
/// Create a new bot instance:
/// ```dart
/// import 'package:televerse/televerse.dart';
///
/// void main() {
///  var bot = Televerse("YOUR_BOT_TOKEN");
///  bot.start();
/// }
/// ```
///
/// The [Televerse] class extends [Event] class. The [Event] class is used to emit events and additionally provides a bunch of useful methods.
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
    params?.removeWhere((key, value) => value == null || value == "null");
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
  /// This getter returns a stream of [Update] objects. You can use this to listen to incoming updates from Telegram servers.
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
  Future<Message> sendMessage(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };

    Uri uri = _buildUri("sendMessage");

    Map<String, dynamic> response = await HttpClient.postURI(uri, params);
    return Message.fromJson(response);
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
  Future<Message> forwardMessage(
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
    return Message.fromJson(response);
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
      "reply_markup": jsonEncode(jsonEncode(replyMarkup?.toJson())),
    };
    Uri uri = _buildUri("copyMessage", params);

    Map<String, dynamic> response = await HttpClient.getURI(uri);
    return MessageId.fromJson(response);
  }

  /// Use this method to send photos. On success, the sent Message is returned.
  Future<Message> sendPhoto(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// Use this method to send audio files, if you want Telegram clients to display them in the music player. Your audio must be in the .MP3 or .M4A format. On success, the sent Message is returned. Bots can currently send audio files of up to 50 MB in size, this limit may be changed in the future.
  ///
  /// For sending voice messages, use the [sendVoice] method instead.
  Future<Message> sendAudio(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
  Future<Message> sendDocument(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// Use this method to send video files, Telegram clients support MPEG4 videos (other formats may be sent as Document). On success, the sent Message is returned. Bots can currently send video files of up to 50 MB in size, this limit may be changed in the future.
  Future<Message> sendVideo(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// Use this method to send animation files (GIF or H.264/MPEG-4 AVC video without sound). On success, the sent Message is returned. Bots can currently send animation files of up to 50 MB in size, this limit may be changed in the future.
  Future<Message> sendAnimation(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// Use this method to send audio files, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an .OGG file encoded with OPUS (other formats may be sent as Audio or Document). On success, the sent Message is returned. Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.
  Future<Message> sendVoice(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// As of v.4.0, Telegram clients support rounded square MPEG4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.
  Future<Message> sendVideoNote(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
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
    return Message.fromJson(response);
  }

  /// Use this method to send a group of photos, videos, documents or audios as an album. Documents and audio files can be only grouped in an album with messages of the same type. On success, an array of Messages that were sent is returned.
  Future<List<Message>> sendMediaGroup(
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
      return (response).map((e) => Message.fromJson(e)).toList();
    }

    params["media"] = jsonEncode(media.map((m) => m.toJson()).toList());

    List<dynamic> response = await HttpClient.getURI(
      _buildUri("sendMediaGroup", params),
    );
    return (response).map((e) => Message.fromJson(e)).toList();
  }

  /// Use this method to send point on the map. On success, the sent Message is returned.
  Future<Message> sendLocation(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendLocation", params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to edit live location messages. A location can be edited
  /// until its live_period expires or editing is explicitly disabled
  /// by a call to [stopMessageLiveLocation]. On success, if the edited message
  /// is not an inline message, the edited Message is returned, otherwise True is returned.
  Future<MessageOrBoolean> editMessageLiveLocation(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    dynamic response = await HttpClient.getURI(
      _buildUri("editMessageLiveLocation", params),
    );

    return MessageOrBoolean.fromJson(response, this);
  }

  /// Use this method to stop updating a live location message before live_period expires. On success, if the message is not an inline message, the edited Message is returned, otherwise True is returned.
  ///
  /// This one is a bit weird, because it can return either a MessageContext or a boolean.
  /// If the message is an inline message, it returns a boolean, otherwise it returns a MessageContext.
  ///
  /// You can use [MsgOrBool] type inside the [MessageOrBoolean] class to get the correct type.
  Future<MessageOrBoolean> stopMessageLiveLocation(
    ID chatId,
    int messageId, {
    String? inlineMessageId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "inline_message_id": inlineMessageId,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    dynamic response = await HttpClient.getURI(
      _buildUri("stopMessageLiveLocation", params),
    );
    return MessageOrBoolean.fromJson(response, this);
  }

  /// Use this method to send information about a venue. On success, the sent Message is returned.
  Future<Message> sendVenue(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendVenue", params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send phone contacts. On success, the sent Message is returned.
  Future<Message> sendContact(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendContact", params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send a native poll. On success, the sent Message is returned.
  Future<Message> sendPoll(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendPoll", params),
    );
    return Message.fromJson(response);
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
  Future<Message> sendDice(
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
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("sendDice", params),
    );
    return Message.fromJson(response);
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

  /// Use this method to promote or demote a user in a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Pass False for all boolean parameters to demote a user. Returns True on success.
  Future<bool> promoteChatMember(
    ID chatId,
    int userId, {
    bool? isAnonymous,
    bool? canManageChat,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canManageVideoChats,
    bool? canRestrictMembers,
    bool? canPromoteMembers,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPinMessages,
    bool? canManageTopics,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "is_anonymous": isAnonymous,
      "can_manage_chat": canManageChat,
      "can_post_messages": canPostMessages,
      "can_edit_messages": canEditMessages,
      "can_delete_messages": canDeleteMessages,
      "can_manage_voice_chats": canManageVideoChats,
      "can_restrict_members": canRestrictMembers,
      "can_promote_members": canPromoteMembers,
      "can_change_info": canChangeInfo,
      "can_invite_users": canInviteUsers,
      "can_pin_messages": canPinMessages,
      "can_manage_topics": canManageTopics,
    };
    bool response = await HttpClient.getURI(
      _buildUri("promoteChatMember", params),
    );
    return response;
  }

  /// Use this method to set a custom title for an administrator in a supergroup promoted by the bot. Returns True on success.
  Future<bool> setChatAdministratorCustomTitle(
    ID chatId,
    int userId,
    String customTitle,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "custom_title": customTitle,
    };
    bool response = await HttpClient.getURI(
      _buildUri("setChatAdministratorCustomTitle", params),
    );
    return response;
  }

  /// Use this method to ban a channel chat in a supergroup or a channel. Until the chat is unbanned, the owner of the banned chat won't be able to send messages on behalf of any of their channels. The bot must be an administrator in the supergroup or channel for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> banChatSenderChat(
    ID chatId,
    int senderChatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "sender_chat_id": senderChatId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("banChatChannelChat", params),
    );
    return response;
  }

  /// Use this method to ban a channel chat in a supergroup or a channel. Until the chat is unbanned, the owner of the banned chat won't be able to send messages on behalf of any of their channels. The bot must be an administrator in the supergroup or channel for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> unbanChatSenderChat(
    ID chatId,
    int senderChatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "sender_chat_id": senderChatId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("unbanChatSenderChat", params),
    );
    return response;
  }

  /// Use this method to set default chat permissions for all members. The bot must be an administrator in the group or a supergroup for this to work and must have the can_restrict_members administrator rights. Returns True on success.
  Future<bool> setChatPermissions(
    ID chatId,
    ChatPermissions permissions,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "permissions": permissions.toJson(),
    };
    bool response = await HttpClient.getURI(
      _buildUri("setChatPermissions", params),
    );
    return response;
  }

  /// Use this method to generate a new primary invite link for a chat; any previously generated primary link is revoked. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the new invite link as String on success.
  ///
  /// Note: Each administrator in a chat generates their own invite links. Bots can't use invite links generated by other administrators. If you want your bot to work with invite links, it will need to generate its own link using [exportChatInviteLink] or by calling the getChat method. If your bot needs to generate a new primary invite link replacing its previous one, use [exportChatInviteLink] again
  Future<String> exportChatInviteLink(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    String response = await HttpClient.getURI(
      _buildUri("exportChatInviteLink", params),
    );
    return response;
  }

  /// Use this method to create an additional invite link for a chat. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. The link can be revoked using the method revokeChatInviteLink. Returns the new invite link as ChatInviteLink object.
  Future<ChatInviteLink> createChatInviteLink(
    ID chatId, {
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    if (expireDate != null && expireDate.isBefore(DateTime.now())) {
      throw TeleverseException(
        "Invalid Argument [expireDate]",
        "Expire date must be in the future",
      );
    }

    if (createsJoinRequest == true && memberLimit != null) {
      throw TeleverseException(
        "Invalid Arguments",
        "You can't set a member limit and allow join requests at the same time",
      );
    }

    if (memberLimit != null && (memberLimit < 1 || memberLimit > 99999)) {
      throw TeleverseException(
        "Invalid Argument [memberLimit]",
        "The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999",
      );
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "name": name,
      "expire_date": expireDate?.unixTime,
      "member_limit": memberLimit,
      "creates_join_request": createsJoinRequest,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("createChatInviteLink", params),
    );
    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to edit a non-primary invite link created by the bot. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the edited invite link as a ChatInviteLink object.
  Future<ChatInviteLink> editChatInviteLink(
    ID chatId,
    String inviteLink, {
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    if (expireDate != null && expireDate.isBefore(DateTime.now())) {
      throw TeleverseException(
        "Invalid Argument [expireDate]",
        "Expire date must be in the future",
      );
    }

    if (createsJoinRequest == true && memberLimit != null) {
      throw TeleverseException(
        "Invalid Arguments",
        "You can't set a member limit and allow join requests at the same time",
      );
    }

    if (memberLimit != null && (memberLimit < 1 || memberLimit > 99999)) {
      throw TeleverseException(
        "Invalid Argument [memberLimit]",
        "The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999",
      );
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "invite_link": inviteLink,
      "name": name,
      "expire_date": expireDate?.unixTime,
      "member_limit": memberLimit,
      "creates_join_request": createsJoinRequest,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("editChatInviteLink", params),
    );
    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to revoke an invite link created by the bot. If the primary link is revoked, a new link is automatically generated. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns the revoked invite link as ChatInviteLink object.
  Future<ChatInviteLink> revokeChatInviteLink(
    ID chatId,
    String inviteLink,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "invite_link": inviteLink,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("revokeChatInviteLink", params),
    );
    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to approve a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.
  Future<bool> approveChatJoinRequest(
    ID chatId,
    int userId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("approveChatJoinRequest", params),
    );
    return response;
  }

  /// Use this method to decline a chat join request. The bot must be an administrator in the chat for this to work and must have the can_invite_users administrator right. Returns True on success.
  Future<bool> declineChatJoinRequest(
    ID chatId,
    int userId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("declineChatJoinRequest", params),
    );
    return response;
  }

  /// Use this method to set a new profile photo for the chat. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> setChatPhoto(
    ID chatId,
    InputFile photo,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response;
    if (photo.type == InputFileType.file) {
      params["photo"] = photo.file;
      List<MultipartFile> files = [];
      files.add(MultipartFile.fromBytes(
        "photo",
        photo.file!.readAsBytesSync(),
        filename: photo.file!.filename,
      ));
      response = await HttpClient.multipartPost(
        _buildUri("setChatPhoto"),
        files,
        params,
      );
    } else {
      params["photo"] = photo.url ?? photo.fileId;
      response = await HttpClient.getURI(
        _buildUri("setChatPhoto", params),
      );
    }
    return response;
  }

  /// Use this method to delete a chat photo. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> deleteChatPhoto(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("deleteChatPhoto", params),
    );
    return response;
  }

  /// Use this method to change the title of a chat. Titles can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> setChatTitle(
    ID chatId,
    String title,
  ) async {
    if (title.length > 128) {
      throw TeleverseException(
        "Invalid Argument [title]",
        "Chat title can't be longer than 128 characters",
      );
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "title": title,
    };
    bool response = await HttpClient.getURI(
      _buildUri("setChatTitle", params),
    );
    return response;
  }

  /// Use this method to change the description of a group, a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Returns True on success.
  Future<bool> setChatDescription(
    ID chatId,
    String? description,
  ) async {
    if (description != null && description.length > 255) {
      throw TeleverseException(
        "Invalid Argument [description]",
        "Chat description can't be longer than 255 characters",
      );
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "description": description,
    };
    bool response = await HttpClient.getURI(
      _buildUri("setChatDescription", params),
    );
    return response;
  }

  /// Use this method to add a message to the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.
  Future<bool> pinChatMessage(
    ID chatId,
    int messageId, {
    bool? disableNotification,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "disable_notification": disableNotification,
    };
    bool response = await HttpClient.getURI(
      _buildUri("pinChatMessage", params),
    );
    return response;
  }

  /// Use this method to remove a message from the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.
  Future<bool> unpinChatMessage(
    ID chatId,
    int messageId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("unpinChatMessage", params),
    );
    return response;
  }

  /// Use this method to clear the list of pinned messages in a chat. If the chat is not a private chat, the bot must be an administrator in the chat for this to work and must have the 'can_pin_messages' administrator right in a supergroup or 'can_edit_messages' administrator right in a channel. Returns True on success.
  Future<bool> unpinAllChatMessages(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("unpinAllChatMessages", params),
    );
    return response;
  }

  /// Use this method for your bot to leave a group, supergroup or channel. Returns True on success.
  Future<bool> leaveChat(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("leaveChat", params),
    );
    return response;
  }

  /// Use this method to get up to date information about the chat (current name of the user for one-on-one conversations, current username of a user, group or channel, etc.). Returns a Chat object on success.
  Future<Chat> getChat(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    Chat response = Chat.fromJson(
      await HttpClient.getURI(
        _buildUri("getChat", params),
      ),
    );
    return response;
  }

  /// Use this method to get a list of administrators in a chat, which aren't bots. Returns an Array of ChatMember objects.
  Future<List<ChatMember>> getChatAdministrators(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    List<ChatMember> response = [];
    List<dynamic> data = await HttpClient.getURI(
      _buildUri("getChatAdministrators", params),
    );
    for (var i = 0; i < data.length; i++) {
      response.add(ChatMember.fromJson(data[i]));
    }
    return response;
  }

  /// Use this method to get the number of members in a chat. Returns Int on success.
  Future<int> getChatMembersCount(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    int response = await HttpClient.getURI(
      _buildUri("getChatMembersCount", params),
    );
    return response;
  }

  /// Use this method to get information about a member of a chat. The method is guaranteed to work only if the bot is an administrator in the chat. Returns a ChatMember object on success.
  Future<ChatMember> getChatMember(
    ID chatId,
    int userId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };
    ChatMember response = ChatMember.fromJson(
      await HttpClient.getURI(
        _buildUri("getChatMember", params),
      ),
    );
    return response;
  }

  /// Use this method to set a new group sticker set for a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.
  Future<bool> setChatStickerSet(
    ID chatId,
    String stickerSetName,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "sticker_set_name": stickerSetName,
    };
    bool response = await HttpClient.getURI(
      _buildUri("setChatStickerSet", params),
    );
    return response;
  }

  /// Use this method to delete a group sticker set from a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate administrator rights. Use the field can_set_sticker_set optionally returned in getChat requests to check if the bot can use this method. Returns True on success.
  Future<bool> deleteChatStickerSet(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("deleteChatStickerSet", params),
    );
    return response;
  }

  /// Use this method to get custom emoji stickers, which can be used as a forum topic icon by any user. Requires no parameters. Returns an Array of Sticker objects.
  Future<List<Sticker>> getForumTopicIconStickers(
    String name,
  ) async {
    Map<String, dynamic> params = {
      "name": name,
    };
    List<Sticker> response = [];
    List<dynamic> data = await HttpClient.getURI(
      _buildUri("getStickerSet", params),
    );
    for (var i = 0; i < data.length; i++) {
      response.add(Sticker.fromJson(data[i]));
    }
    return response;
  }

  /// Use this method to create a topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns information about the created topic as a ForumTopic object.
  ///
  /// - [userId] - Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  /// - [name] - Name of the topic, 1-128 characters
  /// - [iconColor] - Color of the topic icon in RGB format. Currently, must be one of 7322096 (0x6FB9F0), 16766590 (0xFFD67E), 13338331 (0xCB86DB), 9367192 (0x8EEE98), 16749490 (0xFF93B2), or 16478047 (0xFB6F5F)
  /// - [iconCustomEmojiId] - Unique identifier of the custom emoji shown as the topic icon. Use [getForumTopicIconStickers] to get all allowed custom emoji identifiers.
  Future<ForumTopic> createForumTopic(
    ID chatId,
    String name, {
    int? iconColor,
    String? iconCustomEmojiId,
  }) async {
    if (name.isEmpty || name.length > 128) {
      throw Exception("Name length must be between 1 and 64");
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "name": name,
      "icon_color": iconColor,
      "icon_custom_emoji_id": iconCustomEmojiId,
    };
    ForumTopic response = ForumTopic.fromJson(
      await HttpClient.getURI(
        _buildUri("createNewStickerSet", params),
      ),
    );
    return response;
  }

  /// Use this method to edit name and icon of a topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.
  Future<ForumTopic> editForumTopic(
    ID chatId,
    String name, {
    int? iconColor,
    String? iconCustomEmojiId,
  }) async {
    if (name.isEmpty || name.length > 128) {
      throw Exception("Name length must be between 1 and 64");
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "name": name,
      "icon_color": iconColor,
      "icon_custom_emoji_id": iconCustomEmojiId,
    };
    ForumTopic response = ForumTopic.fromJson(
      await HttpClient.getURI(
        _buildUri("editForumTopic", params),
      ),
    );
    return response;
  }

  /// Use this method to close an open topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.
  Future<bool> closeForumTopic(
    ID chatId,
    int messageThreadId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("closeForumTopic", params),
    );
    return response;
  }

  /// Use this method to reopen a closed topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights, unless it is the creator of the topic. Returns True on success.
  Future<bool> reopenForumTopic(
    ID chatId,
    int messageThreadId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("reopenForumTopic", params),
    );
    return response;
  }

  /// Use this method to delete a forum topic along with all its messages in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_delete_messages administrator rights. Returns True on success.
  Future<bool> deleteForumTopic(
    ID chatId,
    int messageThreadId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("deleteForumTopic", params),
    );
    return response;
  }

  /// Use this method to clear the list of pinned messages in a forum topic. The bot must be an administrator in the chat for this to work and must have the can_pin_messages administrator right in the supergroup. Returns True on success.
  Future<bool> unpinAllForumTopicMessages(
    ID chatId,
    int messageThreadId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("unpinAllForumTopicMessages", params),
    );
    return response;
  }

  /// Use this method to edit the name of the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have can_manage_topics administrator rights. Returns True on success.
  Future<bool> editGeneralForumTopic(
    ID chatId,
    String title,
  ) async {
    if (title.isEmpty || title.length > 128) {
      throw Exception("Title length must be between 1 and 64");
    }

    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "title": title,
    };
    bool response = await HttpClient.getURI(
      _buildUri("editGeneralForumTopic", params),
    );
    return response;
  }

  /// Use this method to close an open 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns True on success.
  Future<bool> closeGeneralForumTopic(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("closeGeneralForumTopic", params),
    );
    return response;
  }

  /// Use this method to reopen a closed 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. The topic will be automatically unhidden if it was hidden. Returns True on success.
  Future<bool> reopenGeneralForumTopic(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("reopenGeneralForumTopic", params),
    );
    return response;
  }

  /// Use this method to hide the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. The topic will be automatically closed if it was open. Returns True on success.
  Future<bool> hideGeneralForumTopic(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("hideGeneralForumTopic", params),
    );
    return response;
  }

  /// Use this method to unhide the 'General' topic in a forum supergroup chat. The bot must be an administrator in the chat for this to work and must have the can_manage_topics administrator rights. Returns True on success.
  Future<bool> unhideGeneralForumTopic(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    bool response = await HttpClient.getURI(
      _buildUri("unhideGeneralForumTopic", params),
    );
    return response;
  }

  /// Use this method to send answers to callback queries sent from inline keyboards. The answer will be displayed to the user as a notification at the top of the chat screen or as an alert. On success, True is returned.
  Future<bool> answerCallbackQuery(
    String callbackQueryId, {
    String? text,
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    Map<String, dynamic> params = {
      "callback_query_id": callbackQueryId,
      "text": text,
      "show_alert": showAlert,
      "url": url,
      "cache_time": cacheTime,
    };
    bool response = await HttpClient.getURI(
      _buildUri("answerCallbackQuery", params),
    );
    return response;
  }

  /// Use this method to change the list of the bot's commands. See this manual for more details about bot commands. Returns True on success.
  Future<bool> setMyCommands(
    List<BotCommand> commands, {
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    Map<String, dynamic> params = {
      "commands": commands.map((e) => e.toJson()).toList(),
      "scope": jsonEncode(scope?.toJson()),
    };
    bool response = await HttpClient.getURI(
      _buildUri("setMyCommands", params),
    );
    return response;
  }

  /// Use this method to delete the list of the bot's commands for the given scope and user language. After deletion, higher level commands will be shown to affected users. Returns True on success.
  Future<bool> deleteMyCommands({
    BotCommandScope scope = const BotCommandScopeDefault(),
    String? languageCode,
  }) async {
    Map<String, dynamic> params = {
      "scope": scope.toJson(),
      "language_code": languageCode,
    };
    bool response = await HttpClient.getURI(
      _buildUri("deleteMyCommands", params),
    );
    return response;
  }

  /// Use this method to get the current list of the bot's commands for the given scope and user language. Returns an Array of BotCommand objects. If commands aren't set, an empty list is returned.
  Future<List<BotCommand>> getMyCommands({
    BotCommandScope scope = const BotCommandScopeDefault(),
    String? languageCode,
  }) async {
    Map<String, dynamic> params = {
      "scope": scope.toJson(),
      "language_code": languageCode,
    };
    List<dynamic> response = await HttpClient.getURI(
      _buildUri("getMyCommands", params),
    );
    return response.map((e) => BotCommand.fromJson(e)).toList();
  }

  /// Use this method to change the bot's menu button in a private chat, or the default menu button. Returns True on success.
  Future<bool> setChatMenuButton(
    ID chatId,
    MenuButton menuButton,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "menu_button": menuButton.toJson(),
    };
    bool response = await HttpClient.getURI(
      _buildUri("setChatMenuButton", params),
    );
    return response;
  }

  /// Use this method to get the current value of the bot's menu button in a private chat, or the default menu button. Returns MenuButton on success.
  Future<MenuButton> getChatMenuButton(
    ID chatId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("getChatMenuButton", params),
    );
    return MenuButton.create(response);
  }

  /// Use this method to change the default administrator rights requested by the bot when it's added as an administrator to groups or channels. These rights will be suggested to users, but they are are free to modify the list before adding the bot. Returns True on success.
  Future<bool> setMyDefaultAdministratorRights({
    ChatAdministratorRights? rights,
    bool? forChannels,
  }) async {
    Map<String, dynamic> params = {
      "rights": jsonEncode(rights?.toJson()),
      "for_channels": forChannels,
    };
    bool response = await HttpClient.getURI(
      _buildUri("setMyDefaultAdministratorRights", params),
    );
    return response;
  }

  /// Use this method to get the current default administrator rights of the bot. Returns ChatAdministratorRights on success.
  Future<ChatAdministratorRights> getMyDefaultAdministratorRights({
    bool? forChannels,
  }) async {
    Map<String, dynamic> params = {
      "for_channels": forChannels,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("getMyDefaultAdministratorRights", params),
    );
    return ChatAdministratorRights.fromJson(response);
  }

  /// Use this method to edit text and game messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline messages.
  ///
  /// If you're looking for a way to edit inline messages, use [editInlineMessageText].
  Future<Message> editMessageText(
    ID chatId,
    int messageId,
    String text, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool disableWebPagePreview = false,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "text": text,
      "parse_mode": parseMode?.value,
      "entities": entities?.map((e) => e.toJson()).toList(),
      "disable_web_page_preview": disableWebPagePreview,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("editMessageText", params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to edit inline text messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing inline messages.
  ///
  /// If you're looking for a way to edit messages, use [editMessageText].
  ///
  /// On success, [bool] is returned.
  Future<bool> editInlineMessageText(
    String inlineMessageId,
    String text, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool disableWebPagePreview = false,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "inline_message_id": inlineMessageId,
      "text": text,
      "parse_mode": parseMode?.value,
      "entities": entities?.map((e) => e.toJson()).toList(),
      "disable_web_page_preview": disableWebPagePreview,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    bool response = await HttpClient.getURI(
      _buildUri("editInlineMessageText", params),
    );
    return response;
  }

  /// Use this method to edit captions of messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline messages.
  ///
  /// If you're looking for a way to edit inline messages, use [editInlineMessageCaption].
  ///
  /// On success, [MessageContext] is returned.
  Future<Message> editMessageCaption(
    ID chatId,
    int messageId, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("editMessageCaption", params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to edit inline captions of messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing inline messages.
  ///
  /// If you're looking for a way to edit messages, use [editMessageCaption].
  ///
  /// On success, [bool] is returned.
  Future<bool> editInlineMessageCaption(
    String inlineMessageId,
    String caption, {
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "inline_message_id": inlineMessageId,
      "caption": caption,
      "parse_mode": parseMode?.value,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    bool response = await HttpClient.getURI(
      _buildUri("editInlineMessageCaption", params),
    );
    return response;
  }

  /// Use this method to edit animation, audio, document, photo, or video messages. If a message is part of a message album, then it can be edited only to an audio for audio albums, only to a document for document albums and to a photo or a video otherwise. When an inline message is edited, a new file can't be uploaded; use a previously uploaded file via its file_id or specify a URL. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline messages.
  /// * If you're looking for a way to edit inline messages, use [editInlineMessageMedia].
  ///
  /// On success, [Message] is returned.
  Future<Message> editMessageMedia(
    ID chatId,
    int messageId,
    InputMedia media, {
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };

    Map<String, dynamic> response;
    if (media.media.type == InputFileType.file) {
      params["media"] = media.toJson();
      List<MultipartFile> files = [
        MultipartFile.fromBytes(
          "media",
          media.media.file!.readAsBytesSync(),
          filename: media.media.file!.filename,
        ),
      ];
      response = await HttpClient.multipartPost(
        _buildUri(
          "editMessageMedia",
        ),
        files,
        params,
      );
    } else {
      params["media"] = media.toJson();
      response = await HttpClient.getURI(
        _buildUri("editMessageMedia", params),
      );
    }

    return Message.fromJson(response);
  }

  /// Use this method to edit inline media of messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing inline messages.
  /// * If you're looking for a way to edit messages, use [editMessageMedia].
  ///
  /// On success, [bool] is returned.
  Future<bool> editInlineMessageMedia(
    String inlineMessageId,
    InputMedia media, {
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "inline_message_id": inlineMessageId,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };

    bool response;
    if (media.media.type == InputFileType.file) {
      params["media"] = media.toJson();
      List<MultipartFile> files = [
        MultipartFile.fromBytes(
          "media",
          media.media.file!.readAsBytesSync(),
          filename: media.media.file!.filename,
        ),
      ];
      response = await HttpClient.multipartPost(
        _buildUri(
          "editInlineMessageMedia",
        ),
        files,
        params,
      );
    } else {
      params["media"] = media.toJson();
      response = await HttpClient.getURI(
        _buildUri("editInlineMessageMedia", params),
      );
    }

    return response;
  }

  /// Use this method to edit only the reply markup of messages. On success, if the edited message is not an inline message, the edited Message is returned, otherwise True is returned.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline messages.
  /// * If you're looking for a way to edit inline messages, use [editInlineMessageReplyMarkup].
  /// * Use [replyMarkup] parameter to pass new reply markup.
  ///
  /// On success, [Message] is returned.
  Future<Message> editMessageReplyMarkup(
    ID chatId,
    int messageId, {
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("editMessageReplyMarkup", params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to edit only the reply markup of inline messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing inline messages.
  /// * If you're looking for a way to edit messages, use [editMessageReplyMarkup].
  /// * Use [replyMarkup] parameter to pass new reply markup.
  ///
  /// On success, [bool] is returned.
  Future<bool> editInlineMessageReplyMarkup(
    String inlineMessageId, {
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "inline_message_id": inlineMessageId,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    bool response = await HttpClient.getURI(
      _buildUri("editInlineMessageReplyMarkup", params),
    );
    return response;
  }

  /// Use this method to stop a poll which was sent by the bot. On success, the stopped [Poll] is returned.
  Future<Poll> stopPoll(
    ID chatId,
    int messageId, {
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("stopPoll", params),
    );
    return Poll.fromJson(response);
  }

  /// Use this method to delete a message, including service messages, with the following limitations:
  /// - A message can only be deleted if it was sent less than 48 hours ago.
  /// - Service messages about a supergroup, channel, or forum topic creation can't be deleted.
  /// - A dice message in a private chat can only be deleted if it was sent more than 24 hours ago.
  /// - Bots can delete outgoing messages in private chats, groups, and supergroups.
  /// - Bots can delete incoming messages in private chats.
  /// - Bots granted can_post_messages permissions can delete outgoing messages in channels.
  /// - If the bot is an administrator of a group, it can delete any message there.
  /// - If the bot has can_delete_messages permission in a supergroup or a channel, it can delete any message there.
  ///
  /// Returns [bool] on success.
  Future<bool> deleteMessage(
    ID chatId,
    int messageId,
  ) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_id": messageId,
    };
    bool response = await HttpClient.getURI(
      _buildUri("deleteMessage", params),
    );
    return response;
  }

  /// Use this method to send static .WEBP, animated .TGS, or video .WEBM stickers. On success, the sent Message is returned.
  Future<Message> sendSticker(
    ID chatId,
    InputFile sticker, {
    String? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };

    Map<String, dynamic> response;
    if (sticker.type == InputFileType.file) {
      params["sticker"] = sticker.toJson();
      List<MultipartFile> files = [
        MultipartFile.fromBytes(
          "sticker",
          sticker.file!.readAsBytesSync(),
          filename: sticker.file!.filename,
        ),
      ];
      response = await HttpClient.multipartPost(
        _buildUri(
          "sendSticker",
        ),
        files,
        params,
      );
    } else {
      params["sticker"] = sticker.toJson();
      response = await HttpClient.getURI(
        _buildUri("sendSticker", params),
      );
    }

    return Message.fromJson(response);
  }

  /// Use this method to get a sticker set. On success, a StickerSet object is returned.
  Future<StickerSet> getStickerSet(
    String name,
  ) async {
    Map<String, dynamic> params = {
      "name": name,
    };
    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("getStickerSet", params),
    );
    return StickerSet.fromJson(response);
  }

  /// Use this method to upload a .PNG file with a sticker for later use in [createNewStickerSet] and addStickerToSet methods (can be used multiple times). Returns the uploaded File on success.
  Future<File> uploadStickerFile(
    int userId,
    InputFile pngSticker,
  ) async {
    Map<String, dynamic> params = {
      "user_id": userId,
    };

    Map<String, dynamic> response;
    if (pngSticker.type == InputFileType.file) {
      params["png_sticker"] = pngSticker.toJson();
      List<MultipartFile> files = [
        MultipartFile.fromBytes(
          "png_sticker",
          pngSticker.file!.readAsBytesSync(),
          filename: pngSticker.file!.filename,
        ),
      ];
      response = await HttpClient.multipartPost(
        _buildUri(
          "uploadStickerFile",
        ),
        files,
        params,
      );
    } else {
      throw TeleverseException(
        "Upload PNG Sticker",
        "Only upload PNG file. Use [InputFile.fromFile] to upload file.",
      );
    }

    return File.fromJson(response);
  }

  /// Use this method to create a new sticker set owned by a user. The bot will be able to edit the sticker set thus created. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Returns True on success.
  Future<bool> createNewStickerSet(
    int userId,
    String name,
    String title,
    InputFile pngSticker, {
    InputFile? tgsSticker,
    InputFile? webmSticker,
    StickerType? stickerType = StickerType.regular,
    required String emojis,
    bool? containsMasks,
    MaskPosition? maskPosition,
  }) async {
    Map<String, dynamic> params = {
      "user_id": userId,
      "name": name,
      "title": title,
      "emojis": emojis,
      "contains_masks": containsMasks,
      "mask_position": jsonEncode(maskPosition?.toJson()),
      "sticker_type": jsonEncode(stickerType?.toJson()),
    };

    bool response;
    List<MultipartFile> files = [];
    if (pngSticker.type == InputFileType.file) {
      params["png_sticker"] = pngSticker.toJson();
      files.add(
        MultipartFile.fromBytes(
          "png_sticker",
          pngSticker.file!.readAsBytesSync(),
          filename: pngSticker.file!.filename,
        ),
      );
    } else {
      params["png_sticker"] = pngSticker.toJson();
    }

    if (tgsSticker != null) {
      if (tgsSticker.type == InputFileType.file) {
        params["tgs_sticker"] = tgsSticker.toJson();
        files.add(
          MultipartFile.fromBytes(
            "tgs_sticker",
            tgsSticker.file!.readAsBytesSync(),
            filename: tgsSticker.file!.filename,
          ),
        );
      } else {
        throw TeleverseException(
          "Invalid Parameter [tgsSticker]",
          "Only upload TGS file. Use [InputFile.fromFile] to upload file.",
        );
      }
    }

    if (webmSticker != null) {
      if (webmSticker.type == InputFileType.file) {
        params["webm_sticker"] = webmSticker.toJson();
        files.add(
          MultipartFile.fromBytes(
            "webm_sticker",
            webmSticker.file!.readAsBytesSync(),
            filename: webmSticker.file!.filename,
          ),
        );
      } else {
        throw TeleverseException(
          "Invalid Parameter [webmSticker]",
          "Only upload WEBM file. Use [InputFile.fromFile] to upload file.",
        );
      }
    }

    if (files.isEmpty) {
      response = await HttpClient.getURI(
        _buildUri("createNewStickerSet", params),
      );
    } else {
      response = await HttpClient.multipartPost(
        _buildUri("createNewStickerSet"),
        files,
        params,
      );
    }

    return response;
  }

  /// Use this method to add a new sticker to a set created by the bot. You must use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker. Animated stickers can be added to animated sticker sets and only to them. Animated sticker sets can have up to 50 stickers. Static sticker sets can have up to 120 stickers. Returns True on success.
  Future<bool> addStickerToSet(
    int userId,
    String name, {
    InputFile? pngSticker,
    InputFile? tgsSticker,
    InputFile? webmSticker,
    required String emojis,
    MaskPosition? maskPosition,
  }) async {
    Map<String, dynamic> params = {
      "user_id": userId,
      "name": name,
      "emojis": emojis,
      "mask_position": jsonEncode(maskPosition?.toJson()),
    };

    bool response;
    List<MultipartFile> files = [];
    if (pngSticker != null) {
      if (pngSticker.type == InputFileType.file) {
        params["png_sticker"] = pngSticker.toJson();
        files.add(
          MultipartFile.fromBytes(
            "png_sticker",
            pngSticker.file!.readAsBytesSync(),
            filename: pngSticker.file!.filename,
          ),
        );
      } else {
        params["png_sticker"] = pngSticker.toJson();
      }
    }

    if (tgsSticker != null) {
      if (tgsSticker.type == InputFileType.file) {
        params["tgs_sticker"] = tgsSticker.toJson();
        files.add(
          MultipartFile.fromBytes(
            "tgs_sticker",
            tgsSticker.file!.readAsBytesSync(),
            filename: tgsSticker.file!.filename,
          ),
        );
      } else {
        throw TeleverseException(
          "Invalid Parameter [tgsSticker]",
          "Only upload TGS file. Use [InputFile.fromFile] to upload file.",
        );
      }
    }

    if (webmSticker != null) {
      if (webmSticker.type == InputFileType.file) {
        params["webm_sticker"] = webmSticker.toJson();
        files.add(
          MultipartFile.fromBytes(
            "webm_sticker",
            webmSticker.file!.readAsBytesSync(),
            filename: webmSticker.file!.filename,
          ),
        );
      } else {
        throw TeleverseException(
          "Invalid Parameter [webmSticker]",
          "Only upload WEBM file. Use [InputFile.fromFile] to upload file.",
        );
      }
    }

    if (files.isEmpty) {
      response = await HttpClient.getURI(
        _buildUri("addStickerToSet", params),
      );
    } else {
      response = await HttpClient.multipartPost(
        _buildUri("addStickerToSet"),
        files,
        params,
      );
    }

    return response;
  }

  /// Use this method to move a sticker in a set created by the bot to a specific position. Returns True on success.
  Future<bool> setStickerPositionInSet(String sticker, int position) async {
    Map<String, dynamic> params = {
      "sticker": sticker,
      "position": position,
    };

    bool response = await HttpClient.getURI(
      _buildUri("setStickerPositionInSet", params),
    );

    return response;
  }

  /// Use this method to delete a sticker from a set created by the bot. Returns True on success.
  Future<bool> deleteStickerFromSet(String sticker) async {
    Map<String, dynamic> params = {
      "sticker": sticker,
    };

    bool response = await HttpClient.getURI(
      _buildUri("deleteStickerFromSet", params),
    );

    return response;
  }

  /// Use this method to set the thumbnail of a sticker set. Animated thumbnails can be set for animated sticker sets only. Video thumbnails can be set only for video sticker sets only. Returns True on success.
  Future<bool> setStickerSetThumb(
    String name,
    int userId, {
    InputFile? thumb,
  }) async {
    Map<String, dynamic> params = {
      "name": name,
      "user_id": userId,
    };

    bool response;
    List<MultipartFile> files = [];
    if (thumb != null) {
      if (thumb.type == InputFileType.file) {
        params["thumb"] = thumb.toJson();
        files.add(
          MultipartFile.fromBytes(
            "thumb",
            thumb.file!.readAsBytesSync(),
            filename: thumb.file!.filename,
          ),
        );
      } else {
        params["thumb"] = thumb.toJson();
      }
    }

    if (files.isEmpty) {
      response = await HttpClient.getURI(
        _buildUri("setStickerSetThumb", params),
      );
    } else {
      response = await HttpClient.multipartPost(
        _buildUri("setStickerSetThumb"),
        files,
        params,
      );
    }

    return response;
  }

  /// Use this method to send answers to an inline query. On success, True is returned.
  /// No more than 50 results per query are allowed.
  Future<bool> answerInlineQuery(
    String inlineQueryId,
    List<InlineQueryResult> results, {
    int? cacheTime = 300,
    bool? isPersonal,
    String? nextOffset,
    String? switchPmText,
    String? switchPmParameter,
  }) async {
    Map<String, dynamic> params = {
      "inline_query_id": inlineQueryId,
      "results": results.map((e) => e.toJson()).toList(),
      "cache_time": cacheTime,
      "is_personal": isPersonal,
      "next_offset": nextOffset,
      "switch_pm_text": switchPmText,
      "switch_pm_parameter": switchPmParameter,
    };

    bool response = await HttpClient.getURI(
      _buildUri("answerInlineQuery", params),
    );

    return response;
  }

  /// Use this method to set the result of an interaction with a Web App and send a corresponding message on behalf of the user to the chat from which the query originated. On success, a SentWebAppMessage object is returned.
  Future<SentWebAppMessage> answerWebAppQuery(
    String webAppQueryId,
    InlineQueryResult result,
  ) async {
    Map<String, dynamic> params = {
      "web_app_query_id": webAppQueryId,
      "result": result.toJson(),
    };

    Map<String, dynamic> response = await HttpClient.getURI(
      _buildUri("answerWebAppQuery", params),
    );

    return SentWebAppMessage.fromJson(response);
  }

  /// Use this method to send invoices. On success, the sent Message is returned.
  Future<Message> sendInvoice(
    ID chatId, {
    required String title,
    required String description,
    required String payload,
    required String providerToken,
    required String currency,
    required List<LabeledPrice> prices,
    String? messageThreadId,
    int? maxTipAmount = 0,
    List<int>? suggestedTipAmounts,
    String? startParameter,
    String? providerData,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmail,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailToProvider,
    bool? isFlexible,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "title": title,
      "description": description,
      "payload": payload,
      "provider_token": providerToken,
      "currency": currency,
      "prices": prices.map((e) => e.toJson()).toList(),
      "message_thread_id": messageThreadId,
      "max_tip_amount": maxTipAmount,
      "suggested_tip_amounts": suggestedTipAmounts,
      "start_parameter": startParameter,
      "provider_data": providerData,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "need_name": needName,
      "need_phone_number": needPhoneNumber,
      "need_email": needEmail,
      "need_shipping_address": needShippingAddress,
      "send_phone_number_to_provider": sendPhoneNumberToProvider,
      "send_email_to_provider": sendEmailToProvider,
      "is_flexible": isFlexible,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };

    Map<String, dynamic> response = await HttpClient.postURI(
      _buildUri("sendInvoice"),
      params,
    );

    return Message.fromJson(response);
  }

  /// Use this method to create a link for an invoice. Returns the created invoice link as String on success.
  Future<String> createInvoiceLink({
    required String title,
    required String description,
    required String payload,
    required String providerToken,
    required String currency,
    required List<LabeledPrice> prices,
    int? maxTipAmount = 0,
    List<int>? suggestedTipAmounts,
    String? providerData,
    String? photoUrl,
    int? photoSize,
    int? photoWidth,
    int? photoHeight,
    bool? needName,
    bool? needPhoneNumber,
    bool? needEmail,
    bool? needShippingAddress,
    bool? sendPhoneNumberToProvider,
    bool? sendEmailToProvider,
    bool? isFlexible,
  }) async {
    Map<String, dynamic> params = {
      "title": title,
      "description": description,
      "payload": payload,
      "provider_token": providerToken,
      "currency": currency,
      "prices": prices.map((e) => e.toJson()).toList(),
      "max_tip_amount": maxTipAmount,
      "suggested_tip_amounts": suggestedTipAmounts,
      "provider_data": providerData,
      "photo_url": photoUrl,
      "photo_size": photoSize,
      "photo_width": photoWidth,
      "photo_height": photoHeight,
      "need_name": needName,
      "need_phone_number": needPhoneNumber,
      "need_email": needEmail,
      "need_shipping_address": needShippingAddress,
      "send_phone_number_to_provider": sendPhoneNumberToProvider,
      "send_email_to_provider": sendEmailToProvider,
      "is_flexible": isFlexible,
    };

    String response = await HttpClient.postURI(
      _buildUri("createInvoiceLink"),
      params,
    );

    return response;
  }

  /// If you sent an invoice requesting a shipping address and the parameter is_flexible was specified, the Bot API will send an Update with a shipping_query field to the bot. Use this method to reply to shipping queries. On success, True is returned.
  ///
  /// Parameters:
  /// - [shippingQueryId] Unique identifier for the query to be answered
  /// - [ok] Pass True if delivery to the specified address is possible and False if there are any problems (for example, if delivery to the specified address is not possible)
  /// - [shippingOptions] Required if ok is True. A JSON-serialized array of available shipping options.
  /// - [errorMessage] Required if ok is False. Error message in human readable form that explains why it is impossible to complete the order (e.g. "Sorry, delivery to your desired address is unavailable'). Telegram will display this message to the user.
  Future<bool> answerShippingQuery(
    String shippingQueryId,
    bool ok, {
    List<ShippingOption>? shippingOptions,
    String? errorMessage,
  }) async {
    if (ok && shippingOptions == null) {
      throw TeleverseException(
        "Invalid Parameter [shippingOptions]",
        "shippingOptions is required if ok is True",
      );
    }

    if (!ok && errorMessage == null) {
      throw TeleverseException(
        "Invalid Parameter [errorMessage]",
        "errorMessage is required if ok is False",
      );
    }

    Map<String, dynamic> params = {
      "shipping_query_id": shippingQueryId,
      "ok": ok,
      "shipping_options": shippingOptions?.map((e) => e.toJson()).toList(),
      "error_message": errorMessage,
    };

    bool response = await HttpClient.postURI(
      _buildUri("answerShippingQuery"),
      params,
    );

    return response;
  }

  /// Once the user has confirmed their payment and shipping details, the Bot API sends the final confirmation in the form of an Update with the field pre_checkout_query. Use this method to respond to such pre-checkout queries. On success, True is returned. Note: The Bot API must receive an answer within 10 seconds after the pre-checkout query was sent.
  ///
  /// Parameters:
  /// - [preCheckoutQueryId] Unique identifier for the query to be answered
  /// - [ok] Specify True if everything is alright (goods are available, etc.) and the bot is ready to proceed with the order. Use False if there are any problems.
  /// - [errorMessage] Required if ok is False. Error message in human readable form that explains the reason for failure to proceed with the checkout (e.g. "Sorry, somebody just bought the last of our amazing black T-shirts while you were busy filling out your payment details. Please choose a different color or garment!"). Telegram will display this message to the user.
  Future<bool> answerPreCheckoutQuery(
    String preCheckoutQueryId,
    bool ok, {
    String? errorMessage,
  }) async {
    if (!ok && errorMessage == null) {
      throw TeleverseException(
        "Invalid Parameter [errorMessage]",
        "errorMessage is required if ok is False",
      );
    }

    Map<String, dynamic> params = {
      "pre_checkout_query_id": preCheckoutQueryId,
      "ok": ok,
      "error_message": errorMessage,
    };

    bool response = await HttpClient.postURI(
      _buildUri("answerPreCheckoutQuery"),
      params,
    );

    return response;
  }

  /// Informs a user that some of the Telegram Passport elements they provided contains errors. The user will not be able to re-submit their Passport to you until the errors are fixed (the contents of the field for which you returned the error must change). Returns True on success.
  /// Use this if the data submitted by the user doesn't satisfy the standards your service requires for any reason. For example, if a birthday date seems invalid, a submitted document is blurry, a scan shows evidence of tampering, etc. Supply some details in the error message to make sure the user knows how to correct the issues.
  Future<bool> setPassportDataErrors(
    int userId,
    List<PassportElementError> errors,
  ) async {
    Map<String, dynamic> params = {
      "user_id": userId,
      "errors": errors.map((e) => e.toJson()).toList(),
    };

    bool response = await HttpClient.postURI(
      _buildUri("setPassportDataErrors"),
      params,
    );

    return response;
  }

  /// Use this method to send a game. On success, the sent [MessageContext] is returned.
  Future<Message> sendGame(
    ID chatId,
    String gameShortName, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    Map<String, dynamic> params = {
      "chat_id": chatId.id,
      "game_short_name": gameShortName,
      "message_thread_id": messageThreadId,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_to_message_id": replyToMessageId,
      "allow_sending_without_reply": allowSendingWithoutReply,
      "reply_markup": jsonEncode(replyMarkup?.toJson()),
    };

    Map<String, dynamic> response = await HttpClient.postURI(
      _buildUri("sendGame"),
      params,
    );

    return Message.fromJson(response);
  }

  /// Use this method to set the score of the specified user in a game message.
  /// On success the [MessageContext] is returned.
  ///
  /// Returns an error, if the new score is not greater than the user's current score in the chat and [force] is False.
  ///
  /// If you're looking to update a inline message, you can use [setInlineGameScore] instead.
  Future<Message> setGameScore(
    int userId,
    int score,
    ID chatId,
    int messageId, {
    bool? force,
    bool? disableEditMessage,
  }) async {
    Map<String, dynamic> params = {
      "user_id": userId,
      "score": score,
      "force": force,
      "disable_edit_message": disableEditMessage,
      "chat_id": chatId.id,
      "message_id": messageId,
    };

    Map<String, dynamic> response = await HttpClient.postURI(
      _buildUri("setGameScore"),
      params,
    );

    return Message.fromJson(response);
  }

  /// Use this method to set the score of the specified user in a game message.
  ///
  /// IMPORTANT: This method will not work if the message is not an inline message.
  ///
  /// On success the [bool] is returned.
  ///
  /// Returns an error, if the new score is not greater than the user's current score in the chat and [force] is False.
  Future<bool> setInlineGameScore(
    int userId,
    int score,
    String inlineMessageId, {
    bool? force,
    bool? disableEditMessage,
  }) async {
    Map<String, dynamic> params = {
      "user_id": userId,
      "score": score,
      "force": force,
      "disable_edit_message": disableEditMessage,
      "inline_message_id": inlineMessageId,
    };

    bool response = await HttpClient.postURI(
      _buildUri("setInlineGameScore"),
      params,
    );

    return response;
  }

  /// Use this method to get data for high score tables. Will return the score of the specified user and several of their neighbors in a game.
  /// Returns an Array of GameHighScore objects.
  ///
  ///
  Future<List<GameHighScore>> getGameHighScores(
    int userId, {
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
  }) async {
    if (chatId == null && messageId == null && inlineMessageId == null) {
      throw TeleverseException(
        "Invalid Parameter",
        "chatId, messageId, and inlineMessageId cannot all be null",
      );
    }

    Map<String, dynamic> params = {
      "user_id": userId,
      "chat_id": chatId?.id,
      "message_id": messageId,
      "inline_message_id": inlineMessageId,
    };

    List<Map<String, dynamic>> response = await HttpClient.postURI(
      _buildUri("getGameHighScores"),
      params,
    );

    return response.map((e) => GameHighScore.fromJson(e)).toList();
  }
}
