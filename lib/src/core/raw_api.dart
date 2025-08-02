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

  /// Whether this instance owns the HTTP client and should dispose it.
  final bool _ownsHttpClient;

  /// Creates a new [RawAPI] instance.
  ///
  /// Parameters:
  /// - [token]: The bot token obtained from @BotFather
  /// - [httpClient]: Optional custom HTTP client. If not provided, a default one will be created
  /// - [baseUrl]: Optional custom base URL. Defaults to the official Telegram Bot API URL
  RawAPI(
    this.token, {
    HttpClient? httpClient,
    String? baseUrl,
  })  : _httpClient = httpClient ?? DioHttpClient(),
        _baseUrl = baseUrl ?? 'https://api.telegram.org/bot$token',
        _ownsHttpClient = httpClient == null;

  /// Makes a request to the specified API method.
  ///
  /// This is the core method that handles all API requests. It automatically
  /// determines whether to send a JSON or multipart request based on the payload.
  ///
  /// Parameters:
  /// - [method]: The API method to call
  /// - [payload]: The request payload containing parameters and optional files
  ///
  /// Returns the parsed response data.
  /// Throws [TeleverseException] if the request fails.
  Future<T> _makeRequest<T>(
    APIMethod method,
    Payload payload,
  ) async {
    final url = '$_baseUrl/${method.name}';

    try {
      final response = await _httpClient.post(url, payload);
      return _processResponse<T>(response);
    } catch (e) {
      if (e is TeleverseException) {
        rethrow;
      }

      throw TeleverseException(
        'API request failed for method ${method.name}',
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

  /// Converts parameters to a format suitable for API requests.
  ///
  /// This method handles the conversion of Dart objects to their JSON
  /// representations, including special handling for InputFile objects.
  Map<String, dynamic> _convertParameters(Map<String, dynamic> params) {
    final converted = <String, dynamic>{};

    for (final entry in params.entries) {
      final key = entry.key;
      final value = entry.value;

      if (value == null) continue;

      if (value is InputFile) {
        converted[key] = value.getValue();
      } else if (value is ID) {
        converted[key] = value.toJson();
      } else if (value is Enum) {
        converted[key] = value.name;
      } else if (value is List) {
        converted[key] = jsonEncode(value);
      } else if (value is Map) {
        converted[key] = jsonEncode(value);
      } else {
        converted[key] = value;
      }
    }

    return converted;
  }

  /// Extracts files from parameters for multipart requests.
  ///
  /// Scans through the parameters looking for InputFile objects and
  /// extracts them into a format suitable for multipart uploads.
  PayloadFiles? _extractFiles(Map<String, dynamic> params) {
    final files = <Map<String, LocalFile>>[];

    for (final entry in params.entries) {
      final value = entry.value;

      if (value is InputFile && value.type == InputFileType.bytes) {
        final localFile = LocalFile(
          value.getBytes(),
          fileName: value.name,
          contentType: value.mimeType,
          headers: value.headers,
        );

        files.add({value.getAttachName(): localFile});
      } else if (value is List) {
        // Handle lists that might contain InputFile objects
        for (int i = 0; i < value.length; i++) {
          final item = value[i];
          if (item is InputFile && item.type == InputFileType.bytes) {
            final localFile = LocalFile(
              item.getBytes(),
              fileName: item.name,
              contentType: item.mimeType,
              headers: item.headers,
            );

            files.add({item.getAttachName(): localFile});
          }
        }
      }
    }

    return files.isEmpty ? null : files;
  }

  /// Closes the RawAPI instance and releases resources.
  ///
  /// This method should be called when you're done using the RawAPI instance
  /// to properly clean up HTTP connections and other resources.
  Future<void> close() async {
    if (_ownsHttpClient) {
      await _httpClient.close();
    }
  }

  /// Gets updates for the bot.
  ///
  /// Use this method to receive incoming updates using long polling.
  /// An Array of [Update] objects is returned.
  ///
  /// Parameters:
  /// - [offset]: Identifier of the first update to be returned
  /// - [limit]: Limits the number of updates to be retrieved (1-100, default 100)
  /// - [timeout]: Timeout in seconds for long polling (0-50, default 0)
  /// - [allowedUpdates]: List of update types you want your bot to receive
  ///
  /// Returns a list of [Update] objects.
  Future<List<Update>> getUpdates({
    int? offset,
    int? limit,
    int? timeout,
    List<UpdateType>? allowedUpdates,
  }) async {
    final params = <String, dynamic>{
      if (offset != null) 'offset': offset,
      if (limit != null) 'limit': limit,
      if (timeout != null) 'timeout': timeout,
      if (allowedUpdates != null)
        'allowed_updates': allowedUpdates.map((e) => e.type).toList(),
    };

    final payload = Payload(_convertParameters(params));
    final response = await _makeRequest<List<dynamic>>(
      APIMethod.getUpdates,
      payload,
    );

    return response.map((json) => Update.fromJson(json)).toList();
  }

  /// Sets a webhook to receive incoming updates via an outgoing webhook.
  ///
  /// Whenever there is an update for the bot, Telegram will send an HTTPS POST
  /// request to the specified URL, containing a JSON-serialized Update.
  ///
  /// Parameters:
  /// - [url]: HTTPS URL to send updates to. Use an empty string to remove webhook integration
  /// - [certificate]: Upload your public key certificate so that the root certificate in use can be checked
  /// - [ipAddress]: The fixed IP address which will be used to send webhook requests instead of the IP address resolved through DNS
  /// - [maxConnections]: The maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery (1-100, default 40)
  /// - [allowedUpdates]: A list of the update types you want your bot to receive
  /// - [dropPendingUpdates]: Pass True to drop all pending updates
  /// - [secretToken]: A secret token to be sent in a header "X-Telegram-Bot-Api-Secret-Token" in every webhook request (1-256 characters)
  ///
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
      if (certificate != null) 'certificate': certificate,
      if (ipAddress != null) 'ip_address': ipAddress,
      if (maxConnections != null) 'max_connections': maxConnections,
      if (allowedUpdates != null)
        'allowed_updates': allowedUpdates.map((e) => e.type).toList(),
      if (dropPendingUpdates != null)
        'drop_pending_updates': dropPendingUpdates,
      if (secretToken != null) 'secret_token': secretToken,
    };

    final convertedParams = _convertParameters(params);
    final files = _extractFiles(params);

    final payload = Payload(convertedParams, files);
    return await _makeRequest<bool>(APIMethod.setWebhook, payload);
  }

  /// Gets current webhook status.
  ///
  /// Use this method to get current webhook status. Requires no parameters.
  /// On success, returns a WebhookInfo object. If the bot is using getUpdates,
  /// will return an object with the url field empty.
  ///
  /// Returns current webhook status.
  Future<WebhookInfo> getWebhookInfo() async {
    final payload = Payload({});
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.getWebhookInfo,
      payload,
    );

    return WebhookInfo.fromJson(response);
  }

  /// Removes webhook integration if you decide to switch back to getUpdates.
  ///
  /// Returns True on success.
  ///
  /// Parameters:
  /// - [dropPendingUpdates]: Pass True to drop all pending updates
  ///
  /// Returns true if the webhook was successfully deleted.
  Future<bool> deleteWebhook({bool? dropPendingUpdates}) async {
    final params = <String, dynamic>{
      if (dropPendingUpdates != null)
        'drop_pending_updates': dropPendingUpdates,
    };

    final payload = Payload(_convertParameters(params));
    return await _makeRequest<bool>(APIMethod.deleteWebhook, payload);
  }

  /// Sends a text message.
  ///
  /// On success, the sent [Message] is returned.
  ///
  /// Parameters:
  /// - [chatId]: Unique identifier for the target chat
  /// - [text]: Text of the message to be sent, 1-4096 characters
  /// - [messageThreadId]: Unique identifier for the target message thread
  /// - [parseMode]: Mode for parsing entities in the message text
  /// - [entities]: List of special entities that appear in message text
  /// - [disableNotification]: Sends the message silently
  /// - [protectContent]: Protects the contents of the sent message from forwarding and saving
  /// - [replyMarkup]: Additional interface options
  /// - [replyParameters]: Description of the message to reply to
  /// - [linkPreviewOptions]: Link preview generation options for the message
  /// - [businessConnectionId]: Unique identifier of the business connection
  /// - [messageEffectId]: Unique identifier of the message effect to be added
  /// - [allowPaidBroadcast]: Pass True to allow up to 1000 messages per second
  ///
  /// Returns the sent [Message].
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
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'text': text,
      if (messageThreadId != null) 'message_thread_id': messageThreadId,
      if (parseMode != null) 'parse_mode': parseMode,
      if (entities != null)
        'entities': entities.map((e) => e.toJson()).toList(),
      if (disableNotification != null)
        'disable_notification': disableNotification,
      if (protectContent != null) 'protect_content': protectContent,
      if (replyMarkup != null) 'reply_markup': replyMarkup.toJson(),
      if (replyParameters != null) 'reply_parameters': replyParameters.toJson(),
      if (linkPreviewOptions != null)
        'link_preview_options': linkPreviewOptions.toJson(),
      if (businessConnectionId != null)
        'business_connection_id': businessConnectionId,
      if (messageEffectId != null) 'message_effect_id': messageEffectId,
      if (allowPaidBroadcast != null)
        'allow_paid_broadcast': allowPaidBroadcast,
    };

    final payload = Payload(_convertParameters(params));
    final response = await _makeRequest<Map<String, dynamic>>(
      APIMethod.sendMessage,
      payload,
    );

    return Message.fromJson(response);
  }

  /// Sends a photo.
  ///
  /// On success, the sent [Message] is returned.
  ///
  /// Parameters:
  /// - [chatId]: Unique identifier for the target chat
  /// - [photo]: Photo to send
  /// - [messageThreadId]: Unique identifier for the target message thread
  /// - [caption]: Photo caption (may also be used when resending photos by file_id), 0-1024 characters
  /// - [parseMode]: Mode for parsing entities in the photo caption
  /// - [captionEntities]: List of special entities that appear in the caption
  /// - [disableNotification]: Sends the message silently
  /// - [protectContent]: Protects the contents of the sent message from forwarding and saving
  /// - [replyMarkup]: Additional interface options
  /// - [hasSpoiler]: Pass True if the photo needs to be covered with a spoiler animation
  /// - [replyParameters]: Description of the message to reply to
  /// - [businessConnectionId]: Unique identifier of the business connection
  /// - [messageEffectId]: Unique identifier of the message effect to be added
  /// - [showCaptionAboveMedia]: Pass True, if the caption must be shown above the message media
  /// - [allowPaidBroadcast]: Pass True to allow up to 1000 messages per second
  ///
  /// Returns the sent [Message].
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
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'photo': photo,
      if (messageThreadId != null) 'message_thread_id': messageThreadId,
      if (caption != null) 'caption': caption,
      if (parseMode != null) 'parse_mode': parseMode,
      if (captionEntities != null)
        'entities': captionEntities.map((e) => e.toJson()).toList(),
      if (disableNotification != null)
        'disable_notification': disableNotification,
      if (protectContent != null) 'protect_content': protectContent,
      if (replyMarkup != null) 'reply_markup': replyMarkup.toJson(),
      if (hasSpoiler != null) 'has_spoiler': hasSpoiler,
      if (replyParameters != null) 'reply_parameters': replyParameters.toJson(),
      if (businessConnectionId != null)
        'business_connection_id': businessConnectionId,
      if (messageEffectId != null) 'message_effect_id': messageEffectId,
      if (showCaptionAboveMedia != null)
        'show_caption_above_media': showCaptionAboveMedia,
      if (allowPaidBroadcast != null)
        'allow_paid_broadcast': allowPaidBroadcast,
    };

    final convertedParams = _convertParameters(params);
    final files = _extractFiles(params);

    final payload = Payload(convertedParams, files);
    final response =
        await _makeRequest<Map<String, dynamic>>(APIMethod.sendPhoto, payload);

    return Message.fromJson(response);
  }

  /// Sends a group of photos, videos, documents or audios as an album.
  ///
  /// Messages sent as a group cannot be edited or deleted individually.
  /// On success, an array of [Message]s that were sent is returned.
  ///
  /// Parameters:
  /// - [chatId]: Unique identifier for the target chat
  /// - [media]: Array of 2-10 InputMedia objects describing messages to be sent
  /// - [messageThreadId]: Unique identifier for the target message thread
  /// - [disableNotification]: Sends messages silently
  /// - [protectContent]: Protects the contents of the sent messages from forwarding and saving
  /// - [replyParameters]: Description of the message to reply to
  /// - [businessConnectionId]: Unique identifier of the business connection
  /// - [messageEffectId]: Unique identifier of the message effect to be added
  /// - [allowPaidBroadcast]: Pass True to allow up to 1000 messages per second
  ///
  /// Returns an array of sent [Message]s.
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
  }) async {
    final params = <String, dynamic>{
      'chat_id': chatId,
      'media': media,
      if (messageThreadId != null) 'message_thread_id': messageThreadId,
      if (disableNotification != null)
        'disable_notification': disableNotification,
      if (protectContent != null) 'protect_content': protectContent,
      if (replyParameters != null) 'reply_parameters': replyParameters.toJson(),
      if (businessConnectionId != null)
        'business_connection_id': businessConnectionId,
      if (messageEffectId != null) 'message_effect_id': messageEffectId,
      if (allowPaidBroadcast != null)
        'allow_paid_broadcast': allowPaidBroadcast,
    };

    final convertedParams = _convertParameters(params);
    final files = _extractFiles(params);

    final payload = Payload(convertedParams, files);
    final response =
        await _makeRequest<List<dynamic>>(APIMethod.sendMediaGroup, payload);

    return response.map((json) => Message.fromJson(json)).toList();
  }
}
