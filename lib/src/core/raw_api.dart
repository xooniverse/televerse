// File: lib/src/core/raw_api.dart

part of '../../televerse.dart';

/// Raw API class for making direct calls to the Telegram Bot API.
///
/// This class provides low-level access to the Telegram Bot API endpoints.
/// It handles HTTP requests, response parsing, error handling, and file uploads.
///
/// The RawAPI class is designed to be used internally by higher-level bot
/// implementations but can also be used directly for advanced use cases.
class RawAPI {
  /// The bot token used for authentication.
  final String token;

  /// The HTTP client used for making requests.
  final HttpClient _httpClient;

  /// The base URL for API requests.
  final String _baseUrl;

  /// Whether we are running in test environment.
  final bool isTest;

  /// Whether this instance owns the HTTP client and should dispose it.
  final bool _ownsHttpClient;

  /// Manager for handling transformer chains.
  final TransformerManager _transformerManager = TransformerManager();

  /// Creates a new [RawAPI] instance.
  ///
  /// Parameters:
  /// - [token]: The bot token obtained from @BotFather
  /// - [httpClient]: Optional custom HTTP client. If not provided, a default one will be created
  /// - [baseUrl]: Optional custom base URL. Defaults to the official Telegram Bot API URL
  /// - [isTest]: Whether to use the test environment. Defaults to false.
  RawAPI(
    this.token, {
    HttpClient? httpClient,
    String? baseUrl,
    this.isTest = false,
  }) : _httpClient = httpClient ?? DioHttpClient(),
       _baseUrl = _buildBaseUrl(token, baseUrl, isTest),
       _ownsHttpClient = httpClient == null;

  /// Builds the base URL for the API.
  static String _buildBaseUrl(String token, String? baseUrl, bool isTest) {
    if (baseUrl != null) {
      if (baseUrl.endsWith('/')) {
        baseUrl = baseUrl.substring(0, baseUrl.length - 1);
      }
    } else {
      baseUrl = 'https://api.telegram.org';
    }

    if (isTest) {
      return '$baseUrl/bot$token/test';
    } else {
      return '$baseUrl/bot$token';
    }
  }

  // ===============================
  // Transformer Management
  // ===============================

  /// Adds a transformer to the request chain.
  ///
  /// Transformers are executed in the order they are added.
  /// The first transformer added will be the outermost in the chain.
  ///
  /// Example:
  /// ```dart
  /// api.use(LoggingTransformer());
  /// api.use(RetryTransformer(maxRetries: 3));
  /// ```
  void use(Transformer transformer) {
    _transformerManager.addTransformer(transformer);
  }

  /// Removes a specific transformer from the chain.
  ///
  /// Returns true if the transformer was found and removed.
  bool removeTransformer(Transformer transformer) {
    return _transformerManager.removeTransformer(transformer);
  }

  /// Removes all transformers of the specified type.
  ///
  /// Returns the number of transformers removed.
  ///
  /// Example:
  /// ```dart
  /// // Remove all logging transformers
  /// final removedCount = api.removeTransformersOfType<LoggingTransformer>();
  /// ```
  int removeTransformersOfType<T extends Transformer>() {
    return _transformerManager.removeTransformersOfType<T>();
  }

  /// Gets a read-only list of all installed transformers.
  List<Transformer> get transformers => _transformerManager.transformers;

  /// Clears all transformers.
  void clearTransformers() {
    _transformerManager.clear();
  }

  /// Makes a generic API call to any Telegram Bot API method.
  ///
  /// This is the most flexible way to interact with the Telegram Bot API.
  /// It allows you to call any API method with custom parameters and files.
  ///
  /// This method is particularly useful for:
  /// - Calling new API methods that don't have dedicated wrapper methods yet
  /// - Advanced use cases requiring custom parameter handling
  /// - Testing and experimentation with the API
  ///
  /// Example usage:
  /// ```dart
  /// // Send a message using the generic call method
  /// final payload = Payload({
  ///   'chat_id': chatId.toJson(),
  ///   'text': 'Hello World!',
  ///   'parse_mode': 'HTML',
  /// });
  ///
  /// final response = await api<Map<String, dynamic>>(
  ///   "sendMessage",
  ///   payload,
  /// );
  /// final message = Message.fromJson(response);
  /// ```
  ///
  /// Parameters:
  /// - [method]: The API method to call
  /// - [payload]: The payload containing parameters and optional files
  ///
  /// Returns the parsed response data of type [T].
  /// Throws [TeleverseException] if the request fails.
  Future<T> call<T>(String method, Payload payload) async {
    return await _makeRequest<T>(method, payload);
  }

  /// Makes a request to the specified API method.
  ///
  /// This is the core method that handles all API requests. It automatically
  /// determines whether to send a JSON or multipart request based on the payload,
  /// and executes the transformer chain.
  ///
  /// Parameters:
  /// - [method]: The API method to call
  /// - [payload]: The request payload containing parameters and optional files
  ///
  /// Returns the parsed response data.
  /// Throws [TeleverseException] if the request fails.
  Future<T> _makeRequest<T>(String method, [Payload? payload]) async {
    // Create the transformer chain
    final caller = _transformerManager.createCaller(_actualApiCall);

    // Execute the request through the transformer chain
    final response = await caller(method, payload);

    return _processResponse<T>(response);
  }

  /// The actual API call implementation (final step in transformer chain).
  ///
  /// This method performs the actual HTTP request to the Telegram Bot API.
  /// It's called at the end of the transformer chain.
  Future<Map<String, dynamic>> _actualApiCall(
    String method, [
    Payload? payload,
  ]) async {
    final url = '$_baseUrl/$method';

    try {
      final response = await _httpClient.post(url, payload);
      return response;
    } catch (e) {
      if (e is TeleverseException) {
        rethrow;
      }

      throw TeleverseException(
        'API request failed for method $method',
        description: e.toString(),
        type: TeleverseExceptionType.requestFailed,
      );
    }
  }

  /// Processes the API response and handles errors.
  ///
  /// The Telegram Bot API always returns a JSON object with an 'ok' field.
  /// If 'ok' is true, the 'result' field contains the response data.
  /// If 'ok' is false, the response contains error information.
  T _processResponse<T>(Map<String, dynamic> response) {
    final ok = response['ok'] as bool?;

    if (ok != true) {
      throw TelegramException.fromJson(response);
    }

    return response['result'] as T;
  }

  /// Prepares files to send for the payload
  Map<String, LocalFile> _prepareFiles(Iterable<InputFile?> files) {
    final result = <String, LocalFile>{};
    for (var file in files) {
      if (file != null && file.type == InputFileType.bytes) {
        result[file.getAttachName()] = file.toLocalFile();
      }
    }
    return result;
  }

  /// Closes the RawAPI instance and releases resources.
  ///
  /// This method should be called when you're done using the RawAPI instance
  /// to properly clean up HTTP connections and other resources.
  Future<void> closeClient() async {
    if (_ownsHttpClient) {
      await _httpClient.close();
    }
  }

  /// Gets updates for the bot.
  ///
  /// Use this method to receive incoming updates using long polling.
  /// An Array of [Update] objects is returned.
  Future<List<Update>> getUpdates({
    int? offset,
    int? limit,
    int? timeout,
    List<UpdateType>? allowedUpdates,
  }) async {
    final params = <String, dynamic>{
      'offset': ?offset,
      'limit': ?limit,
      'timeout': ?timeout,
      'allowed_updates': ?allowedUpdates,
    };

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getUpdates.name,
      payload,
    );

    return response.map((json) => Update.fromJson(json)).toList();
  }

  /// Sets a webhook to receive incoming updates via an outgoing webhook.
  ///
  /// Whenever there is an update for the bot, Telegram will send an HTTPS POST
  /// request to the specified URL, containing a JSON-serialized Update.
  /// Returns True on success.
  Future<bool> setWebhook(
    String url, {
    InputFile? certificate,
    String? ipAddress,
    int? maxConnections,
    List<UpdateType>? allowedUpdates,
    bool? dropPendingUpdates,
    String? secretToken,
  }) async {
    final params = <String, dynamic>{
      'url': url,
      'certificate': ?certificate,
      'ip_address': ?ipAddress,
      'max_connections': ?maxConnections,
      'allowed_updates': ?allowedUpdates,
      'drop_pending_updates': ?dropPendingUpdates,
      'secret_token': ?secretToken,
    };

    final payload = Payload(params, _prepareFiles([certificate]));
    return await _makeRequest<bool>(APIMethod.setWebhook.name, payload);
  }

  /// Gets current webhook status. Returns current webhook status.
  Future<WebhookInfo> getWebhookInfo() async {
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getWebhookInfo.name,
    );

    return WebhookInfo.fromJson(response);
  }

  /// Removes webhook integration if you decide to switch back to getUpdates.
  /// Returns True on success.
  Future<bool> deleteWebhook({bool? dropPendingUpdates}) async {
    final params = <String, dynamic>{
      'drop_pending_updates': ?dropPendingUpdates,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteWebhook.name, payload);
  }

  /// Sends a text message.
  ///
  /// On success, the sent [Message] is returned.
  Future<Message> sendMessage(
    ID chatId,
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    LinkPreviewOptions? linkPreviewOptions,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'text': text,
      'message_thread_id': ?messageThreadId,
      'parse_mode': ?parseMode,
      'entities': ?entities,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'link_preview_options': ?linkPreviewOptions,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendMessage.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Streams a partial message to a user while the message is being generated;
  /// supported only for bots with forum topic mode enabled. Returns True on success.
  Future<bool> sendMessageDraft(
    ID chatId,
    int draftId,
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'draft_id': draftId,
      'text': text,
      'message_thread_id': ?messageThreadId,
      'parse_mode': ?parseMode,
      'entities': ?entities,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.sendMessageDraft.name, payload);
  }

  /// Sends a photo.
  ///
  /// On success, the sent [Message] is returned.
  Future<Message> sendPhoto(
    ID chatId,
    InputFile photo, {
    int? messageThreadId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    bool? hasSpoiler,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'photo': photo,
      'message_thread_id': ?messageThreadId,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'has_spoiler': ?hasSpoiler,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'show_caption_above_media': ?showCaptionAboveMedia,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final payload = Payload(params, _prepareFiles([photo]));

    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendPhoto.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Sends a group of photos, videos, documents or audios as an album.
  ///
  /// Messages sent as a group cannot be edited or deleted individually.
  /// On success, an array of [Message]s that were sent is returned.
  Future<List<Message>> sendMediaGroup(
    ID chatId,
    List<InputMedia> media, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'media': media,
      'message_thread_id': ?messageThreadId,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
    };

    final files = _prepareFiles(media.expand((e) => e.getInputFiles()));

    final payload = Payload(params, files);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.sendMediaGroup.name,
      payload,
    );

    return response.map((json) => Message.fromJson(json)).toList();
  }

  /// Gets basic information about the bot.
  ///
  /// A simple method for testing your bot's authentication token.
  /// Requires no parameters. Returns basic information about the bot
  /// in form of a `User` object.
  Future<User> getMe() async {
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getMe.name,
    );
    return User.fromJson(response);
  }

  /// Use this method to log out from the cloud Bot API server before launching
  /// the bot locally. You must log out the bot before running it locally,
  /// otherwise there is no guarantee that the bot will receive updates. After a
  /// successful call, you can immediately log in on a local server, but will
  /// not be able to log in back to the cloud Bot API server for 10 minutes.
  /// Returns True on success. Requires no parameters. Note: This will affect
  /// all running bots.
  ///
  /// See more at https://core.telegram.org/bots/api#logout
  Future<bool> logOut() async {
    return await _makeRequest<bool>(APIMethod.logOut.name);
  }

  /// Use this method to close the bot instance before moving it from one local
  /// server to another. You need to delete the webhook before calling this
  /// method to ensure that the bot isn't launched again after server restart.
  /// The method will return error 429 in the first 10 minutes after the bot is
  /// launched. Returns True on success. Requires no parameters.
  ///
  /// See more at https://core.telegram.org/bots/api#close
  Future<bool> close() async {
    return await _makeRequest<bool>(APIMethod.close.name);
  }

  /// Use this method to forward messages of any kind. Service messages can't be
  /// forwarded. On success, the sent [Message] is returned.
  ///
  /// See more at https://core.telegram.org/bots/api#forwardmessage
  Future<Message> forwardMessage(
    ID chatId,
    ID fromChatId,
    int messageId, {
    bool? disableNotification,
    int? messageThreadId,
    bool? protectContent,
    int? videoStartTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
    String? messageEffectId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'from_chat_id': fromChatId,
      'message_id': messageId,
      'disable_notification': ?disableNotification,
      'message_thread_id': ?messageThreadId,
      'protect_content': ?protectContent,
      'video_start_timestamp': ?videoStartTimestamp,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
      'message_effect_id': ?messageEffectId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.forwardMessage.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to copy messages of any kind. Service messages and invoice
  /// messages can't be copied. A quiz poll can be copied only if the value of
  /// the field correct_option_id is known to the bot. The method is analogous
  /// to the method forwardMessage, but the copied message doesn't have a link
  /// to the original message. Returns the MessageId of the sent message on
  /// success.
  ///
  /// See more at https://core.telegram.org/bots/api#copymessage
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    int? videoStartTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
    String? messageEffectId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'from_chat_id': fromChatId,
      'message_id': messageId,
      'message_thread_id': ?messageThreadId,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'show_caption_above_media': ?showCaptionAboveMedia,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'video_start_timestamp': ?videoStartTimestamp,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
      'message_effect_id': ?messageEffectId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.copyMessage.name,
      payload,
    );

    return MessageId.fromJson(response);
  }

  /// Use this method to send audio files, if you want Telegram clients to
  /// display them in the music player. Your audio must be in the .MP3 or .M4A
  /// format. On success, the sent Message is returned. Bots can currently send
  /// audio files of up to 50 MB in size, this limit may be changed in the
  /// future.
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
    InputFile? thumbnail,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'audio': audio,
      'message_thread_id': ?messageThreadId,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'duration': ?duration,
      'performer': ?performer,
      'title': ?title,
      'thumbnail': ?thumbnail,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles([audio, ?thumbnail]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendAudio.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send general files. On success, the sent Message is
  /// returned.
  Future<Message> sendDocument(
    ID chatId,
    InputFile document, {
    int? messageThreadId,
    InputFile? thumbnail,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? disableContentTypeDetection,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'document': document,
      'message_thread_id': ?messageThreadId,
      'thumbnail': ?thumbnail,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'disable_content_type_detection': ?disableContentTypeDetection,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };
    final files = _prepareFiles([document, ?thumbnail]);
    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendDocument.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send video files, Telegram clients support MPEG4 videos
  /// (other formats may be sent as Document). On success, the sent Message is
  /// returned.
  Future<Message> sendVideo(
    ID chatId,
    InputFile video, {
    int? messageThreadId,
    int? duration,
    int? width,
    int? height,
    InputFile? thumbnail,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? hasSpoiler,
    bool? supportsStreaming,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    InputFile? cover,
    int? startTimestamp,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'video': video,
      'message_thread_id': ?messageThreadId,
      'duration': ?duration,
      'width': ?width,
      'height': ?height,
      'thumbnail': ?thumbnail,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'has_spoiler': ?hasSpoiler,
      'supports_streaming': ?supportsStreaming,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'show_caption_above_media': ?showCaptionAboveMedia,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'cover': ?cover,
      'start_timestamp': ?startTimestamp,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles([video, ?thumbnail, ?cover]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendVideo.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Sends animation files (GIF or H.264/MPEG-4 AVC video without sound).
  ///
  /// Use this method to send animation files. On success, the sent [Message] is returned.
  Future<Message> sendAnimation(
    ID chatId,
    InputFile animation, {
    int? messageThreadId,
    int? duration,
    int? width,
    int? height,
    InputFile? thumbnail,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? hasSpoiler,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'animation': animation,
      'message_thread_id': ?messageThreadId,
      'duration': ?duration,
      'width': ?width,
      'height': ?height,
      'thumbnail': ?thumbnail,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'has_spoiler': ?hasSpoiler,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'show_caption_above_media': ?showCaptionAboveMedia,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles([animation, ?thumbnail]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendAnimation.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Sends audio files as playable voice messages. On success, the sent [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendvoice
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'voice': voice,
      'message_thread_id': ?messageThreadId,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'duration': ?duration,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles([voice]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendVoice.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Sends rounded square MPEG4 video messages.
  ///
  /// As of v.4.0, Telegram clients support rounded square MPEG4 videos of up to
  /// 1 minute long. Use this method to send video messages. On success, the
  /// sent [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendvideonote
  ///
  /// Returns the sent [Message].
  Future<Message> sendVideoNote(
    ID chatId,
    InputFile videoNote, {
    int? messageThreadId,
    int? duration,
    int? length,
    InputFile? thumbnail,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'video_note': videoNote,
      'message_thread_id': ?messageThreadId,
      'duration': ?duration,
      'length': ?length,
      'thumbnail': ?thumbnail,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles([videoNote, ?thumbnail]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendVideoNote.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send point on the map.
  ///
  /// On success, the sent [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendlocation
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'latitude': latitude,
      'longitude': longitude,
      'message_thread_id': ?messageThreadId,
      'horizontal_accuracy': ?horizontalAccuracy,
      'live_period': ?livePeriod,
      'heading': ?heading,
      'proximity_alert_radius': ?proximityAlertRadius,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendLocation.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send information about a venue.
  ///
  /// On success, the sent [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendvenue
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'latitude': latitude,
      'longitude': longitude,
      'title': title,
      'address': address,
      'message_thread_id': ?messageThreadId,
      'foursquare_id': ?foursquareId,
      'foursquare_type': ?foursquareType,
      'google_place_id': ?googlePlaceId,
      'google_place_type': ?googlePlaceType,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendVenue.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send phone contacts. On success, the sent Message is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendcontact
  Future<Message> sendContact(
    ID chatId,
    String phoneNumber,
    String firstName, {
    int? messageThreadId,
    String? lastName,
    String? vcard,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'phone_number': phoneNumber,
      'first_name': firstName,
      'message_thread_id': ?messageThreadId,
      'last_name': ?lastName,
      'vcard': ?vcard,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendContact.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send a native poll. On success, the sent Message is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendpoll
  Future<Message> sendPoll(
    ID chatId,
    String question,
    List<InputPollOption> options, {
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    ParseMode? questionParseMode,
    List<MessageEntity>? questionEntities,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'question': question,
      'options': options,
      'message_thread_id': ?messageThreadId,
      'is_anonymous': ?isAnonymous,
      'type': type,
      'allows_multiple_answers': ?allowsMultipleAnswers,
      'correct_option_id': ?correctOptionId,
      'explanation': ?explanation,
      'explanation_parse_mode': ?explanationParseMode,
      'explanation_entities': ?explanationEntities,
      'open_period': ?openPeriod,
      'close_date': ?closeDate?.secondsSinceEpoch,
      'is_closed': ?isClosed,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'question_parse_mode': ?questionParseMode,
      'question_entities': ?questionEntities,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendPoll.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method to send an animated emoji that will display a random value. On success, the sent Message is returned.
  ///
  /// See: https://core.telegram.org/bots/api#senddice
  Future<Message> sendDice(
    ID chatId, {
    DiceEmoji emoji = DiceEmoji.dice,
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'emoji': emoji,
      'message_thread_id': ?messageThreadId,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'reply_markup': ?replyMarkup,
      'reply_parameters': ?replyParameters,
      'business_connection_id': ?businessConnectionId,
      'message_effect_id': ?messageEffectId,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendDice.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Use this method when you need to tell the user that something is happening
  /// on the bot's side. The status is set for 5 seconds or less (when a message
  /// arrives from your bot, Telegram clients clear its typing status). Returns
  /// True on success.
  ///
  /// See: https://core.telegram.org/bots/api#sendchataction
  Future<bool> sendChatAction(
    ID chatId,
    ChatAction action, {
    int? messageThreadId,
    String? businessConnectionId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'action': action,
      'message_thread_id': ?messageThreadId,
      'business_connection_id': ?businessConnectionId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.sendChatAction.name, payload);
  }

  /// Use this method to get a list of profile pictures for a user.
  ///
  /// See: https://core.telegram.org/bots/api#getuserprofilephotos
  Future<UserProfilePhotos> getUserProfilePhotos(
    int userId, {
    int? offset,
    int? limit,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'offset': ?offset,
      'limit': ?limit,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getUserProfilePhotos.name,
      payload,
    );

    return UserProfilePhotos.fromJson(response);
  }

  /// Use this method to get basic information about a file and prepare it for downloading.
  ///
  /// See: https://core.telegram.org/bots/api#getfile
  Future<File> getFile(String fileId) async {
    final params = <String, dynamic>{'file_id': fileId};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getFile.name,
      payload,
    );

    return File.fromJson(response);
  }

  /// Use this method to ban a user in a group, a supergroup or a channel. In
  /// the case of supergroups and channels, the user will not be able to return
  /// to the chat on their own using invite links, etc., unless unbanned first.
  /// The bot must be an administrator in the chat for this to work and must
  /// have the appropriate administrator rights. Returns True on success.
  Future<bool> banChatMember(
    ID chatId,
    int userId, {
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'until_date': ?untilDate.secondsSinceEpoch,
      'revoke_messages': ?revokeMessages,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.banChatMember.name, payload);
  }

  /// Use this method to unban a previously banned user in a supergroup or
  /// channel. The user will not return to the group or channel automatically,
  /// but will be able to join via link, etc. The bot must be an administrator
  /// for this to work. By default, this method guarantees that after the call
  /// the user is not a member of the chat, but will be able to join it. So if
  /// the user is a member of the chat they will also be removed from the chat.
  /// If you don't want this, use the parameter only_if_banned. Returns True on
  /// success.
  ///
  /// See: https://core.telegram.org/bots/api#unbanchatmember
  Future<bool> unbanChatMember(
    ID chatId,
    int userId, {
    bool? onlyIfBanned,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'only_if_banned': ?onlyIfBanned,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.unbanChatMember.name, payload);
  }

  /// Use this method to restrict a user in a supergroup. The bot must be an
  /// administrator in the supergroup for this to work and must have the
  /// appropriate administrator rights. Pass True for all permissions to lift
  /// restrictions from a user. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#restrictchatmember
  Future<bool> restrictChatMember(
    ID chatId,
    int userId,
    ChatPermissions permissions, {
    DateTime? untilDate,
    bool? useIndependentChatPermissions,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'permissions': permissions,
      'until_date': ?untilDate.secondsSinceEpoch,
      'use_independent_chat_permissions': ?useIndependentChatPermissions,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.restrictChatMember.name, payload);
  }

  /// Use this method to promote or demote a user in a supergroup or a channel.
  /// The bot must be an administrator in the chat for this to work and must
  /// have the appropriate administrator rights. Pass False for all boolean
  /// parameters to demote a user. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#promotechatmember
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
    bool? canPostStories,
    bool? canEditStories,
    bool? canDeleteStories,
    bool? canManageDirectMessages,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'is_anonymous': ?isAnonymous,
      'can_manage_chat': ?canManageChat,
      'can_post_messages': ?canPostMessages,
      'can_edit_messages': ?canEditMessages,
      'can_delete_messages': ?canDeleteMessages,
      'can_manage_video_chats': ?canManageVideoChats,
      'can_restrict_members': ?canRestrictMembers,
      'can_promote_members': ?canPromoteMembers,
      'can_change_info': ?canChangeInfo,
      'can_invite_users': ?canInviteUsers,
      'can_pin_messages': ?canPinMessages,
      'can_manage_topics': ?canManageTopics,
      'can_post_stories': ?canPostStories,
      'can_edit_stories': ?canEditStories,
      'can_delete_stories': ?canDeleteStories,
      'can_manage_direct_messages': ?canManageDirectMessages,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.promoteChatMember.name, payload);
  }

  /// Use this method to set a custom title for an administrator in a supergroup
  /// promoted by the bot. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setchatadministratorcustomtitle
  Future<bool> setChatAdministratorCustomTitle(
    ID chatId,
    int userId,
    String customTitle,
  ) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'user_id': userId,
      'custom_title': customTitle,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setChatAdministratorCustomTitle.name,
      payload,
    );
  }

  /// Use this method to ban a channel chat in a supergroup or a channel. Until
  /// the chat is unbanned, the owner of the banned chat won't be able to send
  /// messages on behalf of any of their channels. The bot must be an
  /// administrator in the supergroup or channel for this to work and must have
  /// the appropriate administrator rights. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#banchatsenderchat
  Future<bool> banChatSenderChat(ID chatId, int senderChatId) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'sender_chat_id': senderChatId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.banChatSenderChat.name, payload);
  }

  /// Use this method to unban a previously banned channel chat in a supergroup
  /// or a channel. The bot must be an administrator for this to work and must
  /// have the appropriate administrator rights. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#unbanchatsenderchat
  Future<bool> unbanChatSenderChat(ID chatId, int senderChatId) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'sender_chat_id': senderChatId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.unbanChatSenderChat.name,
      payload,
    );
  }

  /// Use this method to set default chat permissions for all members.
  ///
  /// See https://core.telegram.org/bots/api#setchatpermissions
  Future<bool> setChatPermissions(
    ID chatId,
    ChatPermissions permissions, {
    bool? useIndependentChatPermissions,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'permissions': permissions,
      'use_independent_chat_permissions': ?useIndependentChatPermissions,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setChatPermissions.name, payload);
  }

  /// Use this method to generate a new primary invite link for a chat.
  ///
  /// See https://core.telegram.org/bots/api#exportchatinvitelink
  Future<String> exportChatInviteLink(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<String>(
      APIMethod.exportChatInviteLink.name,
      payload,
    );
  }

  /// Use this method to create an additional invite link for a chat.
  ///
  /// See https://core.telegram.org/bots/api#createchatinvitelink
  Future<ChatInviteLink> createChatInviteLink(
    ID chatId, {
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'name': ?name,
      'expire_date': ?expireDate.secondsSinceEpoch,
      'member_limit': ?memberLimit,
      'creates_join_request': ?createsJoinRequest,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.createChatInviteLink.name,
      payload,
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to edit a non-primary invite link created by the bot.
  ///
  /// See: https://core.telegram.org/bots/api#editchatinvitelink
  Future<ChatInviteLink> editChatInviteLink(
    ID chatId,
    String inviteLink, {
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'invite_link': inviteLink,
      'name': ?name,
      'expire_date': ?expireDate.secondsSinceEpoch,
      'member_limit': ?memberLimit,
      'creates_join_request': ?createsJoinRequest,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.editChatInviteLink.name,
      payload,
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to revoke an invite link created by the bot.
  ///
  /// See: https://core.telegram.org/bots/api#revokechatinvitelink
  Future<ChatInviteLink> revokeChatInviteLink(
    ID chatId,
    String inviteLink,
  ) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'invite_link': inviteLink,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.revokeChatInviteLink.name,
      payload,
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to approve a chat join request.
  ///
  /// See: https://core.telegram.org/bots/api#approvechatjoinrequest
  Future<bool> approveChatJoinRequest(ID chatId, int userId) async {
    final params = <String, dynamic>{'chat_id': chatId, 'user_id': userId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.approveChatJoinRequest.name,
      payload,
    );
  }

  /// Use this method to decline a chat join request.
  ///
  /// See: https://core.telegram.org/bots/api#declinechatjoinrequest
  Future<bool> declineChatJoinRequest(ID chatId, int userId) async {
    final params = <String, dynamic>{'chat_id': chatId, 'user_id': userId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.declineChatJoinRequest.name,
      payload,
    );
  }

  /// Use this method to set a new profile photo for the chat. Photos can't be
  /// changed for private chats. The bot must be an administrator in the chat
  /// for this to work and must have the appropriate administrator rights.
  /// Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setchatphoto
  Future<bool> setChatPhoto(ID chatId, InputFile photo) async {
    final params = <String, dynamic>{'chat_id': chatId, 'photo': photo};
    final files = _prepareFiles([photo]);
    final payload = Payload(params, files);
    return await _makeRequest<bool>(APIMethod.setChatPhoto.name, payload);
  }

  /// Use this method to delete a chat photo. Photos can't be changed for
  /// private chats. The bot must be an administrator in the chat for this to
  /// work and must have the appropriate administrator rights. Returns True on
  /// success.
  ///
  /// See: https://core.telegram.org/bots/api#deletechatphoto
  Future<bool> deleteChatPhoto(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteChatPhoto.name, payload);
  }

  /// Use this method to change the title of a chat. Titles can't be changed for
  /// private chats. The bot must be an administrator in the chat for this to
  /// work and must have the appropriate administrator rights. Returns True on
  /// success.
  ///
  /// See: https://core.telegram.org/bots/api#setchattitle
  Future<bool> setChatTitle(ID chatId, String title) async {
    final params = <String, dynamic>{'chat_id': chatId, 'title': title};

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setChatTitle.name, payload);
  }

  /// Use this method to change the description of a group, a supergroup or a
  /// channel. The bot must be an administrator in the chat for this to work and
  /// must have the appropriate administrator rights. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setchatdescription
  Future<bool> setChatDescription(ID chatId, String? description) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'description': ?description,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setChatDescription.name, payload);
  }

  /// Use this method to add a message to the list of pinned messages in a chat.
  /// If the chat is not a private chat, the bot must be an administrator in the
  /// chat for this to work and must have the 'can_pin_messages' administrator
  /// right in a supergroup or 'can_edit_messages' administrator right in a
  /// channel. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#pinchatmessage
  Future<bool> pinChatMessage(
    ID chatId,
    int messageId, {
    bool? disableNotification,
    String? businessConnectionId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'disable_notification': ?disableNotification,
      'business_connection_id': ?businessConnectionId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.pinChatMessage.name, payload);
  }

  /// Use this method to remove a message from the list of pinned messages in a
  /// chat. If the chat is not a private chat, the bot must be an administrator
  /// in the chat for this to work and must have the 'can_pin_messages'
  /// administrator right in a supergroup or 'can_edit_messages' administrator
  /// right in a channel. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#unpinchatmessage
  Future<bool> unpinChatMessage(
    ID chatId,
    int messageId, {
    String? businessConnectionId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'business_connection_id': ?businessConnectionId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.unpinChatMessage.name, payload);
  }

  /// Use this method to clear the list of pinned messages in a chat. If the
  /// chat is not a private chat, the bot must be an administrator in the chat
  /// for this to work and must have the 'can_pin_messages' administrator right
  /// in a supergroup or 'can_edit_messages' administrator right in a channel.
  /// Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#unpinallchatmessages
  Future<bool> unpinAllChatMessages(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.unpinAllChatMessages.name,
      payload,
    );
  }

  /// Use this method for your bot to leave a group, supergroup or channel.
  /// Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#leavechat
  Future<bool> leaveChat(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.leaveChat.name, payload);
  }

  /// Use this method to get up to date information about the chat (current name
  /// of the user for one-on-one conversations, current username of a user,
  /// group or channel, etc.). Returns a Chat object on success.
  ///
  /// See: https://core.telegram.org/bots/api#getchat
  Future<ChatFullInfo> getChat(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getChat.name,
      payload,
    );

    return ChatFullInfo.fromJson(response);
  }

  /// Use this method to get a list of administrators in a chat, which aren't
  /// bots. Returns an Array of ChatMember objects.
  ///
  /// See: https://core.telegram.org/bots/api#getchatadministrators
  Future<List<ChatMember>> getChatAdministrators(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getChatAdministrators.name,
      payload,
    );

    return response.map((json) => ChatMember.fromJson(json)).toList();
  }

  /// Use this method to get the number of members in a chat. Returns Int on
  /// success.
  ///
  /// See: https://core.telegram.org/bots/api#getchatmemberscount
  Future<int> getChatMemberCount(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<int>(APIMethod.getChatMemberCount.name, payload);
  }

  /// Use this method to get information about a member of a chat. The method is
  /// guaranteed to work only if the bot is an administrator in the chat.
  /// Returns a ChatMember object on success.
  ///
  /// See: https://core.telegram.org/bots/api#getchatmember
  Future<ChatMember> getChatMember(ID chatId, int userId) async {
    final params = <String, dynamic>{'chat_id': chatId, 'user_id': userId};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getChatMember.name,
      payload,
    );

    return ChatMember.fromJson(response);
  }

  /// Use this method to set a new group sticker set for a supergroup. The bot
  /// must be an administrator in the chat for this to work and must have the
  /// appropriate administrator rights. Use the field can_set_sticker_set
  /// optionally returned in getChat requests to check if the bot can use this
  /// method. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setchatstickerset
  Future<bool> setChatStickerSet(ID chatId, String stickerSetName) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'sticker_set_name': stickerSetName,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setChatStickerSet.name, payload);
  }

  /// Use this method to delete a group sticker set from a supergroup.
  ///
  /// See: https://core.telegram.org/bots/api#deletechatstickerset
  Future<bool> deleteChatStickerSet(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.deleteChatStickerSet.name,
      payload,
    );
  }

  /// Use this method to get custom emoji stickers, which can be used as a forum topic icon.
  ///
  /// See: https://core.telegram.org/bots/api#getforumtopiconstickers
  Future<List<Sticker>> getForumTopicIconStickers() async {
    final payload = Payload({});
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getForumTopicIconStickers.name,
      payload,
    );

    return response.map((json) => Sticker.fromJson(json)).toList();
  }

  /// Use this method to create a topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#createforumtopic
  Future<ForumTopic> createForumTopic(
    ID chatId,
    String name, {
    int? iconColor,
    String? iconCustomEmojiId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'name': name,
      'icon_color': ?iconColor,
      'icon_custom_emoji_id': ?iconCustomEmojiId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.createForumTopic.name,
      payload,
    );

    return ForumTopic.fromJson(response);
  }

  /// Use this method to edit name and icon of a topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#editforumtopic
  Future<bool> editForumTopic(
    ID chatId,
    int messageThreadId, {
    String? name,
    String? iconCustomEmojiId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_thread_id': messageThreadId,
      'name': ?name,
      'icon_custom_emoji_id': ?iconCustomEmojiId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.editForumTopic.name, payload);
  }

  /// Use this method to close an open topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#closeforumtopic
  Future<bool> closeForumTopic(ID chatId, int messageThreadId) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_thread_id': messageThreadId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.closeForumTopic.name, payload);
  }

  /// Use this method to reopen a closed topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#reopenforumtopic
  Future<bool> reopenForumTopic(ID chatId, int messageThreadId) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_thread_id': messageThreadId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.reopenForumTopic.name, payload);
  }

  /// Use this method to delete a forum topic along with all its messages.
  ///
  /// See: https://core.telegram.org/bots/api#deleteforumtopic
  Future<bool> deleteForumTopic(ID chatId, int messageThreadId) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_thread_id': messageThreadId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteForumTopic.name, payload);
  }

  /// Use this method to clear the list of pinned messages in a forum topic.
  ///
  /// See: https://core.telegram.org/bots/api#unpinallforumtopicmessages
  Future<bool> unpinAllForumTopicMessages(
    ID chatId,
    int messageThreadId,
  ) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_thread_id': messageThreadId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.unpinAllForumTopicMessages.name,
      payload,
    );
  }

  /// Use this method to edit the name of the 'General' topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#editgeneralforumtopic
  Future<bool> editGeneralForumTopic(ID chatId, String name) async {
    final params = <String, dynamic>{'chat_id': chatId, 'name': name};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.editGeneralForumTopic.name,
      payload,
    );
  }

  /// Use this method to close an open 'General' topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#closegeneralforumtopic
  Future<bool> closeGeneralForumTopic(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.closeGeneralForumTopic.name,
      payload,
    );
  }

  /// Use this method to reopen a closed 'General' topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#reopengeneralforumtopic
  Future<bool> reopenGeneralForumTopic(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.reopenGeneralForumTopic.name,
      payload,
    );
  }

  /// Use this method to hide the 'General' topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#hidegeneralforumtopic
  Future<bool> hideGeneralForumTopic(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.hideGeneralForumTopic.name,
      payload,
    );
  }

  /// Use this method to unhide the 'General' topic in a forum supergroup chat.
  ///
  /// See: https://core.telegram.org/bots/api#unhidegeneralforumtopic
  Future<bool> unhideGeneralForumTopic(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.unhideGeneralForumTopic.name,
      payload,
    );
  }

  /// Use this method to send answers to callback queries sent from inline
  /// keyboards. The answer will be displayed to the user as a notification at
  /// the top of the chat screen or as an alert. On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#answercallbackquery
  Future<bool> answerCallbackQuery(
    String callbackQueryId, {
    String? text,
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    final params = <String, dynamic>{
      'callback_query_id': callbackQueryId,
      'text': ?text,
      'show_alert': showAlert,
      'url': ?url,
      'cache_time': cacheTime,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.answerCallbackQuery.name,
      payload,
    );
  }

  /// Use this method to change the list of the bot's commands. See this manual
  /// for more details about bot commands. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setmycommands
  Future<bool> setMyCommands(
    List<BotCommand> commands, {
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    final params = <String, dynamic>{
      'commands': commands,
      'scope': ?scope,
      'language_code': ?languageCode,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setMyCommands.name, payload);
  }

  /// Use this method to delete the list of the bot's commands for the given
  /// scope and user language. After deletion, higher level commands will be
  /// shown to affected users. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#deletemycommands
  Future<bool> deleteMyCommands({
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    final params = <String, dynamic>{
      'scope': ?scope,
      'language_code': ?languageCode,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteMyCommands.name, payload);
  }

  /// Use this method to get the current list of the bot's commands for the
  /// given scope and user language. Returns an Array of BotCommand objects. If
  /// commands aren't set, an empty list is returned.
  ///
  /// See: https://core.telegram.org/bots/api#getmycommands
  Future<List<BotCommand>> getMyCommands({
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    final params = <String, dynamic>{
      'scope': ?scope,
      'language_code': ?languageCode,
    };

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getMyCommands.name,
      payload,
    );

    return response.map((json) => BotCommand.fromJson(json)).toList();
  }

  /// Use this method to change the bot's name. Returns True on success.
  ///
  /// See https://core.telegram.org/bots/api#setmyname
  Future<bool> setMyName({String? name, String? languageCode}) async {
    final params = <String, dynamic>{
      'name': ?name,
      'language_code': ?languageCode,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setMyName.name, payload);
  }

  /// Use this method to get the current bot name for the given user language.
  /// Returns [BotName] on success.
  ///
  /// See https://core.telegram.org/bots/api#getmyname
  Future<BotName> getMyName({String? languageCode}) async {
    final params = <String, dynamic>{'language_code': ?languageCode};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getMyName.name,
      payload,
    );

    return BotName.fromJson(response);
  }

  /// Use this method to change the bot's description, which is shown in the
  /// chat with the bot if the chat is empty. Returns True on success.
  ///
  /// See https://core.telegram.org/bots/api#setmydescription
  Future<bool> setMyDescription({
    String? description,
    String? languageCode,
  }) async {
    final params = <String, dynamic>{
      'description': ?description,
      'language_code': ?languageCode,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setMyDescription.name, payload);
  }

  /// Use this method to get the current bot description for the given user
  /// language. Returns [BotDescription] on success.
  ///
  /// See https://core.telegram.org/bots/api#getmydescription
  Future<BotDescription> getMyDescription({String? languageCode}) async {
    final params = <String, dynamic>{'language_code': ?languageCode};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getMyDescription.name,
      payload,
    );

    return BotDescription.fromJson(response);
  }

  /// Use this method to change the bot's short description, which is shown on
  /// the bot's profile page and is sent together with the link when users share
  /// the bot. Returns True on success.
  ///
  /// See https://core.telegram.org/bots/api#setmyshortdescription
  Future<bool> setMyShortDescription({
    String? shortDescription,
    String? languageCode,
  }) async {
    final params = <String, dynamic>{
      'short_description': ?shortDescription,
      'language_code': ?languageCode,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setMyShortDescription.name,
      payload,
    );
  }

  /// Use this method to get the current bot short description for the given
  /// user language. Returns [BotShortDescription] on success.
  ///
  /// See https://core.telegram.org/bots/api#getmyshortdescription
  Future<BotShortDescription> getMyShortDescription({
    String? languageCode,
  }) async {
    final params = <String, dynamic>{'language_code': ?languageCode};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getMyShortDescription.name,
      payload,
    );

    return BotShortDescription.fromJson(response);
  }

  /// Use this method to change the bot's menu button in a private chat, or the
  /// default menu button. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setchatmenubutton
  Future<bool> setChatMenuButton(MenuButton menuButton, {ID? chatId}) async {
    final params = <String, dynamic>{
      'menu_button': menuButton.toJson(),
      'chat_id': ?chatId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setChatMenuButton.name, payload);
  }

  /// Use this method to get the current value of the bot's menu button in a
  /// private chat, or the default menu button. Returns MenuButton on success.
  ///
  /// See: https://core.telegram.org/bots/api#getchatmenubutton
  Future<MenuButton> getChatMenuButton(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getChatMenuButton.name,
      payload,
    );

    return MenuButton.fromJson(response);
  }

  /// Use this method to change the default administrator rights requested by
  /// the bot when it's added as an administrator to groups or channels. These
  /// rights will be suggested to users, but they are free to modify the
  /// list before adding the bot. Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#setmydefaultadministratorrights
  Future<bool> setMyDefaultAdministratorRights({
    ChatAdministratorRights? rights,
    bool? forChannels,
  }) async {
    final params = <String, dynamic>{
      'rights': ?rights,
      'for_channels': ?forChannels,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setMyDefaultAdministratorRights.name,
      payload,
    );
  }

  /// Use this method to get the current default administrator rights of the
  /// bot. Returns ChatAdministratorRights on success.
  ///
  /// See: https://core.telegram.org/bots/api#getmydefaultadministratorrights
  Future<ChatAdministratorRights> getMyDefaultAdministratorRights({
    bool? forChannels,
  }) async {
    final params = <String, dynamic>{'for_channels': ?forChannels};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getMyDefaultAdministratorRights.name,
      payload,
    );

    return ChatAdministratorRights.fromJson(response);
  }

  /// Private method to handle both regular and inline message text editing.
  Future<T> _editMessageText<T>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    required String text,
    String? businessConnectionId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
      'text': text,
      'business_connection_id': ?businessConnectionId,
      'parse_mode': ?parseMode,
      'entities': ?entities,
      'link_preview_options': ?linkPreviewOptions,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<dynamic>(
      APIMethod.editMessageText.name,
      payload,
    );

    if (T == Message) {
      return Message.fromJson(response as Map<String, dynamic>) as T;
    } else {
      return response as T;
    }
  }

  /// Edits text of a message.
  ///
  /// Use this method to edit text and game messages. On success, the edited
  /// [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagetext
  Future<Message> editMessageText(
    ID chatId,
    int messageId,
    String text, {
    String? businessConnectionId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageText<Message>(
      chatId: chatId,
      messageId: messageId,
      text: text,
      businessConnectionId: businessConnectionId,
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits text of an inline message.
  ///
  /// Use this method to edit text and game messages sent via inline mode.
  /// On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagetext
  Future<bool> editInlineMessageText(
    String inlineMessageId,
    String text, {
    String? businessConnectionId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageText<bool>(
      inlineMessageId: inlineMessageId,
      text: text,
      businessConnectionId: businessConnectionId,
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      replyMarkup: replyMarkup,
    );
  }

  /// Private method to handle both regular and inline message caption editing.
  Future<T> _editMessageCaption<T>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    String? businessConnectionId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
      'business_connection_id': ?businessConnectionId,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'show_caption_above_media': ?showCaptionAboveMedia,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<dynamic>(
      APIMethod.editMessageCaption.name,
      payload,
    );

    if (T == Message) {
      return Message.fromJson(response as Map<String, dynamic>) as T;
    } else {
      return response as T;
    }
  }

  /// Edits caption of a message.
  ///
  /// Use this method to edit captions of messages. On success, the edited
  /// [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagecaption
  Future<Message> editMessageCaption(
    ID chatId,
    int messageId, {
    String? businessConnectionId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageCaption<Message>(
      chatId: chatId,
      messageId: messageId,
      businessConnectionId: businessConnectionId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      showCaptionAboveMedia: showCaptionAboveMedia,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits caption of an inline message.
  ///
  /// Use this method to edit captions of messages sent via inline mode.
  /// On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagecaption
  Future<bool> editInlineMessageCaption(
    String inlineMessageId, {
    String? businessConnectionId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageCaption<bool>(
      inlineMessageId: inlineMessageId,
      businessConnectionId: businessConnectionId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      showCaptionAboveMedia: showCaptionAboveMedia,
      replyMarkup: replyMarkup,
    );
  }

  /// Private method to handle both regular and inline message media editing.
  Future<T> _editMessageMedia<T>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    required InputMedia media,
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
      'media': media,
      'business_connection_id': ?businessConnectionId,
      'reply_markup': ?replyMarkup,
    };
    final files = _prepareFiles(media.getInputFiles());
    final payload = Payload(params, files);

    final response = await _makeRequest<dynamic>(
      APIMethod.editMessageMedia.name,
      payload,
    );

    if (T == Message) {
      return Message.fromJson(response as Map<String, dynamic>) as T;
    } else {
      return response as T;
    }
  }

  /// Edits media of a message.
  ///
  /// Use this method to edit animation, audio, document, photo, or video messages,
  /// or to add media to text messages. On success, the edited [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagemedia
  Future<Message> editMessageMedia(
    ID chatId,
    int messageId,
    InputMedia media, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageMedia<Message>(
      chatId: chatId,
      messageId: messageId,
      media: media,
      businessConnectionId: businessConnectionId,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits media of an inline message.
  ///
  /// Use this method to edit animation, audio, document, photo, or video messages
  /// sent via inline mode. On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagemedia
  Future<bool> editInlineMessageMedia(
    String inlineMessageId,
    InputMedia media, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageMedia<bool>(
      inlineMessageId: inlineMessageId,
      media: media,
      businessConnectionId: businessConnectionId,
      replyMarkup: replyMarkup,
    );
  }

  /// Private method to handle both regular and inline message live location editing.
  Future<T> _editMessageLiveLocation<T>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    required double latitude,
    required double longitude,
    String? businessConnectionId,
    int? livePeriod,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
      'latitude': latitude,
      'longitude': longitude,
      'business_connection_id': ?businessConnectionId,
      'live_period': ?livePeriod,
      'horizontal_accuracy': ?horizontalAccuracy,
      'heading': ?heading,
      'proximity_alert_radius': ?proximityAlertRadius,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<dynamic>(
      APIMethod.editMessageLiveLocation.name,
      payload,
    );

    if (T == Message) {
      return Message.fromJson(response as Map<String, dynamic>) as T;
    } else {
      return response as T;
    }
  }

  /// Edits live location of a message.
  ///
  /// Use this method to edit live location messages. On success, the edited
  /// [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagelivelocation
  Future<Message> editMessageLiveLocation(
    ID chatId,
    int messageId,
    double latitude,
    double longitude, {
    String? businessConnectionId,
    int? livePeriod,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageLiveLocation<Message>(
      chatId: chatId,
      messageId: messageId,
      latitude: latitude,
      longitude: longitude,
      businessConnectionId: businessConnectionId,
      livePeriod: livePeriod,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits live location of an inline message.
  ///
  /// Use this method to edit live location messages sent via inline mode.
  /// On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagelivelocation
  Future<bool> editInlineMessageLiveLocation(
    String inlineMessageId,
    double latitude,
    double longitude, {
    String? businessConnectionId,
    int? livePeriod,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageLiveLocation<bool>(
      inlineMessageId: inlineMessageId,
      latitude: latitude,
      longitude: longitude,
      businessConnectionId: businessConnectionId,
      livePeriod: livePeriod,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
    );
  }

  /// Private method to handle both regular and inline message live location stopping.
  Future<T> _stopMessageLiveLocation<T>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
      'business_connection_id': ?businessConnectionId,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<dynamic>(
      APIMethod.stopMessageLiveLocation.name,
      payload,
    );

    if (T == Message) {
      return Message.fromJson(response as Map<String, dynamic>) as T;
    } else {
      return response as T;
    }
  }

  /// Stops updating a live location message.
  ///
  /// Use this method to stop updating a live location message before live_period
  /// expires. On success, the edited [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#stopmessagelivelocation
  Future<Message> stopMessageLiveLocation(
    ID chatId,
    int messageId, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _stopMessageLiveLocation<Message>(
      chatId: chatId,
      messageId: messageId,
      businessConnectionId: businessConnectionId,
      replyMarkup: replyMarkup,
    );
  }

  /// Stops updating a live location inline message.
  ///
  /// Use this method to stop updating a live location message sent via inline mode
  /// before live_period expires. On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#stopmessagelivelocation
  Future<bool> stopInlineMessageLiveLocation(
    String inlineMessageId, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _stopMessageLiveLocation<bool>(
      inlineMessageId: inlineMessageId,
      businessConnectionId: businessConnectionId,
      replyMarkup: replyMarkup,
    );
  }

  /// Private method to handle both regular and inline message reply markup editing.
  Future<T> _editMessageReplyMarkup<T>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
      'business_connection_id': ?businessConnectionId,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<dynamic>(
      APIMethod.editMessageReplyMarkup.name,
      payload,
    );

    if (T == Message) {
      return Message.fromJson(response as Map<String, dynamic>) as T;
    } else {
      return response as T;
    }
  }

  /// Edits reply markup of a message.
  ///
  /// Use this method to edit only the reply markup of messages. On success,
  /// the edited [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagereplymarkup
  Future<Message> editMessageReplyMarkup(
    ID chatId,
    int messageId, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageReplyMarkup<Message>(
      chatId: chatId,
      messageId: messageId,
      businessConnectionId: businessConnectionId,
      replyMarkup: replyMarkup,
    );
  }

  /// Edits reply markup of an inline message.
  ///
  /// Use this method to edit only the reply markup of messages sent via inline mode.
  /// On success, True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagereplymarkup
  Future<bool> editInlineMessageReplyMarkup(
    String inlineMessageId, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    return await _editMessageReplyMarkup<bool>(
      inlineMessageId: inlineMessageId,
      businessConnectionId: businessConnectionId,
      replyMarkup: replyMarkup,
    );
  }

  /// Stops a poll which was sent by the bot.
  ///
  /// On success, the stopped [Poll] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#stoppoll
  Future<Poll> stopPoll(
    ID chatId,
    int messageId, {
    String? businessConnectionId,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'business_connection_id': ?businessConnectionId,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.stopPoll.name,
      payload,
    );

    return Poll.fromJson(response);
  }

  /// Deletes a message, including service messages.
  ///
  /// Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#deletemessage
  Future<bool> deleteMessage(ID chatId, int messageId) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteMessage.name, payload);
  }

  /// Sends static .WEBP, animated .TGS, or video .WEBM stickers.
  ///
  /// On success, the sent [Message] is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendsticker
  Future<Message> sendSticker(
    ID chatId,
    InputFile sticker, {
    String? businessConnectionId,
    int? messageThreadId,
    String? emoji,
    bool? disableNotification,
    bool? protectContent,
    bool? allowPaidBroadcast,
    String? messageEffectId,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'sticker': sticker,
      'business_connection_id': ?businessConnectionId,
      'message_thread_id': ?messageThreadId,
      'emoji': ?emoji,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'message_effect_id': ?messageEffectId,
      'reply_parameters': ?replyParameters,
      'reply_markup': ?replyMarkup,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles([sticker]);
    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendSticker.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Gets a sticker set.
  ///
  /// On success, a [StickerSet] object is returned.
  ///
  /// See: https://core.telegram.org/bots/api#getstickerset
  Future<StickerSet> getStickerSet(String name) async {
    final params = <String, dynamic>{'name': name};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getStickerSet.name,
      payload,
    );

    return StickerSet.fromJson(response);
  }

  /// Gets information about custom emoji stickers by their identifiers.
  ///
  /// Returns an Array of [Sticker] objects.
  ///
  /// See: https://core.telegram.org/bots/api#getcustomemojistickers
  Future<List<Sticker>> getCustomEmojiStickers(
    List<String> customEmojiIds,
  ) async {
    final params = <String, dynamic>{'custom_emoji_ids': customEmojiIds};

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getCustomEmojiStickers.name,
      payload,
    );

    return response.map((json) => Sticker.fromJson(json)).toList();
  }

  /// Uploads a file with a sticker for later use in sticker set methods.
  ///
  /// Returns the uploaded [File] on success.
  ///
  /// See: https://core.telegram.org/bots/api#uploadstickerfile
  Future<File> uploadStickerFile(
    int userId,
    InputFile sticker,
    String stickerFormat,
  ) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'sticker': sticker,
      'sticker_format': stickerFormat,
    };

    final files = _prepareFiles([sticker]);
    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.uploadStickerFile.name,
      payload,
    );

    return File.fromJson(response);
  }

  /// Creates a new sticker set owned by a user.
  ///
  /// Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#createnewstickerset
  Future<bool> createNewStickerSet(
    int userId,
    String name,
    String title,
    List<InputSticker> stickers, {
    String? stickerType,
    bool? needsRepainting,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'name': name,
      'title': title,
      'stickers': stickers,
      'sticker_type': ?stickerType,
      'needs_repainting': ?needsRepainting,
    };

    final files = _prepareFiles(stickers.map((e) => e.sticker));

    final payload = Payload(params, files);
    return await _makeRequest<bool>(
      APIMethod.createNewStickerSet.name,
      payload,
    );
  }

  /// Adds a new sticker to a set created by the bot.
  ///
  /// Returns True on success.
  ///
  /// See: https://core.telegram.org/bots/api#addstickertoset
  Future<bool> addStickerToSet(
    int userId,
    String name,
    InputSticker sticker,
  ) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'name': name,
      'sticker': sticker.toJson(),
    };

    final files = _prepareFiles([sticker.sticker]);
    final payload = Payload(params, files);
    return await _makeRequest<bool>(APIMethod.addStickerToSet.name, payload);
  }

  /// Moves a sticker in a set created by the bot to a specific position.
  ///
  /// See: https://core.telegram.org/bots/api#setstickerpositioninset
  ///
  /// Returns True on success.
  Future<bool> setStickerPositionInSet(String sticker, int position) async {
    final params = <String, dynamic>{'sticker': sticker, 'position': position};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setStickerPositionInSet.name,
      payload,
    );
  }

  /// Deletes a sticker from a set created by the bot.
  ///
  /// See: https://core.telegram.org/bots/api#deletestickerfromset
  ///
  /// Returns True on success.
  Future<bool> deleteStickerFromSet(String sticker) async {
    final params = <String, dynamic>{'sticker': sticker};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.deleteStickerFromSet.name,
      payload,
    );
  }

  /// Changes the list of emoji assigned to a regular or custom emoji sticker.
  ///
  /// See: https://core.telegram.org/bots/api#setstickeremojilist
  ///
  /// Returns True on success.
  Future<bool> setStickerEmojiList(
    String sticker,
    List<String> emojiList,
  ) async {
    final params = <String, dynamic>{
      'sticker': sticker,
      'emoji_list': emojiList,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setStickerEmojiList.name,
      payload,
    );
  }

  /// Changes search keywords assigned to a regular or custom emoji sticker.
  ///
  /// See: https://core.telegram.org/bots/api#setstickerkeywords
  ///
  /// Returns True on success.
  Future<bool> setStickerKeywords(
    String sticker, {
    List<String>? keywords,
  }) async {
    final params = <String, dynamic>{'sticker': sticker, 'keywords': ?keywords};

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setStickerKeywords.name, payload);
  }

  /// Changes the mask position of a mask sticker.
  ///
  /// See: https://core.telegram.org/bots/api#setstickermaskposition
  ///
  /// Returns True on success.
  Future<bool> setStickerMaskPosition(
    String sticker, {
    MaskPosition? maskPosition,
  }) async {
    final params = <String, dynamic>{
      'sticker': sticker,
      'mask_position': ?maskPosition,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setStickerMaskPosition.name,
      payload,
    );
  }

  /// Sets the title of a created sticker set.
  ///
  /// See: https://core.telegram.org/bots/api#setstickersettitle
  ///
  /// Returns True on success.
  Future<bool> setStickerSetTitle(String name, String title) async {
    final params = <String, dynamic>{'name': name, 'title': title};

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setStickerSetTitle.name, payload);
  }

  /// Sets the thumbnail of a regular or mask sticker set.
  ///
  /// See: https://core.telegram.org/bots/api#setstickersetthumbnail
  ///
  /// Returns True on success.
  Future<bool> setStickerSetThumbnail(
    String name,
    int userId,
    String format, {
    InputFile? thumbnail,
  }) async {
    final params = <String, dynamic>{
      'name': name,
      'user_id': userId,
      'format': format,
      'thumbnail': ?thumbnail,
    };

    final files = _prepareFiles([thumbnail]);
    final payload = Payload(params, files);
    return await _makeRequest<bool>(
      APIMethod.setStickerSetThumbnail.name,
      payload,
    );
  }

  /// Sets the thumbnail of a custom emoji sticker set.
  ///
  /// See: https://core.telegram.org/bots/api#setcustomemojistickersetthumbnail
  ///
  /// Returns True on success.
  Future<bool> setCustomEmojiStickerSetThumbnail(
    String name, {
    String? customEmojiId,
  }) async {
    final params = <String, dynamic>{
      'name': name,
      'custom_emoji_id': ?customEmojiId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setCustomEmojiStickerSetThumbnail.name,
      payload,
    );
  }

  /// Deletes a sticker set that was created by the bot.
  ///
  /// See: https://core.telegram.org/bots/api#deletestickerset
  ///
  /// Returns True on success.
  Future<bool> deleteStickerSet(String name) async {
    final params = <String, dynamic>{'name': name};

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteStickerSet.name, payload);
  }

  /// Sends answers to an inline query.
  ///
  /// See https://core.telegram.org/bots/api#answerinlinequery
  Future<bool> answerInlineQuery(
    String inlineQueryId,
    List<InlineQueryResult> results, {
    int? cacheTime,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) async {
    final params = <String, dynamic>{
      'inline_query_id': inlineQueryId,
      'results': results,
      'cache_time': ?cacheTime,
      'is_personal': ?isPersonal,
      'next_offset': ?nextOffset,
      'button': ?button,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.answerInlineQuery.name, payload);
  }

  /// Sets the result of an interaction with a Web App and sends a corresponding message.
  ///
  /// See https://core.telegram.org/bots/api#answerwebappquery
  Future<SentWebAppMessage> answerWebAppQuery(
    String webAppQueryId,
    InlineQueryResult result,
  ) async {
    final params = <String, dynamic>{
      'web_app_query_id': webAppQueryId,
      'result': result,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.answerWebAppQuery.name,
      payload,
    );

    return SentWebAppMessage.fromJson(response);
  }

  /// Sends an invoice.
  ///
  /// Use this method to send invoices. On success, the sent Message is returned.
  ///
  /// For more details, see: https://core.telegram.org/bots/api#sendinvoice
  Future<Message> sendInvoice(
    ID chatId,
    String title,
    String description,
    String payload,
    String currency,
    List<LabeledPrice> prices, {
    int? messageThreadId,
    String? providerToken,
    int? maxTipAmount,
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
    bool? allowPaidBroadcast,
    String? messageEffectId,
    ReplyParameters? replyParameters,
    InlineKeyboardMarkup? replyMarkup,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'title': title,
      'description': description,
      'payload': payload,
      'currency': currency,
      'prices': prices,
      'message_thread_id': ?messageThreadId,
      'provider_token': ?providerToken,
      'max_tip_amount': ?maxTipAmount,
      'suggested_tip_amounts': ?suggestedTipAmounts,
      'start_parameter': ?startParameter,
      'provider_data': ?providerData,
      'photo_url': ?photoUrl,
      'photo_size': ?photoSize,
      'photo_width': ?photoWidth,
      'photo_height': ?photoHeight,
      'need_name': ?needName,
      'need_phone_number': ?needPhoneNumber,
      'need_email': ?needEmail,
      'need_shipping_address': ?needShippingAddress,
      'send_phone_number_to_provider': ?sendPhoneNumberToProvider,
      'send_email_to_provider': ?sendEmailToProvider,
      'is_flexible': ?isFlexible,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'message_effect_id': ?messageEffectId,
      'reply_parameters': ?replyParameters,
      'reply_markup': ?replyMarkup,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendInvoice.name,
      Payload(params),
    );

    return Message.fromJson(response);
  }

  /// Creates a link for an invoice.
  ///
  /// Use this method to create a link for an invoice. Returns the created invoice link as String on success.
  ///
  /// For more details, see: https://core.telegram.org/bots/api#createinvoicelink
  Future<String> createInvoiceLink(
    String title,
    String description,
    String payload,
    String currency,
    List<LabeledPrice> prices, {
    String? businessConnectionId,
    String? providerToken,
    int? subscriptionPeriod,
    int? maxTipAmount,
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
    final params = <String, dynamic>{
      'title': title,
      'description': description,
      'payload': payload,
      'currency': currency,
      'prices': prices,
      'business_connection_id': ?businessConnectionId,
      'provider_token': ?providerToken,
      'subscription_period': ?subscriptionPeriod,
      'max_tip_amount': ?maxTipAmount,
      'suggested_tip_amounts': ?suggestedTipAmounts,
      'provider_data': ?providerData,
      'photo_url': ?photoUrl,
      'photo_size': ?photoSize,
      'photo_width': ?photoWidth,
      'photo_height': ?photoHeight,
      'need_name': ?needName,
      'need_phone_number': ?needPhoneNumber,
      'need_email': ?needEmail,
      'need_shipping_address': ?needShippingAddress,
      'send_phone_number_to_provider': ?sendPhoneNumberToProvider,
      'send_email_to_provider': ?sendEmailToProvider,
      'is_flexible': ?isFlexible,
    };

    return await _makeRequest<String>(
      APIMethod.createInvoiceLink.name,
      Payload(params),
    );
  }

  /// Responds to shipping queries.
  ///
  /// See: https://core.telegram.org/bots/api#answershippingquery
  Future<bool> answerShippingQuery(
    String shippingQueryId,
    bool ok, {
    List<ShippingOption>? shippingOptions,
    String? errorMessage,
  }) async {
    final params = <String, dynamic>{
      'shipping_query_id': shippingQueryId,
      'ok': ok,
      'shipping_options': ?shippingOptions,
      'error_message': ?errorMessage,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.answerShippingQuery.name,
      payload,
    );
  }

  /// Responds to pre-checkout queries.
  ///
  /// See: https://core.telegram.org/bots/api#answerprecheckoutquery
  Future<bool> answerPreCheckoutQuery(
    String preCheckoutQueryId,
    bool ok, {
    String? errorMessage,
  }) async {
    final params = <String, dynamic>{
      'pre_checkout_query_id': preCheckoutQueryId,
      'ok': ok,
      'error_message': ?errorMessage,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.answerPreCheckoutQuery.name,
      payload,
    );
  }

  /// Informs a user that some Telegram Passport elements contain errors.
  ///
  /// See: https://core.telegram.org/bots/api#setpassportdataerrors
  Future<bool> setPassportDataErrors(
    int userId,
    List<PassportElementError> errors,
  ) async {
    final params = <String, dynamic>{'user_id': userId, 'errors': errors};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setPassportDataErrors.name,
      payload,
    );
  }

  /// Sends a game.
  ///
  /// Use this method to send a game. On success, the sent Message is returned.
  ///
  /// See: https://core.telegram.org/bots/api#sendgame
  Future<Message> sendGame(
    ID chatId,
    String gameShortName, {
    String? businessConnectionId,
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    bool? allowPaidBroadcast,
    String? messageEffectId,
    ReplyParameters? replyParameters,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'game_short_name': gameShortName,
      'business_connection_id': ?businessConnectionId,
      'message_thread_id': ?messageThreadId,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'message_effect_id': ?messageEffectId,
      'reply_parameters': ?replyParameters,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendGame.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Sets the score of the specified user in a game message.
  ///
  /// Use this method to set the score of the specified user in a game message.
  /// On success, if the message is not an inline message, the Message is returned,
  /// otherwise True is returned.
  ///
  /// See: https://core.telegram.org/bots/api#setgamescore
  Future<dynamic> setGameScore(
    int userId,
    int score, {
    bool? force,
    bool? disableEditMessage,
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'score': score,
      'force': ?force,
      'disable_edit_message': ?disableEditMessage,
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<dynamic>(
      APIMethod.setGameScore.name,
      payload,
    );

    // Response can be either Message or bool
    if (response is Map<String, dynamic>) {
      return Message.fromJson(response);
    }
    return response as bool;
  }

  /// Gets data for high score tables.
  ///
  /// Use this method to get data for high score tables. Will return the score of
  /// the specified user and several of their neighbors in a game. Returns an Array
  /// of GameHighScore objects.
  ///
  /// See: https://core.telegram.org/bots/api#getgamehighscores
  Future<List<GameHighScore>> getGameHighScores(
    int userId, {
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'chat_id': ?chatId,
      'message_id': ?messageId,
      'inline_message_id': ?inlineMessageId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getGameHighScores.name,
      payload,
    );

    return response.map((json) => GameHighScore.fromJson(json)).toList();
  }

  /// Sets reactions on a message.
  ///
  /// See: https://core.telegram.org/bots/api#setmessagereaction
  Future<bool> setMessageReaction(
    ID chatId,
    int messageId, {
    List<ReactionType>? reaction,
    bool? isBig,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'reaction': ?reaction,
      'is_big': ?isBig,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setMessageReaction.name, payload);
  }

  /// Deletes multiple messages simultaneously.
  ///
  /// See: https://core.telegram.org/bots/api#deletemessages
  Future<bool> deleteMessages(ID chatId, List<int> messageIds) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_ids': messageIds,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteMessages.name, payload);
  }

  /// Forwards multiple messages of any kind.
  ///
  /// See: https://core.telegram.org/bots/api#forwardmessages
  Future<List<MessageId>> forwardMessages(
    ID chatId,
    ID fromChatId,
    List<int> messageIds, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    int? directMessagesTopicId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'from_chat_id': fromChatId,
      'message_ids': messageIds,
      'message_thread_id': ?messageThreadId,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'direct_messages_topic_id': ?directMessagesTopicId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.forwardMessages.name,
      payload,
    );

    return response.map((json) => MessageId.fromJson(json)).toList();
  }

  /// Copies messages of any kind.
  ///
  /// See: https://core.telegram.org/bots/api#copymessages
  Future<List<MessageId>> copyMessages(
    ID chatId,
    ID fromChatId,
    List<int> messageIds, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    bool? removeCaption,
    int? directMessagesTopicId,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'from_chat_id': fromChatId,
      'message_ids': messageIds,
      'message_thread_id': ?messageThreadId,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'remove_caption': ?removeCaption,
      'direct_messages_topic_id': ?directMessagesTopicId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.copyMessages.name,
      payload,
    );

    return response.map((json) => MessageId.fromJson(json)).toList();
  }

  /// Gets the list of boosts added to a chat by a user.
  ///
  /// See: https://core.telegram.org/bots/api#getuserchatboosts
  Future<UserChatBoosts> getUserChatBoosts(ID chatId, int userId) async {
    final params = <String, dynamic>{'chat_id': chatId, 'user_id': userId};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getUserChatBoosts.name,
      payload,
    );

    return UserChatBoosts.fromJson(response);
  }

  /// Clears the list of pinned messages in a General forum topic.
  ///
  /// See: https://core.telegram.org/bots/api#unpinallgeneralforumtopicmessages
  Future<bool> unpinAllGeneralForumTopicMessages(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.unpinAllGeneralForumTopicMessages.name,
      payload,
    );
  }

  /// Gets information about the connection of the bot with a business account.
  ///
  /// See: https://core.telegram.org/bots/api#getbusinessconnection
  Future<BusinessConnection> getBusinessConnection(
    String businessConnectionId,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getBusinessConnection.name,
      payload,
    );

    return BusinessConnection.fromJson(response);
  }

  /// Replaces an existing sticker in a sticker set with a new one.
  ///
  /// See: https://core.telegram.org/bots/api#replacestickerinset
  Future<bool> replaceStickerInSet(
    int userId,
    String name,
    String oldSticker,
    InputSticker sticker,
  ) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'name': name,
      'old_sticker': oldSticker,
      'sticker': sticker,
    };

    final files = _prepareFiles([sticker.sticker]);
    final payload = Payload(params, files);
    return await _makeRequest<bool>(
      APIMethod.replaceStickerInSet.name,
      payload,
    );
  }

  /// Refunds a successful payment in Telegram Stars.
  ///
  /// See: https://core.telegram.org/bots/api#refundstarpayment
  Future<bool> refundStarPayment(
    int userId,
    String telegramPaymentChargeId,
  ) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'telegram_payment_charge_id': telegramPaymentChargeId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.refundStarPayment.name, payload);
  }

  /// Returns the bot's Telegram Star transactions in chronological order.
  ///
  /// See: https://core.telegram.org/bots/api#getstartransactions
  Future<StarTransactions> getStarTransactions({
    int? offset,
    int? limit,
  }) async {
    final params = <String, dynamic>{'offset': ?offset, 'limit': ?limit};

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getStarTransactions.name,
      payload,
    );

    return StarTransactions.fromJson(response);
  }

  /// Sends paid media.
  ///
  /// See: https://core.telegram.org/bots/api#sendpaidmedia
  Future<Message> sendPaidMedia(
    ID chatId,
    int starCount,
    List<InputPaidMedia> media, {
    String? businessConnectionId,
    String? payload,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    bool? disableNotification,
    bool? protectContent,
    bool? allowPaidBroadcast,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    int? directMessagesTopicId,
    SuggestedPostParameters? suggestedPostParameters,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'star_count': starCount,
      'media': media,
      'business_connection_id': ?businessConnectionId,
      'payload': ?payload,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'show_caption_above_media': ?showCaptionAboveMedia,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'allow_paid_broadcast': ?allowPaidBroadcast,
      'reply_parameters': ?replyParameters,
      'reply_markup': ?replyMarkup,
      'direct_messages_topic_id': ?directMessagesTopicId,
      'suggested_post_parameters': ?suggestedPostParameters,
    };

    final files = _prepareFiles(media.expand((e) => e.getInputFiles()));

    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendPaidMedia.name,
      Payload(params, files),
    );

    return Message.fromJson(response);
  }

  /// Creates a subscription invite link for a channel chat.
  ///
  /// See https://core.telegram.org/bots/api#createchatsubscriptioninvitelink
  Future<ChatInviteLink> createChatSubscriptionInviteLink(
    ID chatId,
    int subscriptionPeriod,
    int subscriptionPrice, {
    String? name,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'subscription_period': subscriptionPeriod,
      'subscription_price': subscriptionPrice,
      'name': ?name,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.createChatSubscriptionInviteLink.name,
      payload,
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Edits a subscription invite link created by the bot.
  ///
  /// See https://core.telegram.org/bots/api#editchatsubscriptioninvitelink
  Future<ChatInviteLink> editChatSubscriptionInviteLink(
    ID chatId,
    String inviteLink, {
    String? name,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'invite_link': inviteLink,
      'name': ?name,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.editChatSubscriptionInviteLink.name,
      payload,
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Allows the bot to cancel or re-enable extension of a subscription paid in Telegram Stars.
  ///
  /// See https://core.telegram.org/bots/api#edituserstarsubscription
  Future<bool> editUserStarSubscription(
    int userId,
    String telegramPaymentChargeId,
    bool isCanceled,
  ) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'telegram_payment_charge_id': telegramPaymentChargeId,
      'is_canceled': isCanceled,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.editUserStarSubscription.name,
      payload,
    );
  }

  /// Changes the emoji status for a given user.
  ///
  /// See https://core.telegram.org/bots/api#setuseremojistatus
  Future<bool> setUserEmojiStatus(
    int userId, {
    String? emojiStatusCustomEmojiId,
    int? emojiStatusExpirationDate,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'emoji_status_custom_emoji_id': ?emojiStatusCustomEmojiId,
      'emoji_status_expiration_date': ?emojiStatusExpirationDate,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.setUserEmojiStatus.name, payload);
  }

  /// Stores a message that can be sent by a user of a Mini App.
  ///
  /// See https://core.telegram.org/bots/api#savepreparedinlinemessage
  Future<PreparedInlineMessage> savePreparedInlineMessage(
    int userId,
    InlineQueryResult result, {
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'result': result,
      'allow_user_chats': ?allowUserChats,
      'allow_bot_chats': ?allowBotChats,
      'allow_group_chats': ?allowGroupChats,
      'allow_channel_chats': ?allowChannelChats,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.savePreparedInlineMessage.name,
      payload,
    );

    return PreparedInlineMessage.fromJson(response);
  }

  /// Returns the list of gifts that can be sent by the bot to users and channel chats.
  ///
  /// See https://core.telegram.org/bots/api#getavailablegifts
  Future<Gifts> getAvailableGifts() async {
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getAvailableGifts.name,
    );

    return Gifts.fromJson(response);
  }

  /// Sends a gift to the given user or channel chat.
  ///
  /// See https://core.telegram.org/bots/api#sendgift
  Future<bool> sendGift(
    String giftId, {
    int? userId,
    ID? chatId,
    bool? payForUpgrade,
    String? text,
    ParseMode? textParseMode,
    List<MessageEntity>? textEntities,
  }) async {
    if (userId == null && chatId == null) {
      throw TeleverseException(
        'Either userId or chatId must be specified',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = <String, dynamic>{
      'gift_id': giftId,
      'user_id': ?userId,
      'chat_id': ?chatId,
      'pay_for_upgrade': ?payForUpgrade,
      'text': ?text,
      'text_parse_mode': ?textParseMode,
      'text_entities': ?textEntities,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.sendGift.name, payload);
  }

  /// Verifies a user on behalf of the organization which is represented by the bot.
  ///
  /// See https://core.telegram.org/bots/api#verifyuser
  Future<bool> verifyUser(int userId, {String? customDescription}) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'custom_description': ?customDescription,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.verifyUser.name, payload);
  }

  /// Verifies a chat on behalf of the organization which is represented by the bot.
  ///
  /// See https://core.telegram.org/bots/api#verifychat
  Future<bool> verifyChat(ID chatId, {String? customDescription}) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'custom_description': ?customDescription,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.verifyChat.name, payload);
  }

  /// Removes verification from a user who is currently verified on behalf of the organization represented by the bot.
  ///
  /// See https://core.telegram.org/bots/api#removeuserverification
  Future<bool> removeUserVerification(int userId) async {
    final params = <String, dynamic>{'user_id': userId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.removeUserVerification.name,
      payload,
    );
  }

  /// Removes verification from a chat that is currently verified on behalf of the organization represented by the bot.
  ///
  /// See https://core.telegram.org/bots/api#removechatverification
  Future<bool> removeChatVerification(ID chatId) async {
    final params = <String, dynamic>{'chat_id': chatId};

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.removeChatVerification.name,
      payload,
    );
  }

  /// Marks incoming message as read on behalf of a business account.
  ///
  /// See: https://core.telegram.org/bots/api#readbusinessmessage
  Future<bool> readBusinessMessage(
    String businessConnectionId,
    ID chatId,
    int messageId,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'chat_id': chatId,
      'message_id': messageId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.readBusinessMessage.name,
      payload,
    );
  }

  /// Delete messages on behalf of a business account.
  ///
  /// See: https://core.telegram.org/bots/api#deletebusinessmessages
  Future<bool> deleteBusinessMessages(
    String businessConnectionId,
    List<int> messageIds,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'message_ids': messageIds,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.deleteBusinessMessages.name,
      payload,
    );
  }

  /// Changes the first and last name of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#setbusinessaccountname
  Future<bool> setBusinessAccountName(
    String businessConnectionId,
    String firstName, {
    String? lastName,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'first_name': firstName,
      'last_name': ?lastName,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setBusinessAccountName.name,
      payload,
    );
  }

  /// Changes the username of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#setbusinessaccountusername
  Future<bool> setBusinessAccountUsername(
    String businessConnectionId, {
    String? username,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'username': ?username,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setBusinessAccountUsername.name,
      payload,
    );
  }

  /// Changes the bio of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#setbusinessaccountbio
  Future<bool> setBusinessAccountBio(
    String businessConnectionId, {
    String? bio,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'bio': ?bio,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setBusinessAccountBio.name,
      payload,
    );
  }

  /// Changes the profile photo of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#setbusinessaccountprofilephoto
  Future<bool> setBusinessAccountProfilePhoto(
    String businessConnectionId,
    InputProfilePhoto photo, {
    bool? isPublic,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'photo': photo,
      'is_public': ?isPublic,
    };

    final files = _prepareFiles([photo.file]);
    final payload = Payload(params, files);
    return await _makeRequest<bool>(
      APIMethod.setBusinessAccountProfilePhoto.name,
      payload,
    );
  }

  /// Removes the current profile photo of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#removebusinessaccountprofilephoto
  Future<bool> removeBusinessAccountProfilePhoto(
    String businessConnectionId, {
    bool? isPublic,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'is_public': ?isPublic,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.removeBusinessAccountProfilePhoto.name,
      payload,
    );
  }

  /// Changes the privacy settings pertaining to incoming gifts in a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#setbusinessaccountgiftsettings
  Future<bool> setBusinessAccountGiftSettings(
    String businessConnectionId,
    bool showGiftButton,
    AcceptedGiftTypes acceptedGiftTypes,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'show_gift_button': showGiftButton,
      'accepted_gift_types': acceptedGiftTypes,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.setBusinessAccountGiftSettings.name,
      payload,
    );
  }

  /// Returns the amount of Telegram Stars owned by a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#getbusinessaccountstarbalance
  Future<StarAmount> getBusinessAccountStarBalance(
    String businessConnectionId,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getBusinessAccountStarBalance.name,
      payload,
    );

    return StarAmount.fromJson(response);
  }

  /// Transfers Telegram Stars from the business account balance to the bot's balance.
  ///
  /// See: https://core.telegram.org/bots/api#transferbusinessaccountstars
  Future<bool> transferBusinessAccountStars(
    String businessConnectionId,
    int starCount,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'star_count': starCount,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.transferBusinessAccountStars.name,
      payload,
    );
  }

  /// Returns the gifts received and owned by a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#getbusinessaccountgifts
  Future<OwnedGifts> getBusinessAccountGifts(
    String businessConnectionId, {
    bool? excludeUnsaved,
    bool? excludeSaved,
    bool? excludeUnlimited,
    bool? excludeLimitedUpgradable,
    bool? excludeLimitedNonUpgradable,
    bool? excludeUnique,
    bool? excludeFromBlockchain,
    bool? sortByPrice,
    String? offset,
    int? limit,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'exclude_unsaved': ?excludeUnsaved,
      'exclude_saved': ?excludeSaved,
      'exclude_unlimited': ?excludeUnlimited,
      'exclude_limited_upgradable': ?excludeLimitedUpgradable,
      'exclude_limited_non_upgradable': ?excludeLimitedNonUpgradable,
      'exclude_unique': ?excludeUnique,
      'exclude_from_blockchain': ?excludeFromBlockchain,
      'sort_by_price': ?sortByPrice,
      'offset': ?offset,
      'limit': ?limit,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getBusinessAccountGifts.name,
      payload,
    );

    return OwnedGifts.fromJson(response);
  }

  /// Converts a given regular gift to Telegram Stars.
  ///
  /// See: https://core.telegram.org/bots/api#convertgifttostars
  Future<bool> convertGiftToStars(
    String businessConnectionId,
    String ownedGiftId,
  ) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'owned_gift_id': ownedGiftId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.convertGiftToStars.name, payload);
  }

  /// Upgrades a given regular gift to a unique gift.
  ///
  /// See: https://core.telegram.org/bots/api#upgradegift
  Future<bool> upgradeGift(
    String businessConnectionId,
    String ownedGiftId, {
    bool? keepOriginalDetails,
    int? starCount,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'owned_gift_id': ownedGiftId,
      'keep_original_details': ?keepOriginalDetails,
      'star_count': ?starCount,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.upgradeGift.name, payload);
  }

  /// Transfers an owned unique gift to another user.
  ///
  /// See: https://core.telegram.org/bots/api#transfergift
  Future<bool> transferGift(
    String businessConnectionId,
    String ownedGiftId,
    int newOwnerChatId, {
    int? starCount,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'owned_gift_id': ownedGiftId,
      'new_owner_chat_id': newOwnerChatId,
      'star_count': ?starCount,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.transferGift.name, payload);
  }

  /// Posts a story on behalf of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#poststory
  Future<Story> postStory(
    String businessConnectionId,
    InputStoryContent content,
    int activePeriod, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    List<StoryArea>? areas,
    bool? postToChatPage,
    bool? protectContent,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'content': content,
      'active_period': activePeriod,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'areas': ?areas,
      'post_to_chat_page': ?postToChatPage,
      'protect_content': ?protectContent,
    };

    final files = _prepareFiles([content.file]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.postStory.name,
      payload,
    );

    return Story.fromJson(response);
  }

  /// Edits a story previously posted by the bot on behalf of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#editstory
  Future<Story> editStory(
    String businessConnectionId,
    int storyId,
    InputStoryContent content, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    List<StoryArea>? areas,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'story_id': storyId,
      'content': content,
      'caption': ?caption,
      'parse_mode': ?parseMode,
      'caption_entities': ?captionEntities,
      'areas': ?areas,
    };

    final files = _prepareFiles([content.file]);

    final payload = Payload(params, files);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.editStory.name,
      payload,
    );

    return Story.fromJson(response);
  }

  /// Deletes a story previously posted by the bot on behalf of a managed business account.
  ///
  /// See: https://core.telegram.org/bots/api#deletestory
  Future<bool> deleteStory(String businessConnectionId, int storyId) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'story_id': storyId,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(APIMethod.deleteStory.name, payload);
  }

  /// Gifts a Telegram Premium subscription to the given user.
  ///
  /// See: https://core.telegram.org/bots/api#giftpremiumsubscription
  ///
  /// Returns True on success.
  Future<bool> giftPremiumSubscription(
    int userId,
    int monthCount,
    int starCount, {
    String? text,
    ParseMode? textParseMode,
    List<MessageEntity>? textEntities,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'month_count': monthCount,
      'star_count': starCount,
      'text': ?text,
      'text_parse_mode': ?textParseMode,
      'text_entities': ?textEntities,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.giftPremiumSubscription.name,
      payload,
    );
  }

  /// Sends a checklist on behalf of a connected business account.
  ///
  /// See: https://core.telegram.org/bots/api#sendchecklist
  ///
  /// Returns the sent Message.
  Future<Message> sendChecklist(
    String businessConnectionId,
    ID chatId,
    InputChecklist checklist, {
    bool? disableNotification,
    bool? protectContent,
    String? messageEffectId,
    ReplyParameters? replyParameters,
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'chat_id': chatId,
      'checklist': checklist,
      'disable_notification': ?disableNotification,
      'protect_content': ?protectContent,
      'message_effect_id': ?messageEffectId,
      'reply_parameters': ?replyParameters,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendChecklist.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Edits a checklist on behalf of a connected business account.
  ///
  /// See: https://core.telegram.org/bots/api#editmessagechecklist
  ///
  /// Returns the edited Message.
  Future<Message> editMessageChecklist(
    String businessConnectionId,
    ID chatId,
    int messageId,
    InputChecklist checklist, {
    InlineKeyboardMarkup? replyMarkup,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'chat_id': chatId,
      'message_id': messageId,
      'checklist': checklist,
      'reply_markup': ?replyMarkup,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.editMessageChecklist.name,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Gets the current Telegram Stars balance of the bot.
  ///
  /// See: https://core.telegram.org/bots/api#getmystarbalance
  ///
  /// Returns a StarAmount object.
  Future<StarAmount> getMyStarBalance() async {
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getMyStarBalance.name,
    );

    return StarAmount.fromJson(response);
  }

  /// Approves a suggested post in a direct messages chat.
  ///
  /// The bot must have the 'can_post_messages' administrator right in the
  /// corresponding channel chat.
  ///
  /// See more: https://core.telegram.org/bots/api#approvesuggestedpost
  Future<bool> approveSuggestedPost(
    ID chatId,
    int messageId, {
    int? sendDate,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'send_date': ?sendDate,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.approveSuggestedPost.name,
      payload,
    );
  }

  /// Declines a suggested post in a direct messages chat.
  ///
  /// The bot must have the 'can_manage_direct_messages' administrator right
  /// in the corresponding channel chat.
  ///
  /// See more: https://core.telegram.org/bots/api#declinesuggestedpost
  Future<bool> declineSuggestedPost(
    ID chatId,
    int messageId, {
    String? comment,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'message_id': messageId,
      'comment': ?comment,
    };

    final payload = Payload(params);
    return await _makeRequest<bool>(
      APIMethod.declineSuggestedPost.name,
      payload,
    );
  }

  /// Returns the gifts owned and hosted by a user. Returns OwnedGifts on success.
  ///
  /// See: https://core.telegram.org/bots/api#getusergifts
  Future<OwnedGifts> getUserGifts(
    int userId, {
    bool? excludeUnlimited,
    bool? excludeLimitedUpgradable,
    bool? excludeLimitedNonUpgradable,
    bool? excludeFromBlockchain,
    bool? excludeUnique,
    bool? sortByPrice,
    String? offset,
    int? limit,
  }) async {
    final params = <String, dynamic>{
      'user_id': userId,
      'exclude_unlimited': ?excludeUnlimited,
      'exclude_limited_upgradable': ?excludeLimitedUpgradable,
      'exclude_limited_non_upgradable': ?excludeLimitedNonUpgradable,
      'exclude_from_blockchain': ?excludeFromBlockchain,
      'exclude_unique': ?excludeUnique,
      'sort_by_price': ?sortByPrice,
      'offset': ?offset,
      'limit': ?limit,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getUserGifts.name,
      payload,
    );
    return OwnedGifts.fromJson(response);
  }

  /// Returns the gifts owned by a chat. Returns OwnedGifts on success.
  ///
  /// See: https://core.telegram.org/bots/api#getchatgifts
  Future<OwnedGifts> getChatGifts(
    ID chatId, {
    bool? excludeUnsaved,
    bool? excludeSaved,
    bool? excludeUnlimited,
    bool? excludeLimitedUpgradable,
    bool? excludeLimitedNonUpgradable,
    bool? excludeFromBlockchain,
    bool? excludeUnique,
    bool? sortByPrice,
    String? offset,
    int? limit,
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'exclude_unsaved': ?excludeUnsaved,
      'exclude_saved': ?excludeSaved,
      'exclude_unlimited': ?excludeUnlimited,
      'exclude_limited_upgradable': ?excludeLimitedUpgradable,
      'exclude_limited_non_upgradable': ?excludeLimitedNonUpgradable,
      'exclude_from_blockchain': ?excludeFromBlockchain,
      'exclude_unique': ?excludeUnique,
      'sort_by_price': ?sortByPrice,
      'offset': ?offset,
      'limit': ?limit,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getChatGifts.name,
      payload,
    );
    return OwnedGifts.fromJson(response);
  }

  /// Reposts a story on behalf of a business account from another business account. Both business accounts must be managed by the same bot, and the story on the source account must have been posted (or reposted) by the bot. Requires the can_manage_stories business bot right for both business accounts. Returns Story on success.
  ///
  /// See: https://core.telegram.org/bots/api#repoststory
  Future<Story> repostStory(
    String businessConnectionId,
    ID fromChatId,
    int fromStoryId,
    int activePeriod, {
    bool? postToChatPage,
    bool? protectContent,
  }) async {
    final params = <String, dynamic>{
      'business_connection_id': businessConnectionId,
      'from_chat_id': fromChatId,
      'from_story_id': fromStoryId,
      'active_period': activePeriod,
      'post_to_chat_page': ?postToChatPage,
      'protect_content': ?protectContent,
    };

    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.repostStory.name,
      payload,
    );
    return Story.fromJson(response);
  }

  /// Changes the profile photo of the bot. Returns True on success.
  Future<bool> setMyProfilePhoto(InputProfilePhoto photo) async {
    final params = {'photo': photo};
    final files = _prepareFiles([photo.file]);
    final payload = Payload(params, files);

    return await _makeRequest<bool>(APIMethod.setMyProfilePhoto.name, payload);
  }

  /// Removes the profile photo of the bot. Requires no parameters. Returns True on success.
  Future<bool> deleteMyProfilePhoto() async {
    return await _makeRequest<bool>(APIMethod.deleteMyProfilePhoto.name);
  }

  /// Use this method to get a list of profile audios for a user. Returns a UserProfileAudios object.
  Future<UserProfileAudios> getUserProfileAudios(int userId) async {
    final params = {'user_id': userId};
    final payload = Payload(params);
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getUserProfileAudios.name,
      payload,
    );
    return UserProfileAudios.fromJson(response);
  }
}
