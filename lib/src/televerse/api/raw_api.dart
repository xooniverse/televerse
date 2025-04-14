part of '../../../televerse.dart';

/// Raw API for the Telegram Bot API.
class RawAPI {
  /// Timeout Duration for the HTTP client.
  ///
  /// When the timeout is reached, the API request will be cancelled and the
  /// client will throw an exception.
  final Duration? timeout;

  /// Default base URL for the Telegram API.
  static const String defaultBase = "https://api.telegram.org";

  /// Default local base URL
  static const String defaultLocalBase = "http://localhost:8081";

  /// The Bot Token.
  final String token;

  /// Http client
  _HttpClient _httpClient;

  /// A flag to indicate whether the client has been closed
  bool _closed = false;

  static _HttpClient _initializeHttpClient({
    LoggerOptions? loggerOptions,
    Duration? timeout,
  }) {
    return _HttpClient(
      loggerOptions,
      timeout: timeout,
    );
  }

  /// Initializes the client if it has been closed
  void _init() {
    if (!_closed) {
      return;
    }
    _httpClient = _initializeHttpClient(
      loggerOptions: _httpClient.loggerOptions,
      timeout: timeout,
    );
    _closed = false;
  }

  /// The Raw API.
  RawAPI._(
    this.token, {
    String? baseUrl,
    LoggerOptions? loggerOptions,
    this.timeout,
  })  : _baseUrl = baseUrl ?? defaultBase,
        _httpClient = _initializeHttpClient(
          loggerOptions: loggerOptions,
          timeout: timeout,
        );

  /// `RawAPI` gives you access to all methods of Telegram Bot API.
  ///
  /// - [token] - The bot token. This will be used to interact with the Telegram
  ///   Bot API server.
  /// - [loggerOptions] - Configuration of network logger. Logs requests and
  ///   responses to and from Telegram Bot API.
  /// - [timeout] - Time out Duration for each network request. If a response
  ///   isn't received within this duration, the request is terminated, and the
  ///   client throws an exception.
  ///
  /// ## Local Bot API
  ///
  /// If you're looking to create instance that use local bot api server
  /// support, you can use the `RawAPI.local` constructor.
  factory RawAPI(
    String token, {
    LoggerOptions? loggerOptions,
    Duration? timeout,
  }) {
    return RawAPI._(
      token,
      loggerOptions: loggerOptions,
      timeout: timeout,
    );
  }

  /// Creates a new RawAPI instance with the given [token] and [baseUrl].
  ///
  /// When using `RawAPI.local`, the [baseUrl] is set to `localhost:8081` by
  /// default.
  factory RawAPI.local(
    String token, {
    String baseUrl = RawAPI.defaultLocalBase,
    LoggerOptions? loggerOptions,
    Duration? timeout,
  }) {
    return RawAPI._(
      token,
      baseUrl: baseUrl,
      loggerOptions: loggerOptions,
      timeout: timeout,
    );
  }

  /// Base URL for the Telegram API.
  final String _baseUrl;

  /// The Base URI
  Uri? _baseUri;

  /// Just a constant variable to hold "thumbnail" string
  static const String _thumb = "thumbnail";

  /// Build the URI for the Telegram API.
  Uri _buildUri(APIMethod method) {
    if (_baseUri != null) {
      return _baseUri!.replace(path: "${_baseUri!.path}/$method");
    }

    // Ensure the base URL includes "https" if no scheme is provided
    String baseUrl = _baseUrl;
    if (!baseUrl.startsWith('http')) {
      baseUrl = 'http://$baseUrl';
    }

    // Create the base URI with the token
    Uri uri = Uri.parse("$baseUrl/bot$token");
    _baseUri = uri;

    // Return the full URI with the method appended
    return uri.replace(path: "${uri.path}/$method");
  }

  /// Extracts a list of maps representing multipart files from a list of helper
  /// objects.
  ///
  /// This private method iterates through a list of `_MultipartHelper` objects
  /// and extracts relevant information to create a list of maps suitable for
  /// representing multipart files. It filters the input list to only include
  /// elements where the `type` property is set to `InputFileType.bytes`. For
  /// each matching element, it creates a map with the following structure:
  ///
  /// * Key: The `field` property value from the `_MultipartHelper` object.
  /// * Value: A `MultipartFile` object created using the `file.getBytes()`
  ///   method on the `_MultipartHelper` object's `file` property. The
  ///   `filename` is set using the `name` property from the `_MultipartHelper`
  ///   object.
  ///
  /// Parameters:
  ///
  /// * [list]: A list of `_MultipartHelper` objects.
  ///
  /// Returns:
  ///
  /// A new list of maps representing multipart files. The list will be empty if
  /// no matching elements are found in the input list.
  List<Map<String, LocalFile>> _getFiles(List<_MultipartHelper> list) {
    List<Map<String, LocalFile>> files = list.where((el) {
      return el.type == InputFileType.bytes;
    }).map((e) {
      return {
        e.file.getAttachName(): LocalFile(
          e.file.getBytes(),
          fileName: e.name,
          headers: e.file.headers,
          contentType: e.file.mimeType,
        ),
      };
    }).toList();
    return files;
  }

  /// Close the HTTP client.
  void closeClient() {
    _httpClient.close();
    _closed = true;
  }

  /// (Internal) The Context object, which actually invokes the RawAPI method
  ///
  /// If the RawAPI access is being made from a Context object, that particular
  /// Context object's reference.
  Context? _context;

  /// Attaches the context to the current RawAPI instance.
  void _addContext(Context ctx) => _context = ctx;

  /// Transformers added to the RawAPI
  final List<Transformer> _transformers = [];

  /// Installs a [Transformer] to be applied to API calls.
  ///
  /// The `use` method adds a [Transformer] to the list of transformers. These
  /// transformers will be applied to the payload of API calls sequentially
  /// before the actual API call is made. This allows you to modify or augment
  /// the payload before it is sent to the API.
  ///
  /// ## Parameters
  /// - `transformer` (`Transformer`): The transformer instance to be added to
  ///   the list of transformers.
  ///
  /// ## Example
  /// ```dart
  /// final bot = Bot("TOKEN");
  /// final transformer = AutoReplyEnforcer();
  /// bot.use(transformer);
  ///
  /// // Now, the transformer will be applied to all API calls made by the bot.
  /// ```
  ///
  /// In this example, the `AutoReplyEnforcer` transformer is added to the bot
  /// using the `use` method. The transformer will then be applied to the
  /// payload of all API calls made by the bot, allowing you to modify the
  /// payload before it is sent.
  void use(Transformer transformer) => _transformers.add(transformer);

  /// Concatenates transformers into a single callable function.
  ///
  /// The `_combineTransformer` function takes a previous [APICaller] function
  /// and a [Transformer] instance, and returns a new [APICaller] function that
  /// first applies the transformer to the payload before invoking the previous
  /// API caller. This allows multiple transformers to be chained together,
  /// processing the payload sequentially.
  ///
  /// ## Parameters
  /// - `prev` (`APICaller`): The previous API caller function.
  /// - `transformer` (`Transformer`): The transformer to be applied to the
  ///   payload.
  ///
  /// ## Returns
  /// - `APICaller`: A new API caller function that applies the transformer to
  ///   the payload before invoking the previous API caller.
  ///
  /// ## Example
  /// Here's an example of how to use the `_combineTransformer` function:
  ///
  /// ```dart
  /// final transformers = [transformer1, transformer2, transformer3];
  /// APICaller combinedCaller = (method, payload) async {
  ///   // Initial API call logic
  ///   return {};
  /// };
  ///
  /// for (final transformer in transformers) {
  ///   combinedCaller = _combineTransformer(combinedCaller, transformer);
  /// }
  ///
  /// // Now, combinedCaller applies all transformers sequentially
  /// final result = await combinedCaller(method, payload);
  /// ```
  ///
  /// In this example, the `_combineTransformer` function is used to combine
  /// multiple transformers into a single API caller function, which processes
  /// the payload through each transformer in sequence before making the API
  /// call.
  APICaller _combineTransformer(APICaller prev, Transformer transformer) {
    apply(APIMethod method, [Payload? payload]) async =>
        await transformer.transform(prev, method, payload);

    return apply;
  }

  /// Independent API Caller.
  ///
  /// This method allows you to directly call any Telegram Bot API method
  /// without the interference of Transformers. It's ideal for situations where
  /// you need full control over the request or want to bypass automatic
  /// transformations.
  ///
  /// The data to be sent must be a JSON-serializable `Map`, wrapped within a
  /// `Payload` class. Ensure that all fields of the JSON strictly adhere to the
  /// Telegram Bot API documentation for correct execution.
  ///
  /// ### Example:
  /// You can use this method to invoke the `sendMessage` API method like this:
  ///
  /// ```dart
  /// void main() async {
  ///   final api = RawAPI(Platform.environment["BOT_TOKEN"]!);
  ///
  ///   final data = {
  ///     "chat_id": 12345,
  ///     "text": "Hello World!",
  ///   };
  ///
  ///   await api(APIMethod.sendMessage, Payload(data));
  /// }
  /// ```
  ///
  /// This gives you the flexibility to directly interact with Telegram's API
  /// while maintaining a simple and clean implementation.
  Future<Map<String, dynamic>> call(
    APIMethod method, [
    Payload? payload,
  ]) async {
    final uri = _buildUri(method);
    payload?.params.removeWhere(_nullFilter);
    final result = await _httpClient._makeApiCall<Map<String, dynamic>>(
      uri,
      payload: payload,
    );
    return result;
  }

  /// Executes an API call, applying any attached transformers.
  ///
  /// The `_makeApiCall` method is the central point for executing API calls. It
  /// constructs the API endpoint URI, processes the payload through a series of
  /// transformers, and then makes the actual API call. Transformers can modify
  /// the payload before the call is made.
  ///
  /// ## Parameters
  /// - `method` (`APIMethod`): The API method to be called.
  /// - `payload` (`Payload?`, optional): The payload for the API call, which
  ///   can include parameters and files. If not provided, an empty `Payload` is
  ///   created.
  ///
  /// ## Returns
  /// - `Future<T>`: The result of the API call, cast to the expected type `T`.
  ///
  /// ## Example
  /// ```dart
  /// final payload = Payload.from({'chat_id': 123, 'text': 'Hello World'});
  /// final result = await _makeApiCall<Map>(APIMethod.sendMessage, payload: payload);
  /// ```
  ///
  /// This example demonstrates how to make an API call with a payload
  /// containing parameters. The result of the API call is cast to a `String`.
  ///
  /// ## Implementation Details
  /// - Constructs the API call URI.
  /// - Removes null values from the payload parameters.
  /// - Applies transformers in reverse order to the payload.
  /// - Executes the API call with the transformed payload.
  ///
  /// All API calls go through this method :)
  Future<T> _makeApiCall<T>(
    APIMethod method, {
    Payload? payload,
  }) async {
    APICaller caller = call;
    final transformers = [..._transformers, ...(_context?._transformers ?? [])];

    // Combine transformers
    for (final transformer in transformers.reversed) {
      caller = _combineTransformer(caller, transformer);
    }

    // Execute the combined call
    final result = await caller(method, payload);

    return result["result"] as T;
  }

  /// Make API call and expect `Map<String, dynamic>` result
  Future<Map<String, dynamic>> _makeApiJsonCall(
    APIMethod method, {
    Payload? payload,
  }) async =>
      await _makeApiCall<Map<String, dynamic>>(
        method,
        payload: payload,
      );

  /// Make API call and expect `bool` result (Shorthand for `_makeApiCall`
  /// method)
  Future<bool> _makeApiBoolCall(
    APIMethod method, {
    Payload? payload,
  }) async =>
      await _makeApiCall<bool>(
        method,
        payload: payload,
      );

  /// Use this method to receive incoming updates using long polling. An Array
  /// of Update objects is returned.
  ///
  /// See more at https://core.telegram.org/bots/api#getupdates
  Future<List<Update>> getUpdates({
    int? offset,
    int? limit,
    int? timeout,
    List<String>? allowedUpdates,
  }) async {
    final params = {
      "offset": offset,
      "limit": limit,
      "timeout": timeout,
      "allowed_updates": allowedUpdates,
    };

    final response = await _makeApiCall<List>(
      APIMethod.getUpdates,
      payload: Payload.from(params),
    );

    return (response)
        .map((e) => Update.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Use this method to specify a URL and receive incoming updates via an
  /// outgoing webhook. Whenever there is an update for the bot, we will send an
  /// HTTPS POST request to the specified URL, containing a JSON-serialized
  /// Update. In case of an unsuccessful request, we will give up after a
  /// reasonable amount of attempts. Returns True on success. If you'd like to
  /// make sure that the webhook was set by you, you can specify secret data in
  /// the parameter secret_token. If specified, the request will contain a
  /// header “X-Telegram-Bot-Api-Secret-Token” with the secret token as content.
  ///
  /// See more at https://core.telegram.org/bots/api#setwebhook
  Future<bool> setWebhook({
    required String url,
    InputFile? certificate,
    String? ipAddress,
    int? maxConnections,
    List<String>? allowedUpdates,
    bool? dropPendingUpdates,
    String? secretToken,
  }) async {
    final params = {
      "url": url,
      "ip_address": ipAddress,
      "max_connections": maxConnections,
      "allowed_updates": allowedUpdates,
      "drop_pending_updates": dropPendingUpdates,
      "secret_token": secretToken,
      "certificate": certificate?.getValue()
    };

    final files =
        certificate != null ? _getFiles([_MultipartHelper(certificate)]) : null;

    final response = await _makeApiBoolCall(
      APIMethod.setWebhook,
      payload: Payload.from(params, files),
    );
    return response;
  }

  /// Use this method to remove webhook integration if you decide to switch back
  /// to getUpdates. Returns True on success.
  ///
  /// See more at https://core.telegram.org/bots/api#deletewebhook
  Future<bool> deleteWebhook({bool? dropPendingUpdates}) async {
    final params = {
      "drop_pending_updates": dropPendingUpdates,
    };
    final response = await _makeApiBoolCall(
      APIMethod.deleteWebhook,
      payload: Payload.from(params),
    );
    return response;
  }

  /// Use this method to get current webhook status. Requires no parameters. On
  /// success, returns a WebhookInfo object. If the bot is using getUpdates,
  /// will return an object with the url field empty.
  ///
  /// See more at https://core.telegram.org/bots/api#getwebhookinfo
  Future<WebhookInfo> getWebhookInfo() async {
    final response = await _makeApiJsonCall(
      APIMethod.getWebhookInfo,
    );
    return WebhookInfo.fromJson(response);
  }

  /// A simple method for testing your bot's authentication token. Requires no
  /// parameters. Returns basic information about the bot in form of a User
  /// object.
  ///
  /// See more at https://core.telegram.org/bots/api#getme
  Future<User> getMe() async {
    final response = await _makeApiJsonCall(APIMethod.getMe);
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
    final response = await _makeApiBoolCall(APIMethod.logOut);
    return response;
  }

  /// Use this method to close the bot instance before moving it from one local
  /// server to another. You need to delete the webhook before calling this
  /// method to ensure that the bot isn't launched again after server restart.
  /// The method will return error 429 in the first 10 minutes after the bot is
  /// launched. Returns True on success. Requires no parameters.
  ///
  /// See more at https://core.telegram.org/bots/api#close
  Future<bool> close() async {
    final response = await _makeApiBoolCall(APIMethod.close);
    return response;
  }

  /// Use this method to send text messages. On success, the sent [Message] is
  /// returned.
  ///
  /// Required parameters:
  /// - [chatId] - Chat ID can either be [ChatID] or [ChannelID] or
  ///   [SupergroupID]
  ///
  /// - [text] - Text of the message to be sent
  ///
  /// You can optionally pass the more parameters as described in the official
  /// documentation. See more at https://core.telegram.org/bots/api#sendmessage
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
  /// On success, the sent [Message] is which can be used to reply to the
  /// message.
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
    final params = {
      "chat_id": chatId.id,
      "text": text,
      "message_thread_id": messageThreadId,
      "parse_mode": parseMode?.toJson(),
      "entities": entities?.map((e) => e.toJson()).toList(),
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "link_preview_options": linkPreviewOptions?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };

    final response = await _makeApiJsonCall(
      APIMethod.sendMessage,
      payload: Payload.from(params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to forward messages of any kind. Service messages can't be
  /// forwarded. On success, the sent [Message] is returned.
  ///
  /// Required parameters:
  /// - [chatId] - Chat ID can either be [ChatID] or [ChannelID] or
  ///   [SupergroupID]
  /// - [fromChatId] - Chat ID can either be [ChatID] or [ChannelID] or
  ///   [SupergroupID]
  /// - [messageId] - Message identifier in the chat specified in [fromChatId]
  ///
  /// You can optionally pass the more parameters as described in the official
  /// documentation.
  ///
  /// - [disableNotification] - Sends the message silently. Users will receive a
  ///   notification with no sound.
  /// - [messageThreadId] - Unique identifier for the target message thread
  ///   (topic) of the forum; for forum supergroups only
  /// - [protectContent] - Protects the contents of the forwarded message from
  ///   forwarding and saving
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
    int? videoStartTimestamp,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "from_chat_id": fromChatId.id,
      "message_id": messageId,
      "disable_notification": disableNotification,
      "message_thread_id": messageThreadId,
      "protect_content": protectContent,
      "video_start_timestamp": videoStartTimestamp,
    };
    final response = await _makeApiJsonCall(
      APIMethod.forwardMessage,
      payload: Payload.from(params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to copy messages of any kind. Service messages and invoice
  /// messages can't be copied. A quiz poll can be copied only if the value of
  /// the field correct_option_id is known to the bot. The method is analogous
  /// to the method forwardMessage, but the copied message doesn't have a link
  /// to the original message. Returns the MessageId of the sent message on
  /// success.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "from_chat_id": fromChatId.id,
      "message_id": messageId,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "allow_paid_broadcast": allowPaidBroadcast,
      "video_start_timestamp": videoStartTimestamp,
    };
    final response = await _makeApiJsonCall(
      APIMethod.copyMessage,
      payload: Payload.from(params),
    );
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
    ReplyMarkup? replyMarkup,
    bool? hasSpoiler,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "disable_notification": disableNotification,
      "reply_markup": replyMarkup?.toJson(),
      "has_spoiler": hasSpoiler,
      "protect_content": protectContent,
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "show_caption_above_media": showCaptionAboveMedia,
      "allow_paid_broadcast": allowPaidBroadcast,
      "photo": photo.getValue()
    };
    final files = _getFiles([_MultipartHelper(photo)]);

    final response = await _makeApiJsonCall(
      APIMethod.sendPhoto,
      payload: Payload.from(params, files),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send audio files, if you want Telegram clients to
  /// display them in the music player. Your audio must be in the .MP3 or .M4A
  /// format. On success, the sent Message is returned. Bots can currently send
  /// audio files of up to 50 MB in size, this limit may be changed in the
  /// future.
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
    InputFile? thumbnail,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "duration": duration,
      "performer": performer,
      "title": title,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
      "audio": audio.getValue(),
      _thumb: thumbnail?.getValue(),
    };

    final l = [_MultipartHelper(audio)];
    if (thumbnail != null) l.add(_MultipartHelper(thumbnail));
    final files = _getFiles(l);

    final response = await _makeApiJsonCall(
      APIMethod.sendAudio,
      payload: Payload.from(params, files),
    );

    return Message.fromJson(response);
  }

  /// Use this method to send general files. On success, the sent Message is
  /// returned. Bots can currently send files of any type of up to 50 MB in
  /// size, this limit may be changed in the future.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "disable_content_type_detection": disableContentTypeDetection,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
      "document": document.getValue(),
      _thumb: thumbnail?.getValue(),
    };

    final l = [_MultipartHelper(document)];
    if (thumbnail != null) l.add(_MultipartHelper(thumbnail));
    final files = _getFiles(l);

    final response = await _makeApiJsonCall(
      APIMethod.sendDocument,
      payload: Payload(params, files),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send video files, Telegram clients support MPEG4 videos
  /// (other formats may be sent as Document). On success, the sent Message is
  /// returned. Bots can currently send video files of up to 50 MB in size, this
  /// limit may be changed in the future.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "has_spoiler": hasSpoiler,
      "supports_streaming": supportsStreaming,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "show_caption_above_media": showCaptionAboveMedia,
      "allow_paid_broadcast": allowPaidBroadcast,
      "start_timestamp": startTimestamp,
      "video": video.getValue(),
      _thumb: thumbnail?.getValue(),
      "cover": cover?.getValue(),
    };

    final l = [_MultipartHelper(video)];
    if (thumbnail != null) l.add(_MultipartHelper(thumbnail));
    if (cover != null) l.add(_MultipartHelper(cover));
    final files = _getFiles(l);

    final response = await _makeApiJsonCall(
      APIMethod.sendVideo,
      payload: Payload(params, files),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send animation files (GIF or H.264/MPEG-4 AVC video
  /// without sound). On success, the sent Message is returned. Bots can
  /// currently send animation files of up to 50 MB in size, this limit may be
  /// changed in the future.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "duration": duration,
      "width": width,
      "height": height,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "has_spoiler": hasSpoiler,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "show_caption_above_media": showCaptionAboveMedia,
      "allow_paid_broadcast": allowPaidBroadcast,
      "animation": animation.getValue(),
      _thumb: thumbnail?.getValue(),
    };

    final l = [_MultipartHelper(animation)];
    if (thumbnail != null) l.add(_MultipartHelper(thumbnail));
    final files = _getFiles(l);

    final response = await _makeApiJsonCall(
      APIMethod.sendAnimation,
      payload: Payload(params, files),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send audio files, if you want Telegram clients to
  /// display the file as a playable voice message. For this to work, your audio
  /// must be in an .OGG file encoded with OPUS (other formats may be sent as
  /// Audio or Document). On success, the sent Message is returned. Bots can
  /// currently send voice messages of up to 50 MB in size, this limit may be
  /// changed in the future.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "duration": duration,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
      "voice": voice.getValue(),
    };

    final l = [_MultipartHelper(voice)];
    final files = _getFiles(l);

    final response = await _makeApiJsonCall(
      APIMethod.sendVoice,
      payload: Payload(params, files),
    );

    return Message.fromJson(response);
  }

  /// As of v.4.0, Telegram clients support rounded square MPEG4 videos of up to
  /// 1 minute long. Use this method to send video messages. On success, the
  /// sent Message is returned.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "duration": duration,
      "length": length,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
      "video_note": videoNote.getValue(),
      _thumb: thumbnail?.getValue(),
    };

    final l = [_MultipartHelper(videoNote)];
    if (thumbnail != null) {
      l.add(_MultipartHelper(thumbnail));
    }
    final files = _getFiles(l);

    final response = await _makeApiJsonCall(
      APIMethod.sendVideoNote,
      payload: Payload(params, files),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send a group of photos, videos, documents or audios as
  /// an album. Documents and audio files can be only grouped in an album with
  /// messages of the same type. On success, an array of Messages that were sent
  /// is returned.
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
    if (media.length > 10) {
      throw TeleverseException(
        "Invalid Parameter in [sendMediaGroup]",
        description: "The maximum number of items in a media group is 10.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }
    if (media.length < 2) {
      throw TeleverseException(
        "Invalid Parameter in [sendMediaGroup]",
        description: "The minimum number of items in a media group is 2.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }
    bool containsInvalidType = media.any((m) {
      return m.type == InputMediaType.animation ||
          m.type == InputMediaType.audio;
    });
    if (containsInvalidType) {
      throw TeleverseException(
        "Invalid Parameter in [sendMediaGroup]",
        description:
            "Audio and Animation files can't be sent in a media group.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };

    List<_MultipartHelper> helpers = [];
    List<Map<String, dynamic>> mediaList = [];
    final length = media.length;

    for (int i = 0; i < length; i++) {
      final m = media[i];
      mediaList.add(m.toJson());
      helpers.add(_MultipartHelper(m.media));
    }

    final files = _getFiles(helpers);
    params["media"] = mediaList;

    final response = await _makeApiCall<List>(
      APIMethod.sendMediaGroup,
      payload: Payload(params, files),
    );

    return (response).map((e) => Message.fromJson(e)).toList();
  }

  /// Use this method to send point on the map. On success, the sent Message is
  /// returned.
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
  }) async {
    final params = {
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
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };
    final response = await _makeApiJsonCall(
      APIMethod.sendLocation,
      payload: Payload(params),
    );
    return Message.fromJson(response);
  }

  /// (Internal) Abstract method for editing message live location
  Future<MessageOrBool> _editMessageLiveLocation<MessageOrBool>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    int? livePeriod,
    String? businessConnectionId,
  }) async {
    final params = {
      "inline_message_id": inlineMessageId,
      "chat_id": chatId?.id,
      "message_id": messageId,
      "latitude": latitude,
      "longitude": longitude,
      "horizontal_accuracy": horizontalAccuracy,
      "heading": heading,
      "proximity_alert_radius": proximityAlertRadius,
      "reply_markup": replyMarkup?.toJson(),
      "live_period": livePeriod,
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiCall(
      APIMethod.editMessageLiveLocation,
      payload: Payload(params),
    );

    if (MessageOrBool == _Ignore) {
      return _ignore as MessageOrBool;
    }

    if (MessageOrBool == Message) {
      return Message.fromJson(response) as MessageOrBool;
    }
    return response;
  }

  /// Use this method to edit live location messages. A location can be edited
  /// until its live_period expires or editing is explicitly disabled by a call
  /// to [stopMessageLiveLocation].
  ///
  /// On success, the edited [Message] is returned. **IMPORTANT NOTE**
  ///
  /// This only works for Messages but not INLINE MESSAGES. If you're looking
  /// for a way to edit inline live location messages, check out
  /// [editInlineMessageLiveLocation].
  Future<Message> editMessageLiveLocation(
    ID chatId,
    int messageId, {
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    int? livePeriod,
    String? businessConnectionId,
  }) async {
    return await _editMessageLiveLocation<Message>(
      chatId: chatId,
      messageId: messageId,
      latitude: latitude,
      longitude: longitude,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
      livePeriod: livePeriod,
      businessConnectionId: businessConnectionId,
    );
  }

  /// Use this method to edit live location messages. A location can be edited
  /// until its live_period expires or editing is explicitly disabled by a call
  /// to [stopMessageLiveLocation].
  ///
  /// On success, true is returned.
  ///
  /// **IMPORTANT NOTE**
  ///
  /// This only works for INLINE MESSAGES. If you're looking for a way to edit
  /// live location messages, check out [editMessageLiveLocation].
  Future<bool> editInlineMessageLiveLocation(
    String inlineMessageId, {
    double? latitude,
    double? longitude,
    double? horizontalAccuracy,
    int? heading,
    int? proximityAlertRadius,
    InlineKeyboardMarkup? replyMarkup,
    int? livePeriod,
    String? businessConnectionId,
  }) async {
    return await _editMessageLiveLocation<bool>(
      inlineMessageId: inlineMessageId,
      latitude: latitude,
      longitude: longitude,
      horizontalAccuracy: horizontalAccuracy,
      heading: heading,
      proximityAlertRadius: proximityAlertRadius,
      replyMarkup: replyMarkup,
      livePeriod: livePeriod,
      businessConnectionId: businessConnectionId,
    );
  }

  /// (Internal) Abstract method for stopping live location
  Future<MessageOrBool> _stopMessageLiveLocation<MessageOrBool>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId?.id,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "business_connection_id": businessConnectionId,
      "inline_message_id": inlineMessageId,
    };
    final response = await _makeApiCall(
      APIMethod.stopMessageLiveLocation,
      payload: Payload(params),
    );

    if (MessageOrBool == _Ignore) {
      return _ignore as MessageOrBool;
    }

    if (MessageOrBool == Message) {
      return Message.fromJson(response) as MessageOrBool;
    }
    return response;
  }

  /// Use this method to stop updating a live location message before
  /// live_period expires. On success, if the message is not an inline message,
  /// the edited Message is returned, otherwise True is returned.
  ///
  /// **IMPORTANT NOTE**
  ///
  /// This only works for Messages but not INLINE MESSAGES. If you're looking
  /// for a way to stop updating inline live location messages, check out
  /// [stopInlineMessageLiveLocation].
  Future<Message> stopMessageLiveLocation(
    ID chatId,
    int messageId, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    return await _stopMessageLiveLocation<Message>(
      chatId: chatId,
      messageId: messageId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
  }

  /// Use this method to stop updating a live location message before
  /// live_period expires.
  ///
  /// **IMPORTANT NOTE**
  ///
  /// This only works for INLINE MESSAGES. If you're looking for a way to stop
  /// updating live location messages, check out [stopMessageLiveLocation].
  ///
  /// On success, true is returned.
  Future<bool> stopInlineMessageLiveLocation(
    String inlineMessageId, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    return await _stopMessageLiveLocation<bool>(
      inlineMessageId: inlineMessageId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
  }

  /// Use this method to send information about a venue. On success, the sent
  /// Message is returned.
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
  }) async {
    final params = {
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
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };
    final response = await _makeApiJsonCall(
      APIMethod.sendVenue,
      payload: Payload(params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send phone contacts. On success, the sent Message is
  /// returned.
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
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "phone_number": phoneNumber,
      "first_name": firstName,
      "last_name": lastName,
      "vcard": vcard,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };
    final response = await _makeApiJsonCall(
      APIMethod.sendContact,
      payload: Payload(params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send a native poll. On success, the sent Message is
  /// returned.
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
    if (options.length < 2 || options.length > 10) {
      throw TeleverseException(
        "The number of options must be between 2 and 10",
        description: "You provided ${options.length} options."
            " Please provide between 2 and 10 options.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }
    if (closeDate != null && openPeriod != null) {
      throw TeleverseException(
        "You can't provide both a close date and an open period",
        description: "You provided both a close date and an open period."
            " Please provide only one of them.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (closeDate?.isBefore(DateTime.now()) ?? false) {
      throw TeleverseException(
        "The close date must be in the future",
        description: "The close date you provided is in the past."
            " Please provide a date in the future.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (openPeriod != null && openPeriod < 5) {
      throw TeleverseException(
        "The open period must be at least 5 seconds",
        description: "The open period you provided is less than 5 seconds. "
            " Please provide a period of at least 5 seconds.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (openPeriod != null && openPeriod > 600) {
      throw TeleverseException(
        "The open period must be at most 600 seconds",
        description: "The open period you provided is more than 600 seconds."
            "Please provide a period of at most 600 seconds.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (type == PollType.quiz && correctOptionId == null) {
      throw TeleverseException(
        "You must provide a correct option ID for a quiz",
        description:
            "You provided a quiz poll type but did not provide a correct "
            "option ID. Please provide a correct option ID.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "question": question,
      "options": options.map((e) => e.toJson()).toList(),
      "is_anonymous": isAnonymous,
      "type": type.toJson(),
      "allows_multiple_answers": allowsMultipleAnswers,
      "correct_option_id": correctOptionId,
      "explanation": explanation,
      "explanation_parse_mode": explanationParseMode?.toJson(),
      "explanation_entities":
          explanationEntities?.map((e) => e.toJson()).toList(),
      "open_period": openPeriod,
      "close_date": closeDate?.unixTime,
      "is_closed": isClosed,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "question_entities": questionEntities?.map((e) => e.toJson()).toList(),
      "question_parse_mode": questionParseMode?.toJson(),
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };
    final response = await _makeApiJsonCall(
      APIMethod.sendPoll,
      payload: Payload(params),
    );
    return Message.fromJson(response);
  }

  /// Use this method to send an animated emoji that will display a random
  /// value. On success, the sent Message is returned.
  ///
  /// [emoji] The emoji on which the dice throw animation is based. Currently,
  /// must be one of dice, darts, basketball, football, or slot_machine. Dice
  /// can have values 1-6 for “dice”, “darts” and “basketball”, values 1-5 for
  /// “football”, and values 1-64 for “slot_machine”. Defaults to dice.
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
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "emoji": emoji.toJson(),
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };
    final response = await _makeApiJsonCall(
      APIMethod.sendDice,
      payload: Payload(params),
    );
    return Message.fromJson(response);
  }

  /// Use this method when you need to tell the user that something is happening
  /// on the bot's side. The status is set for 5 seconds or less (when a message
  /// arrives from your bot, Telegram clients clear its typing status). Returns
  /// True on success.
  ///
  /// Example: The ImageBot needs some time to process a request and upload the
  /// image. Instead of sending a text message along the lines of “Retrieving
  /// image, please wait…”, the bot may use sendChatAction with action =
  /// upload_photo. The user will see a “sending photo” status for the bot.
  ///
  /// [action] Type of action to broadcast. We have a dedicated list of actions
  /// for bots, see [ChatAction].
  ///
  /// Example:
  /// ```dart
  /// await bot.sendChatAction(chatId, ChatAction.typing);
  /// ```
  /// This will send a typing action to the chat.
  Future<bool> sendChatAction(
    ID chatId,
    ChatAction action, {
    int? messageThreadId,
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "action": action.toJson(),
      "message_thread_id": messageThreadId,
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.sendChatAction,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get a list of profile pictures for a user. Returns a
  /// UserProfilePhotos object.
  Future<UserProfilePhotos> getUserProfilePhotos(
    int userId, {
    int? offset,
    int? limit,
  }) async {
    final params = {
      "user_id": userId,
      "offset": offset,
      "limit": limit,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getUserProfilePhotos,
      payload: Payload(params),
    );
    return UserProfilePhotos.fromJson(response);
  }

  /// Use this method to get basic information about a file and prepare it for
  /// downloading. For the moment, bots can download files of up to 20MB in
  /// size. On success, a File object is returned. The file can then be
  /// downloaded via the link
  /// https://api.telegram.org/file/BOT_TOKEN/FILE_PATH, where FILE_PATH is
  /// taken from the response. It is guaranteed that the link will be valid for
  /// at least 1 hour. When the link expires, a new one can be requested by
  /// calling getFile again.
  ///
  /// Note: This function may not preserve the original file name and MIME type.
  /// You should save the file's MIME type and name (if available) when the File
  /// object is received.
  Future<File> getFile(String fileId) async {
    final params = {
      "file_id": fileId,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getFile,
      payload: Payload(params),
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
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "until_date": untilDate?.unixTime,
      "revoke_messages": revokeMessages,
    };
    final response = await _makeApiBoolCall(
      APIMethod.banChatMember,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to unban a previously banned user in a supergroup or
  /// channel. The user will not return to the group or channel automatically,
  /// but will be able to join via link, etc. The bot must be an administrator
  /// for this to work. By default, this method guarantees that after the call
  /// the user is not a member of the chat, but will be able to join it. So if
  /// the user is a member of the chat they will also be removed from the chat.
  /// If you don't want this, use the parameter only_if_banned. Returns True on
  /// success.
  Future<bool> unbanChatMember(
    ID chatId,
    int userId, {
    bool? onlyIfBanned,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "only_if_banned": onlyIfBanned,
    };
    final response = await _makeApiBoolCall(
      APIMethod.unbanChatMember,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to restrict a user in a supergroup. The bot must be an
  /// administrator in the supergroup for this to work and must have the
  /// appropriate administrator rights. Pass True for all permissions to lift
  /// restrictions from a user. Returns True on success.
  ///
  /// New Parameters: (Since Bot API 6.5)
  /// -  `useIndependentChatPermissions` - Pass True if chat permissions are set
  ///    independently. Otherwise, the `can_send_other_messages` and
  ///    `can_add_web_page_previews` permissions will imply the
  ///    `can_send_messages`, `can_send_audios`, `can_send_documents`,
  ///    `can_send_photos`, `can_send_videos`, `can_send_video_notes`, and
  ///    `can_send_voice_notes` permissions; the `can_send_polls` permission
  ///    will imply the `can_send_messages` permission.
  Future<bool> restrictChatMember(
    ID chatId,
    int userId,
    ChatPermissions permissions, {
    DateTime? untilDate,
    bool? useIndependentChatPermissions,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "permissions": permissions.toJson(),
      "until_date": untilDate?.unixTime,
      "use_independent_chat_permissions": useIndependentChatPermissions,
    };
    final response = await _makeApiBoolCall(
      APIMethod.restrictChatMember,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to promote or demote a user in a supergroup or a channel.
  /// The bot must be an administrator in the chat for this to work and must
  /// have the appropriate administrator rights. Pass False for all boolean
  /// parameters to demote a user. Returns True on success.
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
  }) async {
    final params = {
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
    final response = await _makeApiBoolCall(
      APIMethod.promoteChatMember,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to set a custom title for an administrator in a supergroup
  /// promoted by the bot. Returns True on success.
  Future<bool> setChatAdministratorCustomTitle(
    ID chatId,
    int userId,
    String customTitle,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
      "custom_title": customTitle,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setChatAdministratorCustomTitle,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to ban a channel chat in a supergroup or a channel. Until
  /// the chat is unbanned, the owner of the banned chat won't be able to send
  /// messages on behalf of any of their channels. The bot must be an
  /// administrator in the supergroup or channel for this to work and must have
  /// the appropriate administrator rights. Returns True on success.
  Future<bool> banChatSenderChat(
    ID chatId,
    int senderChatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "sender_chat_id": senderChatId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.banChatSenderChat,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to ban a channel chat in a supergroup or a channel. Until
  /// the chat is unbanned, the owner of the banned chat won't be able to send
  /// messages on behalf of any of their channels. The bot must be an
  /// administrator in the supergroup or channel for this to work and must have
  /// the appropriate administrator rights. Returns True on success.
  Future<bool> unbanChatSenderChat(
    ID chatId,
    int senderChatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "sender_chat_id": senderChatId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.unbanChatSenderChat,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to set default chat permissions for all members. The bot
  /// must be an administrator in the group or a supergroup for this to work and
  /// must have the can_restrict_members administrator rights. Returns True on
  /// success.
  ///
  /// New Parameters: (Since Bot API 6.5)
  /// -  `useIndependentChatPermissions` - Pass True if chat permissions are set
  ///    independently. Otherwise, the `can_send_other_messages` and
  ///    `can_add_web_page_previews` permissions will imply the
  ///    `can_send_messages`, `can_send_audios`, `can_send_documents`,
  ///    `can_send_photos`, `can_send_videos`, `can_send_video_notes`, and
  ///    `can_send_voice_notes` permissions; the `can_send_polls` permission
  ///    will imply the `can_send_messages` permission.
  Future<bool> setChatPermissions(
    ID chatId,
    ChatPermissions permissions, {
    bool? useIndependentChatPermissions,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "permissions": permissions.toJson(),
      "use_independent_chat_permissions": useIndependentChatPermissions,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setChatPermissions,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to generate a new primary invite link for a chat; any
  /// previously generated primary link is revoked. The bot must be an
  /// administrator in the chat for this to work and must have the appropriate
  /// administrator rights. Returns the new invite link as String on success.
  ///
  /// Note: Each administrator in a chat generates their own invite links. Bots
  /// can't use invite links generated by other administrators. If you want your
  /// bot to work with invite links, it will need to generate its own link using
  /// [exportChatInviteLink] or by calling the getChat method. If your bot needs
  /// to generate a new primary invite link replacing its previous one, use
  /// [exportChatInviteLink] again
  Future<String> exportChatInviteLink(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiCall<String>(
      APIMethod.exportChatInviteLink,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to create an additional invite link for a chat. The bot
  /// must be an administrator in the chat for this to work and must have the
  /// appropriate administrator rights. The link can be revoked using the method
  /// revokeChatInviteLink. Returns the new invite link as ChatInviteLink
  /// object.
  Future<ChatInviteLink> createChatInviteLink(
    ID chatId, {
    String? name,
    DateTime? expireDate,
    int? memberLimit,
    bool? createsJoinRequest,
  }) async {
    if (expireDate != null && expireDate.isBefore(DateTime.now())) {
      throw TeleverseException(
        "Invalid Parameter [expireDate]",
        description: "Expire date must be in the future",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (createsJoinRequest == true && memberLimit != null) {
      throw TeleverseException(
        "Invalid Parameter",
        description:
            "You can't set a member limit and allow join requests at the same time.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (memberLimit != null && (memberLimit < 1 || memberLimit > 99999)) {
      throw TeleverseException(
        "Invalid Argument [memberLimit]",
        description: "The maximum number of users that can be members of"
            " the chatsimultaneously after joining the chat via this"
            " invite link; 1-99999",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "name": name,
      "expire_date": expireDate?.unixTime,
      "member_limit": memberLimit,
      "creates_join_request": createsJoinRequest,
    };
    final response = await _makeApiJsonCall(
      APIMethod.createChatInviteLink,
      payload: Payload(params),
    );
    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to edit a non-primary invite link created by the bot. The
  /// bot must be an administrator in the chat for this to work and must have
  /// the appropriate administrator rights. Returns the edited invite link as a
  /// ChatInviteLink object.
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
        "Invalid Parameter [expireDate]",
        description: "Expire date must be in the future",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (createsJoinRequest == true && memberLimit != null) {
      throw TeleverseException(
        "Invalid Parameter",
        description:
            "You can't set a member limit and allow join requests at the same time",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (memberLimit != null && (memberLimit < 1 || memberLimit > 99999)) {
      throw TeleverseException(
        "Invalid Parameter [memberLimit]",
        description: "The maximum number of users that can be members of"
            " the chatsimultaneously after joining the chat via this"
            " invite link; 1-99999",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "invite_link": inviteLink,
      "name": name,
      "expire_date": expireDate?.unixTime,
      "member_limit": memberLimit,
      "creates_join_request": createsJoinRequest,
    };
    final response = await _makeApiJsonCall(
      APIMethod.editChatInviteLink,
      payload: Payload(params),
    );
    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to revoke an invite link created by the bot. If the
  /// primary link is revoked, a new link is automatically generated. The bot
  /// must be an administrator in the chat for this to work and must have the
  /// appropriate administrator rights. Returns the revoked invite link as
  /// ChatInviteLink object.
  Future<ChatInviteLink> revokeChatInviteLink(
    ID chatId,
    String inviteLink,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "invite_link": inviteLink,
    };
    final response = await _makeApiJsonCall(
      APIMethod.revokeChatInviteLink,
      payload: Payload(params),
    );
    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to approve a chat join request. The bot must be an
  /// administrator in the chat for this to work and must have the
  /// can_invite_users administrator right. Returns True on success.
  Future<bool> approveChatJoinRequest(
    ID chatId,
    int userId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.approveChatJoinRequest,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to decline a chat join request. The bot must be an
  /// administrator in the chat for this to work and must have the
  /// can_invite_users administrator right. Returns True on success.
  Future<bool> declineChatJoinRequest(
    ID chatId,
    int userId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.declineChatJoinRequest,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to set a new profile photo for the chat. Photos can't be
  /// changed for private chats. The bot must be an administrator in the chat
  /// for this to work and must have the appropriate administrator rights.
  /// Returns True on success.
  Future<bool> setChatPhoto(
    ID chatId,
    InputFile photo,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "photo": photo.getValue(),
    };
    final files = _getFiles([_MultipartHelper(photo)]);

    final response = await _makeApiBoolCall(
      APIMethod.setChatPhoto,
      payload: Payload(params, files),
    );
    return response;
  }

  /// Use this method to delete a chat photo. Photos can't be changed for
  /// private chats. The bot must be an administrator in the chat for this to
  /// work and must have the appropriate administrator rights. Returns True on
  /// success.
  Future<bool> deleteChatPhoto(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.deleteChatPhoto,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to change the title of a chat. Titles can't be changed for
  /// private chats. The bot must be an administrator in the chat for this to
  /// work and must have the appropriate administrator rights. Returns True on
  /// success.
  Future<bool> setChatTitle(
    ID chatId,
    String title,
  ) async {
    if (title.length > 128) {
      throw TeleverseException(
        "Invalid Parameter [title]",
        description: "Chat title can't be longer than 128 characters",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "title": title,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setChatTitle,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to change the description of a group, a supergroup or a
  /// channel. The bot must be an administrator in the chat for this to work and
  /// must have the appropriate administrator rights. Returns True on success.
  Future<bool> setChatDescription(
    ID chatId,
    String? description,
  ) async {
    if (description != null && description.length > 255) {
      throw TeleverseException(
        "Invalid Parameter [description]",
        description: "Chat description can't be longer than 255 characters",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "description": description,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setChatDescription,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to add a message to the list of pinned messages in a chat.
  /// If the chat is not a private chat, the bot must be an administrator in the
  /// chat for this to work and must have the 'can_pin_messages' administrator
  /// right in a supergroup or 'can_edit_messages' administrator right in a
  /// channel. Returns True on success.
  Future<bool> pinChatMessage(
    ID chatId,
    int messageId, {
    bool? disableNotification,
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "disable_notification": disableNotification,
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.pinChatMessage,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to remove a message from the list of pinned messages in a
  /// chat. If the chat is not a private chat, the bot must be an administrator
  /// in the chat for this to work and must have the 'can_pin_messages'
  /// administrator right in a supergroup or 'can_edit_messages' administrator
  /// right in a channel. Returns True on success.
  Future<bool> unpinChatMessage(
    ID chatId,
    int messageId, {
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.unpinChatMessage,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to clear the list of pinned messages in a chat. If the
  /// chat is not a private chat, the bot must be an administrator in the chat
  /// for this to work and must have the 'can_pin_messages' administrator right
  /// in a supergroup or 'can_edit_messages' administrator right in a channel.
  /// Returns True on success.
  Future<bool> unpinAllChatMessages(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.unpinAllChatMessages,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method for your bot to leave a group, supergroup or channel.
  /// Returns True on success.
  Future<bool> leaveChat(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.leaveChat,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get up to date information about the chat (current name
  /// of the user for one-on-one conversations, current username of a user,
  /// group or channel, etc.). Returns a Chat object on success.
  Future<ChatFullInfo> getChat(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getChat,
      payload: Payload(params),
    );
    return ChatFullInfo.fromJson(response);
  }

  /// Use this method to get a list of administrators in a chat, which aren't
  /// bots. Returns an Array of ChatMember objects.
  Future<List<ChatMember>> getChatAdministrators(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiCall<List>(
      APIMethod.getChatAdministrators,
      payload: Payload(params),
    );
    return response.map((e) => ChatMember.fromJson(e)).toList();
  }

  /// Use this method to get the number of members in a chat. Returns Int on
  /// success.
  Future<int> getChatMembersCount(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    int response = await _makeApiCall<int>(
      APIMethod.getChatMembersCount,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get information about a member of a chat. The method is
  /// guaranteed to work only if the bot is an administrator in the chat.
  /// Returns a ChatMember object on success.
  Future<ChatMember> getChatMember(
    ID chatId,
    int userId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getChatMember,
      payload: Payload(params),
    );
    return ChatMember.fromJson(response);
  }

  /// Use this method to set a new group sticker set for a supergroup. The bot
  /// must be an administrator in the chat for this to work and must have the
  /// appropriate administrator rights. Use the field can_set_sticker_set
  /// optionally returned in getChat requests to check if the bot can use this
  /// method. Returns True on success.
  Future<bool> setChatStickerSet(
    ID chatId,
    String stickerSetName,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "sticker_set_name": stickerSetName,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setChatStickerSet,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to delete a group sticker set from a supergroup. The bot
  /// must be an administrator in the chat for this to work and must have the
  /// appropriate administrator rights. Use the field can_set_sticker_set
  /// optionally returned in getChat requests to check if the bot can use this
  /// method. Returns True on success.
  Future<bool> deleteChatStickerSet(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.deleteChatStickerSet,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get custom emoji stickers, which can be used as a forum
  /// topic icon by any user. Requires no parameters. Returns an Array of
  /// Sticker objects.
  Future<List<Sticker>> getForumTopicIconStickers() async {
    final response = await _makeApiCall<List>(
      APIMethod.getForumTopicIconStickers,
    );
    return response.map((e) => Sticker.fromJson(e)).toList();
  }

  /// Use this method to create a topic in a forum supergroup chat. The bot must
  /// be an administrator in the chat for this to work and must have the
  /// can_manage_topics administrator rights. Returns information about the
  /// created topic as a ForumTopic object.
  /// - [chatId] - Unique identifier for the target chat or username of the
  ///   target channel (in the format @channelusername)
  /// - [name] - Name of the topic, 1-128 characters
  /// - [iconColor] - Color of the topic icon in RGB format. Currently, must be
  ///   one of 7322096 (0x6FB9F0), 16766590 (0xFFD67E), 13338331 (0xCB86DB),
  ///   9367192 (0x8EEE98), 16749490 (0xFF93B2), or 16478047 (0xFB6F5F)
  /// - [iconCustomEmojiId] - Unique identifier of the custom emoji shown as the
  ///   topic icon. Use [getForumTopicIconStickers] to get all allowed custom
  ///   emoji identifiers.
  Future<ForumTopic> createForumTopic(
    ID chatId,
    String name, {
    int? iconColor,
    String? iconCustomEmojiId,
  }) async {
    if (name.isEmpty || name.length > 128) {
      throw TeleverseException(
        "Invalid parameter [name]",
        description: "Name length must be between 1 and 64",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "name": name,
      "icon_color": iconColor,
      "icon_custom_emoji_id": iconCustomEmojiId,
    };
    final response = await _makeApiJsonCall(
      APIMethod.createForumTopic,
      payload: Payload(params),
    );
    return ForumTopic.fromJson(response);
  }

  /// Use this method to edit name and icon of a topic in a forum supergroup
  /// chat. The bot must be an administrator in the chat for this to work and
  /// must have can_manage_topics administrator rights, unless it is the creator
  /// of the topic. Returns True on success.
  Future<bool> editForumTopic(
    ID chatId,
    int messageThreadId, {
    String? name,
    String? iconCustomEmojiId,
  }) async {
    if (name != null && (name.isEmpty || name.length > 128)) {
      throw TeleverseException(
        "Invalid parameter [name]",
        description: "Name length must be between 1 and 128",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "name": name,
      "icon_custom_emoji_id": iconCustomEmojiId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.editForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to close an open topic in a forum supergroup chat. The bot
  /// must be an administrator in the chat for this to work and must have the
  /// can_manage_topics administrator rights, unless it is the creator of the
  /// topic. Returns True on success.
  Future<bool> closeForumTopic(
    ID chatId,
    int messageThreadId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.closeForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to reopen a closed topic in a forum supergroup chat. The
  /// bot must be an administrator in the chat for this to work and must have
  /// the can_manage_topics administrator rights, unless it is the creator of
  /// the topic. Returns True on success.
  Future<bool> reopenForumTopic(
    ID chatId,
    int messageThreadId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.reopenForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to delete a forum topic along with all its messages in a
  /// forum supergroup chat. The bot must be an administrator in the chat for
  /// this to work and must have the can_delete_messages administrator rights.
  /// Returns True on success.
  Future<bool> deleteForumTopic(
    ID chatId,
    int messageThreadId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.deleteForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to clear the list of pinned messages in a forum topic. The
  /// bot must be an administrator in the chat for this to work and must have
  /// the can_pin_messages administrator right in the supergroup. Returns True
  /// on success.
  Future<bool> unpinAllForumTopicMessages(
    ID chatId,
    int messageThreadId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.unpinAllForumTopicMessages,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to edit the name of the 'General' topic in a forum
  /// supergroup chat. The bot must be an administrator in the chat for this to
  /// work and must have can_manage_topics administrator rights. Returns True on
  /// success.
  Future<bool> editGeneralForumTopic(
    ID chatId,
    String name,
  ) async {
    if (name.isEmpty || name.length > 128) {
      throw TeleverseException(
        "Invalid Parameter [name]",
        description: "Length of name must be between 1 and 64",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "chat_id": chatId.id,
      "name": name,
    };
    final response = await _makeApiBoolCall(
      APIMethod.editGeneralForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to close an open 'General' topic in a forum supergroup
  /// chat. The bot must be an administrator in the chat for this to work and
  /// must have the can_manage_topics administrator rights. Returns True on
  /// success.
  Future<bool> closeGeneralForumTopic(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.closeGeneralForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to reopen a closed 'General' topic in a forum supergroup
  /// chat. The bot must be an administrator in the chat for this to work and
  /// must have the can_manage_topics administrator rights. The topic will be
  /// automatically unhidden if it was hidden. Returns True on success.
  Future<bool> reopenGeneralForumTopic(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.reopenGeneralForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to hide the 'General' topic in a forum supergroup chat.
  /// The bot must be an administrator in the chat for this to work and must
  /// have the can_manage_topics administrator rights. The topic will be
  /// automatically closed if it was open. Returns True on success.
  Future<bool> hideGeneralForumTopic(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.hideGeneralForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to unhide the 'General' topic in a forum supergroup chat.
  /// The bot must be an administrator in the chat for this to work and must
  /// have the can_manage_topics administrator rights. Returns True on success.
  Future<bool> unhideGeneralForumTopic(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiBoolCall(
      APIMethod.unhideGeneralForumTopic,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to send answers to callback queries sent from inline
  /// keyboards. The answer will be displayed to the user as a notification at
  /// the top of the chat screen or as an alert. On success, True is returned.
  Future<bool> answerCallbackQuery(
    String callbackQueryId, {
    String? text,
    bool showAlert = false,
    String? url,
    int cacheTime = 0,
  }) async {
    final params = {
      "callback_query_id": callbackQueryId,
      "text": text,
      "show_alert": showAlert,
      "url": url,
      "cache_time": cacheTime,
    };
    final response = await _makeApiBoolCall(
      APIMethod.answerCallbackQuery,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to change the list of the bot's commands. See this manual
  /// for more details about bot commands. Returns True on success.
  Future<bool> setMyCommands(
    List<BotCommand> commands, {
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    final params = {
      "commands": commands.map((e) => e.toJson()).toList(),
      "scope": scope?.toJson(),
      "language_code": languageCode,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setMyCommands,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to delete the list of the bot's commands for the given
  /// scope and user language. After deletion, higher level commands will be
  /// shown to affected users. Returns True on success.
  Future<bool> deleteMyCommands({
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    final params = {
      "scope": scope?.toJson(),
      "language_code": languageCode,
    };
    final response = await _makeApiBoolCall(
      APIMethod.deleteMyCommands,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get the current list of the bot's commands for the
  /// given scope and user language. Returns an Array of BotCommand objects. If
  /// commands aren't set, an empty list is returned.
  Future<List<BotCommand>> getMyCommands({
    BotCommandScope? scope,
    String? languageCode,
  }) async {
    final params = {
      "scope": scope?.toJson(),
      "language_code": languageCode,
    };
    final response = await _makeApiCall<List>(
      APIMethod.getMyCommands,
      payload: Payload(params),
    );
    return response.map((e) => BotCommand.fromJson(e)).toList();
  }

  /// Use this method to change the bot's menu button in a private chat, or the
  /// default menu button. Returns True on success.
  Future<bool> setChatMenuButton(
    MenuButton menuButton, {
    ID? chatId,
  }) async {
    final params = {
      "chat_id": chatId?.id,
      "menu_button": menuButton.toJson(),
    };
    final response = await _makeApiBoolCall(
      APIMethod.setChatMenuButton,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get the current value of the bot's menu button in a
  /// private chat, or the default menu button. Returns MenuButton on success.
  Future<MenuButton> getChatMenuButton(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getChatMenuButton,
      payload: Payload(params),
    );
    return MenuButton.fromJson(response);
  }

  /// Use this method to change the default administrator rights requested by
  /// the bot when it's added as an administrator to groups or channels. These
  /// rights will be suggested to users, but they are are free to modify the
  /// list before adding the bot. Returns True on success.
  Future<bool> setMyDefaultAdministratorRights({
    ChatAdministratorRights? rights,
    bool? forChannels,
  }) async {
    final params = {
      "rights": rights?.toJson(),
      "for_channels": forChannels,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setMyDefaultAdministratorRights,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get the current default administrator rights of the
  /// bot. Returns ChatAdministratorRights on success.
  Future<ChatAdministratorRights> getMyDefaultAdministratorRights({
    bool? forChannels,
  }) async {
    final params = {
      "for_channels": forChannels,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getMyDefaultAdministratorRights,
      payload: Payload(params),
    );
    return ChatAdministratorRights.fromJson(response);
  }

  /// (Internal) Abstract method for the `editMessageText`
  Future<MessageOrBool> _editMessageText<MessageOrBool>({
    required String text,
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    InlineKeyboardMarkup? replyMarkup,
    LinkPreviewOptions? linkPreviewOptions,
    String? businessConnectionId,
  }) async {
    final params = {
      "inline_message_id": inlineMessageId,
      "chat_id": chatId?.id,
      "message_id": messageId,
      "text": text,
      "parse_mode": parseMode?.toJson(),
      "entities": entities?.map((e) => e.toJson()).toList(),
      "reply_markup": replyMarkup?.toJson(),
      "link_preview": linkPreviewOptions?.toJson(),
      "business_connection_id": businessConnectionId,
    };

    final response = await _makeApiCall(
      APIMethod.editMessageText,
      payload: Payload(params),
    );

    if (MessageOrBool == _Ignore) {
      return _ignore as MessageOrBool;
    }

    if (MessageOrBool == Message) {
      return Message.fromJson(response) as MessageOrBool;
    }
    return response;
  }

  /// Use this method to edit text and game messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline
  ///   messages.
  ///
  /// If you're looking for a way to edit inline messages, use
  /// [editInlineMessageText].
  Future<Message> editMessageText(
    ID chatId,
    int messageId,
    String text, {
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    InlineKeyboardMarkup? replyMarkup,
    LinkPreviewOptions? linkPreviewOptions,
    String? businessConnectionId,
  }) async {
    return await _editMessageText<Message>(
      chatId: chatId,
      text: text,
      messageId: messageId,
      parseMode: parseMode,
      entities: entities,
      replyMarkup: replyMarkup,
      linkPreviewOptions: linkPreviewOptions,
      businessConnectionId: businessConnectionId,
    );
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
    InlineKeyboardMarkup? replyMarkup,
    LinkPreviewOptions? linkPreviewOptions,
    String? businessConnectionId,
  }) async {
    return await _editMessageText<bool>(
      text: text,
      inlineMessageId: inlineMessageId,
      parseMode: parseMode,
      entities: entities,
      replyMarkup: replyMarkup,
      linkPreviewOptions: linkPreviewOptions,
      businessConnectionId: businessConnectionId,
    );
  }

  /// (Internal) Abstract method for editing message captions
  Future<MessageOrBool> _editMessageCaption<MessageOrBool>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    bool? showCaptionAboveMedia,
    String? businessConnectionId,
  }) async {
    final params = {
      "inline_message_id": inlineMessageId,
      "chat_id": chatId?.id,
      "message_id": messageId,
      "caption": caption,
      "parse_mode": parseMode?.toJson(),
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "reply_markup": replyMarkup?.toJson(),
      "show_caption_above_media": showCaptionAboveMedia,
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiCall(
      APIMethod.editMessageCaption,
      payload: Payload(params),
    );

    if (MessageOrBool == _Ignore) {
      return _ignore as MessageOrBool;
    }

    if (MessageOrBool == Message) {
      return Message.fromJson(response) as MessageOrBool;
    }

    return response;
  }

  /// Use this method to edit captions of messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline
  ///   messages.
  ///
  /// If you're looking for a way to edit inline messages, use
  /// [editInlineMessageCaption].
  ///
  /// On success, [Message] is returned.
  Future<Message> editMessageCaption(
    ID chatId,
    int messageId, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    bool? showCaptionAboveMedia,
    String? businessConnectionId,
  }) async {
    return await _editMessageCaption<Message>(
      chatId: chatId,
      messageId: messageId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      replyMarkup: replyMarkup,
      showCaptionAboveMedia: showCaptionAboveMedia,
      businessConnectionId: businessConnectionId,
    );
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
    String inlineMessageId, {
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    bool? showCaptionAboveMedia,
    String? businessConnectionId,
  }) async {
    return await _editMessageCaption<bool>(
      inlineMessageId: inlineMessageId,
      caption: caption,
      parseMode: parseMode,
      captionEntities: captionEntities,
      replyMarkup: replyMarkup,
      showCaptionAboveMedia: showCaptionAboveMedia,
      businessConnectionId: businessConnectionId,
    );
  }

  /// (Internal) Abstract method for editing message media
  Future<MessageOrBool> _editMessageMedia<MessageOrBool>({
    required InputMedia media,
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId?.id,
      "message_id": messageId,
      "inline_message_id": inlineMessageId,
      "reply_markup": replyMarkup?.toJson(),
      "business_connection_id": businessConnectionId,
      "media": media.toJson(),
    };

    final files = _getFiles([
      _MultipartHelper(media.media),
    ]);

    final response = await _makeApiCall(
      APIMethod.editMessageMedia,
      payload: Payload(params, files),
    );

    if (MessageOrBool == _Ignore) {
      return _ignore as MessageOrBool;
    }

    if (MessageOrBool == Message) {
      return Message.fromJson(response) as MessageOrBool;
    }

    return response;
  }

  /// Use this method to edit animation, audio, document, photo, or video
  /// messages, or to add media to text messages. If a message is part of a
  /// message album, then it can be edited only to an audio for audio albums,
  /// only to a document for document albums and to a photo or a video
  /// otherwise. When an inline message is edited, a new file can't be uploaded;
  /// use a previously uploaded file via its file_id or specify a URL. On
  /// success, if the edited message is not an inline message, the edited
  /// [Message] is returned.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline
  ///   messages.
  /// * If you're looking for a way to edit inline messages, use
  ///   [editInlineMessageMedia].
  ///
  /// On success, [Message] is returned.
  Future<Message> editMessageMedia(
    ID chatId,
    int messageId,
    InputMedia media, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    return await _editMessageMedia<Message>(
      media: media,
      chatId: chatId,
      messageId: messageId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
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
    String? businessConnectionId,
  }) async {
    return await _editMessageMedia<bool>(
      media: media,
      inlineMessageId: inlineMessageId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
  }

  /// (Internal) Abstract method for editing message reply markup
  Future<MessageOrBool> _editMessageReplyMarkup<MessageOrBool>({
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId?.id,
      "inline_message_id": inlineMessageId,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiCall(
      APIMethod.editMessageReplyMarkup,
      payload: Payload(params),
    );

    if (MessageOrBool == _Ignore) {
      return _ignore as MessageOrBool;
    }

    if (MessageOrBool == Message) {
      return Message.fromJson(response) as MessageOrBool;
    }

    return response;
  }

  /// Use this method to edit only the reply markup of messages. On success, if
  /// the edited message is not an inline message, the edited Message is
  /// returned, otherwise True is returned.
  ///
  /// IMPORTANT:
  /// * This method is only for editing messages. This won't work for inline
  ///   messages.
  /// * If you're looking for a way to edit inline messages, use
  ///   [editInlineMessageReplyMarkup].
  /// * Use [replyMarkup] parameter to pass new reply markup.
  ///
  /// On success, [Message] is returned.
  Future<Message> editMessageReplyMarkup(
    ID chatId,
    int messageId, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    return await _editMessageReplyMarkup<Message>(
      chatId: chatId,
      messageId: messageId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
  }

  /// Use this method to edit only the reply markup of inline messages.
  ///
  /// IMPORTANT:
  /// * This method is only for editing inline messages.
  /// * If you're looking for a way to edit messages, use
  ///   [editMessageReplyMarkup].
  /// * Use [replyMarkup] parameter to pass new reply markup.
  ///
  /// On success, [bool] is returned.
  Future<bool> editInlineMessageReplyMarkup(
    String inlineMessageId, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    return await _editMessageReplyMarkup<bool>(
      inlineMessageId: inlineMessageId,
      replyMarkup: replyMarkup,
      businessConnectionId: businessConnectionId,
    );
  }

  /// Use this method to stop a poll which was sent by the bot. On success, the
  /// stopped [Poll] is returned.
  Future<Poll> stopPoll(
    ID chatId,
    int messageId, {
    InlineKeyboardMarkup? replyMarkup,
    String? businessConnectionId,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "reply_markup": replyMarkup?.toJson(),
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiJsonCall(
      APIMethod.stopPoll,
      payload: Payload(params),
    );
    return Poll.fromJson(response);
  }

  /// Use this method to delete a message, including service messages, with the
  /// following limitations:
  /// - A message can only be deleted if it was sent less than 48 hours ago.
  /// - Service messages about a supergroup, channel, or forum topic creation
  ///   can't be deleted.
  /// - A dice message in a private chat can only be deleted if it was sent more
  ///   than 24 hours ago.
  /// - Bots can delete outgoing messages in private chats, groups, and
  ///   supergroups.
  /// - Bots can delete incoming messages in private chats.
  /// - Bots granted can_post_messages permissions can delete outgoing messages
  ///   in channels.
  /// - If the bot is an administrator of a group, it can delete any message
  ///   there.
  /// - If the bot has can_delete_messages permission in a supergroup or a
  ///   channel, it can delete any message there.
  ///
  /// Returns [bool] on success.
  Future<bool> deleteMessage(
    ID chatId,
    int messageId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "message_id": messageId,
    };
    final response = _makeApiBoolCall(
      APIMethod.deleteMessage,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to send static .WEBP, animated .TGS, or video .WEBM
  /// stickers. On success, the sent Message is returned.
  ///
  /// Parameters:
  /// - [emoji] - Emoji associated with the sticker; only for just uploaded
  ///   stickers
  Future<Message> sendSticker(
    ID chatId,
    InputFile sticker, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    InlineKeyboardMarkup? replyMarkup,
    String? emoji,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "emoji": emoji,
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
      "sticker": sticker.getValue(),
    };

    final files = _getFiles([
      _MultipartHelper(sticker),
    ]);

    final response = await _makeApiJsonCall(
      APIMethod.sendSticker,
      payload: Payload(params, files),
    );

    return Message.fromJson(response);
  }

  /// Use this method to get a sticker set. On success, a StickerSet object is
  /// returned.
  Future<StickerSet> getStickerSet(
    String name,
  ) async {
    final params = {
      "name": name,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getStickerSet,
      payload: Payload(params),
    );
    return StickerSet.fromJson(response);
  }

  /// Use this method to get information about custom emoji stickers by their
  /// identifiers. Returns an Array of Sticker objects.
  Future<List<Sticker>> getCustomEmojiStickers(
    List<String> customEmojiIds,
  ) async {
    final params = {
      "custom_emoji_ids": customEmojiIds,
    };
    List<dynamic> response = await _makeApiCall<List>(
      APIMethod.getCustomEmojiStickers,
      payload: Payload(params),
    );
    return response.map((e) => Sticker.fromJson(e)).toList();
  }

  /// Use this method to upload a file with a sticker for later use in the
  /// [createNewStickerSet] and [addStickerToSet] methods (the file can be used
  /// multiple times). Returns the uploaded File on success.
  Future<File> uploadStickerFile(
    int userId,
    InputFile sticker,
    InputStickerFormat stickerFormat,
  ) async {
    final params = {
      "user_id": userId,
      "sticker_format": stickerFormat.toJson(),
      "sticker": sticker.getValue(),
    };

    final files = _getFiles([
      _MultipartHelper(sticker),
    ]);
    if (files.isNotEmpty) {
      final response = await _makeApiJsonCall(
        APIMethod.uploadStickerFile,
        payload: Payload(
          params,
          files,
        ),
      );
      return File.fromJson(response);
    } else {
      throw TeleverseException(
        "Invalid parameter [sticker]",
        description:
            "Only upload file. Use [InputFile.fromFile] to upload file.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }

  /// Use this method to add a new sticker to a set created by the bot. You must
  /// use exactly one of the fields png_sticker, tgs_sticker, or webm_sticker.
  /// Animated stickers can be added to animated sticker sets and only to them.
  /// Animated sticker sets can have up to 50 stickers. Static sticker sets can
  /// have up to 120 stickers. Returns True on success.
  Future<bool> addStickerToSet(
    int userId,
    String name, {
    required InputSticker sticker,
  }) async {
    final params = {
      "user_id": userId,
      "name": name,
      "sticker": sticker.toJson(),
    };

    final files = _getFiles(
      [_MultipartHelper(sticker.sticker)],
    );

    final response = await _makeApiBoolCall(
      APIMethod.addStickerToSet,
      payload: Payload(params, files),
    );

    return response;
  }

  /// Use this method to move a sticker in a set created by the bot to a
  /// specific position. Returns True on success.
  ///
  /// [sticker] File identifier of the sticker. [position] New sticker position
  /// in the set, zero-based.
  Future<bool> setStickerPositionInSet(String sticker, int position) async {
    final params = {
      "sticker": sticker,
      "position": position,
    };
    final response = await _makeApiBoolCall(
      APIMethod.setStickerPositionInSet,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to delete a sticker from a set created by the bot. Returns
  /// True on success.
  Future<bool> deleteStickerFromSet(String sticker) async {
    final params = {
      "sticker": sticker,
    };

    final response = await _makeApiBoolCall(
      APIMethod.deleteStickerFromSet,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to set the thumbnail of a sticker set. Animated thumbnails
  /// can be set for animated sticker sets only. Video thumbnails can be set
  /// only for video sticker sets only. Returns True on success.
  Future<bool> setStickerSetThumbnail(
    String name,
    int userId, {
    InputFile? thumbnail,
    required InputStickerFormat format,
  }) async {
    final params = {
      "name": name,
      "user_id": userId,
      "thumbnail": thumbnail?.getValue(),
      "format": format.toJson(),
    };

    List<Map<String, LocalFile>>? files;

    if (thumbnail != null) {
      files = _getFiles([
        _MultipartHelper(thumbnail),
      ]);
    }

    final response = await _makeApiBoolCall(
      APIMethod.setStickerSetThumbnail,
      payload: Payload(params, files),
    );

    return response;
  }

  /// Use this method to send answers to an inline query. On success, True is
  /// returned. No more than 50 results per query are allowed.
  ///
  /// [button] - A JSON-serialized object describing a button to be shown above
  /// inline query results
  Future<bool> answerInlineQuery(
    String inlineQueryId,
    List<InlineQueryResult> results, {
    int? cacheTime = 300,
    bool? isPersonal,
    String? nextOffset,
    InlineQueryResultsButton? button,
  }) async {
    final params = {
      "inline_query_id": inlineQueryId,
      "results": results.map((e) => e.toJson()).toList(),
      "cache_time": cacheTime,
      "is_personal": isPersonal,
      "next_offset": nextOffset,
      "button": button?.toJson(),
    };

    final response = await _makeApiBoolCall(
      APIMethod.answerInlineQuery,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to set the result of an interaction with a Web App and
  /// send a corresponding message on behalf of the user to the chat from which
  /// the query originated. On success, a SentWebAppMessage object is returned.
  Future<SentWebAppMessage> answerWebAppQuery(
    String webAppQueryId,
    InlineQueryResult result,
  ) async {
    final params = {
      "web_app_query_id": webAppQueryId,
      "result": result.toJson(),
    };

    final response = await _makeApiJsonCall(
      APIMethod.answerWebAppQuery,
      payload: Payload(params),
    );
    return SentWebAppMessage.fromJson(response);
  }

  /// Use this method to send invoices. On success, the sent Message is
  /// returned.
  ///
  /// ## Important Parameters
  /// - [chatId] : Unique identifier for the target chat or username of the
  ///   target channel (in the format @channelusername)
  ///
  /// - [title] : Product name, 1-32 characters
  ///
  /// - [description] : Product description, 1-255 characters
  ///
  /// - [payload] : Bot-defined invoice payload, 1-128 bytes. This will not be
  ///   displayed to the user, use for your internal processes.
  ///
  /// - [providerToken] : Payment token is obtained via
  ///   [@BotFather](https://t.me/botfather). Pass empty string for payments in
  ///   [Telegram Stars](https://t.me/BotNews/90).
  ///
  /// - [currency] : Three-letter ISO 4217 currency code, [see more on
  ///   currencies](https://core.telegram.org/bots/payments#supported-currencies).
  ///   Pass “XTR” for payments in Telegram Stars](https://t.me/BotNews/90).
  ///
  /// - [prices] : Price breakdown, a JSON-serialized list of components (e.g.
  ///   product price, tax, discount, delivery cost, delivery tax, bonus, etc.).
  ///   Must contain exactly one item for payments in Telegram Stars.
  Future<Message> sendInvoice(
    ID chatId, {
    required String title,
    required String description,
    required String payload,
    String? providerToken,
    required String currency,
    required List<LabeledPrice> prices,
    int? messageThreadId,
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
    InlineKeyboardMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
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
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };

    final response = await _makeApiJsonCall(
      APIMethod.sendInvoice,
      payload: Payload(params),
    );

    return Message.fromJson(response);
  }

  /// Use this method to create a link for an invoice. Returns the created
  /// invoice link as String on success.
  ///
  /// ## Important Parameters
  /// - [title] : Product name, 1-32 characters
  ///
  /// - [description] : Product description, 1-255 characters
  ///
  /// - [payload] : Bot-defined invoice payload, 1-128 bytes. This will not be
  ///   displayed to the user, use for your internal processes.
  ///
  /// - [providerToken] : Payment token is obtained via
  ///   [@BotFather](https://t.me/botfather). Pass empty string for payments in
  ///   [Telegram Stars](https://t.me/BotNews/90).
  ///
  /// - [currency] : Three-letter ISO 4217 currency code, [see more on
  ///   currencies](https://core.telegram.org/bots/payments#supported-currencies).
  ///   Pass “XTR” for payments in Telegram Stars](https://t.me/BotNews/90).
  ///
  /// - [prices] : Price breakdown, a JSON-serialized list of components (e.g.
  ///   product price, tax, discount, delivery cost, delivery tax, bonus, etc.).
  ///   Must contain exactly one item for payments in Telegram Stars.
  Future<String> createInvoiceLink({
    required String title,
    required String description,
    required String payload,
    String? providerToken,
    required String currency,
    required List<LabeledPrice> prices,
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
    int? subscriptionPeriod,
    String? businessConnectionId,
  }) async {
    final params = {
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
      "subscription_period": subscriptionPeriod,
      "business_connection_id": businessConnectionId,
    };

    final response = await _makeApiCall<String>(
      APIMethod.createInvoiceLink,
      payload: Payload(params),
    );

    return response;
  }

  /// If you sent an invoice requesting a shipping address and the parameter
  /// is_flexible was specified, the Bot API will send an Update with a
  /// shipping_query field to the bot. Use this method to reply to shipping
  /// queries. On success, True is returned.
  ///
  /// Parameters:
  /// - [shippingQueryId] Unique identifier for the query to be answered
  /// - [ok] Pass True if delivery to the specified address is possible and
  ///   False if there are any problems (for example, if delivery to the
  ///   specified address is not possible)
  /// - [shippingOptions] Required if ok is True. A JSON-serialized array of
  ///   available shipping options.
  /// - [errorMessage] Required if ok is False. Error message in human readable
  ///   form that explains why it is impossible to complete the order (e.g.
  ///   "Sorry, delivery to your desired address is unavailable'). Telegram will
  ///   display this message to the user.
  Future<bool> answerShippingQuery(
    String shippingQueryId,
    bool ok, {
    List<ShippingOption>? shippingOptions,
    String? errorMessage,
  }) async {
    if (ok && shippingOptions == null) {
      throw TeleverseException(
        "Invalid Parameter [shippingOptions]",
        description: "shippingOptions is required if ok is True",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (!ok && errorMessage == null) {
      throw TeleverseException(
        "Invalid Parameter [errorMessage]",
        description: "errorMessage is required if ok is False",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "shipping_query_id": shippingQueryId,
      "ok": ok,
      "shipping_options": shippingOptions?.map((e) => e.toJson()).toList(),
      "error_message": errorMessage,
    };

    final response = await _makeApiBoolCall(
      APIMethod.answerShippingQuery,
      payload: Payload(params),
    );

    return response;
  }

  /// Once the user has confirmed their payment and shipping details, the Bot
  /// API sends the final confirmation in the form of an Update with the field
  /// pre_checkout_query. Use this method to respond to such pre-checkout
  /// queries. On success, True is returned. Note: The Bot API must receive an
  /// answer within 10 seconds after the pre-checkout query was sent.
  ///
  /// Parameters:
  /// - [preCheckoutQueryId] Unique identifier for the query to be answered
  /// - [ok] Specify True if everything is alright (goods are available, etc.)
  ///   and the bot is ready to proceed with the order. Use False if there are
  ///   any problems.
  /// - [errorMessage] Required if ok is False. Error message in human readable
  ///   form that explains the reason for failure to proceed with the checkout
  ///   (e.g. "Sorry, somebody just bought the last of our amazing black
  ///   T-shirts while you were busy filling out your payment details. Please
  ///   choose a different color or garment!"). Telegram will display this
  ///   message to the user.
  Future<bool> answerPreCheckoutQuery(
    String preCheckoutQueryId,
    bool ok, {
    String? errorMessage,
  }) async {
    if (!ok && errorMessage == null) {
      throw TeleverseException(
        "Invalid Parameter [errorMessage]",
        description: "errorMessage is required if ok is False",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "pre_checkout_query_id": preCheckoutQueryId,
      "ok": ok,
      "error_message": errorMessage,
    };

    final response = await _makeApiBoolCall(
      APIMethod.answerPreCheckoutQuery,
      payload: Payload(params),
    );

    return response;
  }

  /// Informs a user that some of the Telegram Passport elements they provided
  /// contains errors. The user will not be able to re-submit their Passport to
  /// you until the errors are fixed (the contents of the field for which you
  /// returned the error must change). Returns True on success. Use this if the
  /// data submitted by the user doesn't satisfy the standards your service
  /// requires for any reason. For example, if a birthday date seems invalid, a
  /// submitted document is blurry, a scan shows evidence of tampering, etc.
  /// Supply some details in the error message to make sure the user knows how
  /// to correct the issues.
  Future<bool> setPassportDataErrors(
    int userId,
    List<PassportElementError> errors,
  ) async {
    final params = {
      "user_id": userId,
      "errors": errors.map((e) => e.toJson()).toList(),
    };

    final response = await _makeApiBoolCall(
      APIMethod.setPassportDataErrors,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to send a game. On success, the sent [Message] is
  /// returned.
  Future<Message> sendGame(
    ID chatId,
    String gameShortName, {
    int? messageThreadId,
    bool? disableNotification,
    bool? protectContent,
    ReplyMarkup? replyMarkup,
    ReplyParameters? replyParameters,
    String? businessConnectionId,
    String? messageEffectId,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "game_short_name": gameShortName,
      "message_thread_id": messageThreadId,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_markup": replyMarkup?.toJson(),
      "reply_parameters": replyParameters?.toJson(),
      "business_connection_id": businessConnectionId,
      "message_effect_id": messageEffectId,
      "allow_paid_broadcast": allowPaidBroadcast,
    };

    final response = await _makeApiJsonCall(
      APIMethod.sendGame,
      payload: Payload(params),
    );

    return Message.fromJson(response);
  }

  /// Use this method to set the score of the specified user in a game message.
  /// On success the [Message] is returned.
  ///
  /// Returns an error, if the new score is not greater than the user's current
  /// score in the chat and [force] is False.
  ///
  /// If you're looking to update a inline message, you can use
  /// [setInlineGameScore] instead.
  Future<Message> setGameScore(
    int userId,
    int score,
    ID chatId,
    int messageId, {
    bool? force,
    bool? disableEditMessage,
  }) async {
    final params = {
      "user_id": userId,
      "score": score,
      "force": force,
      "disable_edit_message": disableEditMessage,
      "chat_id": chatId.id,
      "message_id": messageId,
    };

    final response = await _makeApiJsonCall(
      APIMethod.setGameScore,
      payload: Payload(params),
    );

    return Message.fromJson(response);
  }

  /// Use this method to set the score of the specified user in a game message.
  ///
  /// IMPORTANT: This method will not work if the message is not an inline
  /// message.
  ///
  /// On success the [bool] is returned.
  ///
  /// Returns an error, if the new score is not greater than the user's current
  /// score in the chat and [force] is False.
  Future<bool> setInlineGameScore(
    int userId,
    int score,
    String inlineMessageId, {
    bool? force,
    bool? disableEditMessage,
  }) async {
    final params = {
      "user_id": userId,
      "score": score,
      "force": force,
      "disable_edit_message": disableEditMessage,
      "inline_message_id": inlineMessageId,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setInlineGameScore,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to get data for high score tables. Will return the score
  /// of the specified user and several of their neighbors in a game. Returns an
  /// Array of GameHighScore objects.
  Future<List<GameHighScore>> getGameHighScores(
    int userId, {
    ID? chatId,
    int? messageId,
    String? inlineMessageId,
  }) async {
    if (chatId == null && messageId == null && inlineMessageId == null) {
      throw TeleverseException(
        "Invalid Parameter",
        description:
            "chatId, messageId, and inlineMessageId cannot all be null",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "user_id": userId,
      "chat_id": chatId?.id,
      "message_id": messageId,
      "inline_message_id": inlineMessageId,
    };

    final response = await _makeApiCall<List>(
      APIMethod.getGameHighScores,
      payload: Payload(params),
    );

    return response.map((e) => GameHighScore.fromJson(e)).toList();
  }

  /// Use this method to change the bot's description,  which is shown in the
  /// chat with the bot if the chat is empty.  Returns True on success.
  ///
  /// Params:
  /// - [description] - New bot description; 0-512 characters. Pass an empty
  ///   string to remove the dedicated description for the given language.
  /// - [languageCode] - A two-letter ISO 639-1 language code. If empty, the
  ///   description will be applied to all users for whose language there is no
  ///   dedicated description.
  Future<bool> setMyDescription({
    String? description,
    String? languageCode,
  }) async {
    final params = {
      "description": description,
      "language_code": languageCode,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setMyDescription,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to get the current bot description for the given user
  /// language. Returns [BotDescription] on success.
  Future<BotDescription> getMyDescription({
    String? languageCode,
  }) async {
    final params = {
      "language_code": languageCode,
    };

    final response = await _makeApiJsonCall(
      APIMethod.getMyDescription,
      payload: Payload(params),
    );

    return BotDescription.fromJson(response);
  }

  /// Use this method to change the bot's short description, which is shown on
  /// the bot's profile page and is sent together with the link when users share
  /// the bot. Returns True on success.
  Future<bool> setMyShortDescription({
    String? shortDescription,
    String? languageCode,
  }) async {
    final params = {
      "short_description": shortDescription,
      "language_code": languageCode,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setMyShortDescription,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to get the current bot short description for the given
  /// user language. Returns [BotShortDescription] on success.
  Future<BotShortDescription> getMyShortDescription({
    String? languageCode,
  }) async {
    final params = {
      "language_code": languageCode,
    };

    final response = await _makeApiJsonCall(
      APIMethod.getMyShortDescription,
      payload: Payload(params),
    );

    return BotShortDescription.fromJson(response);
  }

  /// Use this method to create a new sticker set owned by a user. The bot will
  /// be able to edit the sticker set thus created. Returns True on success.
  ///
  /// Parameters:
  /// - [userId] - User identifier of created sticker set owner
  /// - [name] - Short name of sticker set, to be used in t.me/addstickers/ URLs
  ///   (e.g., animals). Can contain only English letters, digits and
  ///   underscores. Must begin with a letter, can't contain consecutive
  ///   underscores and must end in "_by_BOT_USERNAME". Where BOT_USERNAME is case
  ///   insensitive. 1-64 characters.
  /// - [title] - Sticker set title, 1-64 characters
  /// - [stickers] - List of stickers to be added to the set
  /// - [stickerType] - Sticker type
  /// - [needsRepainting] - Pass True if stickers in the sticker set must be
  ///   repainted to the color of text when used in messages, the accent color
  ///   if used as emoji status, white on chat photos, or another appropriate
  ///   color based on context; for custom emoji sticker sets only
  Future<bool> createNewStickerSet({
    required int userId,
    required String name,
    required String title,
    required List<InputSticker> stickers,
    StickerType stickerType = StickerType.regular,
    bool needsRepainting = false,
  }) async {
    final params = {
      "user_id": userId,
      "name": name,
      "title": title,
      "sticker_type": stickerType.toJson(),
      "needs_repainting": needsRepainting,
    };
    List<Map<String, dynamic>> stickersList = [];
    List<_MultipartHelper> helpers = [];

    final length = stickers.length;
    for (int i = 0; i < length; i++) {
      stickersList.add(stickers[i].toJson());
      helpers.add(_MultipartHelper(
        stickers[i].sticker,
      ));
    }

    final files = _getFiles(helpers);
    params["stickers"] = stickersList;

    final response = await _makeApiBoolCall(
      APIMethod.createNewStickerSet,
      payload: Payload(params, files),
    );

    return response;
  }

  /// Use this method to set the thumbnail of a custom emoji sticker set.
  /// Returns True on success.
  ///
  /// Parameters:
  /// - [name] - Sticker set name
  /// - [customEmojiId] - Custom emoji identifier of a sticker from the sticker
  ///   set; pass an empty string to drop the thumbnail and use the first
  ///   sticker as the thumbnail.
  Future<bool> setCustomEmojiStickerSetThumbnail(
    String name, {
    String? customEmojiId,
  }) async {
    final params = {
      "name": name,
      "custom_emoji_id": customEmojiId,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setCustomEmojiStickerSetThumbnail,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to set the title of a created sticker set. Returns True on
  /// success.
  ///
  /// Parameters:
  /// - [name] - Sticker set name
  /// - [title] - New sticker set title; 1-64 characters
  Future<bool> setStickerSetTitle(
    String name,
    String title,
  ) async {
    final params = {
      "name": name,
      "title": title,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setStickerSetTitle,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to delete a sticker set that was created by the bot.
  /// Returns True on success.
  ///
  /// Parameters:
  /// - [name] - Sticker set name
  Future<bool> deleteStickerSet(
    String name,
  ) async {
    final params = {
      "name": name,
    };

    final response = await _makeApiBoolCall(
      APIMethod.deleteStickerSet,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to change the list of emoji assigned to a regular or
  /// custom emoji sticker. The sticker must belong to a sticker set created by
  /// the bot. Returns True on success.
  ///
  /// Parameters:
  /// - [sticker] - File identifier of the sticker
  /// - [emojiList] - A JSON-serialized list of 1-20 emoji associated with the
  ///   sticker
  Future<bool> setStickerEmojiList(
    String sticker,
    List<String> emojiList,
  ) async {
    final params = {
      "sticker": sticker,
      "emoji_list": emojiList,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setStickerEmojiList,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to change search keywords assigned to a regular or custom
  /// emoji sticker. The sticker must belong to a sticker set created by the
  /// bot. Returns True on success.
  ///
  /// Parameters:
  /// - [sticker] - File identifier of the sticker
  /// - [keywords] - A JSON-serialized list of 0-20 search keywords for the
  ///   sticker with total length of up to 64 characters
  Future<bool> setStickerKeywords(
    String sticker,
    List<String> keywords,
  ) async {
    final params = {
      "sticker": sticker,
      "keywords": keywords,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setStickerKeywords,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to change the mask position of a mask sticker. The sticker
  /// must belong to a sticker set that was created by the bot. Returns True on
  /// success.
  ///
  /// Parameters:
  /// - [sticker] - File identifier of the sticker
  /// - [maskPosition] - New mask position
  Future<bool> setStickerMaskPosition(
    String sticker,
    MaskPosition maskPosition,
  ) async {
    final params = {
      "sticker": sticker,
      "mask_position": maskPosition.toJson(),
    };

    final response = await _makeApiBoolCall(
      APIMethod.setStickerMaskPosition,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to change the bot's name. Returns True on success.
  ///
  /// Since Bot API 6.7
  Future<bool> setMyName({
    String? name,
    String? languageCode,
  }) async {
    final params = {
      "name": name,
      "language_code": languageCode,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setMyName,
      payload: Payload(params),
    );
    return response;
  }

  /// Use this method to get the current bot name for the given user language.
  /// Returns [BotName] on success.
  Future<BotName> getMyName({
    String? languageCode,
  }) async {
    final params = {
      "language_code": languageCode,
    };

    final response = await _makeApiJsonCall(
      APIMethod.getMyName,
      payload: Payload(params),
    );

    return BotName.fromJson(response);
  }

  /// Use this method to clear the list of pinned messages in a General forum
  /// topic. The bot must be an administrator in the chat for this to work and
  /// must have the can_pin_messages administrator right in the supergroup.
  /// Returns True on success.
  Future<bool> unpinAllGeneralForumTopicMessages(
    ID chatId,
  ) async {
    final params = {
      "chat_id": chatId.id,
    };

    final response = await _makeApiBoolCall(
      APIMethod.unpinAllGeneralForumTopicMessages,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to change the chosen reactions on a message. Service
  /// messages can't be reacted to. Automatically forwarded messages from a
  /// channel to its discussion group have the same available reactions as
  /// messages in the channel. In albums, bots must react to the first message.
  /// Returns True on success.
  Future<bool> setMessageReaction(
    ID chatId,
    int messageId, {
    List<ReactionType>? reaction,
    bool? isBig,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_id": messageId,
      "reaction": reaction?.map((e) => e.toJson()).toList(),
      "is_big": isBig,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setMessageReaction,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to delete multiple messages simultaneously. If some of the
  /// specified messages can't be found, they are skipped. Returns True on
  /// success.
  ///
  /// [chatId] Unique identifier for the target chat or username of the target
  /// channel (in the format @channelusername) [messageIds] Identifiers of 1-100
  /// messages to delete. See deleteMessage for limitations on which messages
  /// can be deleted
  Future<bool> deleteMessages(
    ID chatId,
    List<int> messageIds,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "message_ids": messageIds,
    };

    final response = await _makeApiBoolCall(
      APIMethod.deleteMessages,
      payload: Payload(params),
    );

    return response;
  }

  /// Use this method to forward multiple messages of any kind. If some of the
  /// specified messages can't be found or forwarded, they are skipped. Service
  /// messages and messages with protected content can't be forwarded. Album
  /// grouping is kept for forwarded messages. On success, an array of MessageId
  /// of the sent messages is returned.
  ///
  /// [chatId] Unique identifier for the target chat or username of the target
  /// channel (in the format @channelusername) [messageThreadId] Unique
  /// identifier for the target message thread (topic) of the forum; for forum
  /// supergroups only [fromChatId] Unique identifier for the chat where the
  /// original messages were sent (or channel username in the format
  /// @channelusername) [messageIds] Identifiers of 1-100 messages in the chat
  /// from_chat_id to forward. The identifiers must be specified in a strictly
  /// increasing order. [disableNotification] Sends the messages silently. Users
  /// will receive a notification with no sound. [protectContent] Protects the
  /// contents of the forwarded messages from forwarding and saving
  Future<List<MessageId>> forwardMessages(
    ID chatId,
    int? messageThreadId,
    ID fromChatId,
    List<int> messageIds, {
    bool? disableNotification,
    bool? protectContent,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "from_chat_id": fromChatId.id,
      "message_ids": messageIds,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
    };

    final response = await _makeApiCall<List>(
      APIMethod.forwardMessages,
      payload: Payload(params),
    );

    return response.map((e) => MessageId.fromJson(e)).toList();
  }

  /// Use this method to copy messages of any kind. If some of the specified
  /// messages can't be found or copied, they are skipped. Service messages,
  /// giveaway messages, giveaway winners messages, and invoice messages can't
  /// be copied. A quiz poll can be copied only if the value of the field
  /// correct_option_id is known to the bot. The method is analogous to the
  /// method forwardMessages, but the copied messages don't have a link to the
  /// original message. Album grouping is kept for copied messages. On success,
  /// an array of MessageId of the sent messages is returned.
  ///
  /// [chatId] Unique identifier for the target chat or username of the target
  /// channel (in the format @channelusername) [messageThreadId] Unique
  /// identifier for the target message thread (topic) of the forum; for forum
  /// supergroups only [fromChatId] Unique identifier for the chat where the
  /// original messages were sent (or channel username in the format
  /// @channelusername) [messageIds] Identifiers of 1-100 messages in the chat
  /// from_chat_id to copy. The identifiers must be specified in a strictly
  /// increasing order. [disableNotification] Sends the messages silently. Users
  /// will receive a notification with no sound. [protectContent] Protects the
  /// contents of the sent messages from forwarding and saving [removeCaption]
  /// Pass True to copy the messages without their captions
  Future<List<MessageId>> copyMessages(
    ID chatId,
    int? messageThreadId,
    ID fromChatId,
    List<int> messageIds, {
    bool? disableNotification,
    bool? protectContent,
    bool? removeCaption,
    bool? showCaptionAboveMedia,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "message_thread_id": messageThreadId,
      "from_chat_id": fromChatId.id,
      "message_ids": messageIds,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "remove_caption": removeCaption,
      "show_caption_above_media": showCaptionAboveMedia,
      "allow_paid_broadcast": allowPaidBroadcast,
    };

    final response = await _makeApiCall<List>(
      APIMethod.copyMessages,
      payload: Payload(params),
    );

    return response.map((e) => MessageId.fromJson(e)).toList();
  }

  /// Use this method to get the list of boosts added to a chat by a user.
  /// Requires administrator rights in the chat. Returns a UserChatBoosts
  /// object.
  ///
  /// [chatId] Unique identifier for the chat or username of the channel (in the
  /// format @channelusername) (Instance of [ID] this can be either [ChatID] or
  /// [ChannelID]) [userId] Unique identifier of the target user
  Future<UserChatBoosts> getUserChatBoosts(
    ID chatId,
    int userId,
  ) async {
    final params = {
      "chat_id": chatId.id,
      "user_id": userId,
    };

    final response = await _makeApiJsonCall(
      APIMethod.getUserChatBoosts,
      payload: Payload(params),
    );

    return UserChatBoosts.fromJson(response);
  }

  /// Use this method to get information about the connection of the bot with a
  /// business account. Returns a [BusinessConnection] object on success.
  Future<BusinessConnection> getBusinessConnection(
    String businessConnectionId,
  ) async {
    final params = {
      "business_connection_id": businessConnectionId,
    };
    final response = await _makeApiJsonCall(
      APIMethod.getBusinessConnection,
      payload: Payload(params),
    );

    return BusinessConnection.fromJson(response);
  }

  /// Use this method to replace an existing sticker in a sticker set with a new
  /// one. The method is equivalent to calling deleteStickerFromSet, then
  /// addStickerToSet, then setStickerPositionInSet. Returns True on success.
  Future<bool> replaceStickerInSet({
    required int userId,
    required String name,
    required String oldSticker,
    required InputSticker sticker,
  }) async {
    final params = {
      "user_id": userId,
      "name": name,
      "old_sticker": oldSticker,
      "sticker": sticker.toJson(),
    };

    final files = _getFiles(
      [_MultipartHelper(sticker.sticker)],
    );

    final response = _makeApiBoolCall(
      APIMethod.replaceStickerInSet,
      payload: Payload(params, files),
    );

    return response;
  }

  /// Refunds a successful payment in [Telegram Stars](https://t.me/BotNews/90).
  /// Returns True on success.
  ///
  /// (Since Bot API 7.4)
  ///
  /// - [userId] : Identifier of the user whose payment will be refunded
  ///
  /// - [telegramPaymentChargeId] : Telegram payment identifier
  Future<bool> refundStarPayment({
    required int userId,
    required String telegramPaymentChargeId,
  }) async {
    final params = {
      "user_id": userId,
      "telegram_payment_charge_id": telegramPaymentChargeId,
    };

    final response = _makeApiBoolCall(
      APIMethod.refundStarPayment,
      payload: Payload(params),
    );
    return response;
  }

  /// Returns the bot's Telegram Star transactions in chronological order. On
  /// success, returns a [StarTransactions] object.
  ///
  /// See more at https://core.telegram.org/bots/api#getstartransactions
  Future<StarTransactions> getStarTransactions({
    int? offset,
    int? limit = 100,
  }) async {
    final params = {
      "offset": offset,
      "limit": limit,
    };

    final response = await _makeApiJsonCall(
      APIMethod.getStarTransactions,
      payload: Payload(params),
    );

    return StarTransactions.fromJson(response);
  }

  /// Use this method to send paid media to channel chats. On success, the sent
  /// Message is returned.
  Future<Message> sendPaidMedia(
    ID chatId,
    int starCount,
    List<InputPaidMedia> media, {
    String? caption,
    String? parseMode,
    List<MessageEntity>? captionEntities,
    bool? showCaptionAboveMedia,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
    String? businessConnectionId,
    String? payload,
    bool? allowPaidBroadcast,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "star_count": starCount,
      "caption": caption,
      "parse_mode": parseMode,
      "caption_entities": captionEntities?.map((e) => e.toJson()).toList(),
      "show_caption_above_media": showCaptionAboveMedia,
      "disable_notification": disableNotification,
      "protect_content": protectContent,
      "reply_parameters": replyParameters?.toJson(),
      "reply_markup": replyMarkup?.toJson(),
      "business_connection_id": businessConnectionId,
      "payload": payload,
      "allow_paid_broadcast": allowPaidBroadcast,
    };

    List<_MultipartHelper> helpers = [];
    List<Map<String, dynamic>> mediaList = [];
    final length = media.length;

    for (int i = 0; i < length; i++) {
      mediaList.add(media[i].toJson());
      helpers.add(_MultipartHelper(media[i].media));
    }

    final files = _getFiles(helpers);
    params["media"] = mediaList;

    final response = await _makeApiCall<Map<String, dynamic>>(
      APIMethod.sendPaidMedia,
      payload: Payload(params, files),
    );

    return Message.fromJson(response);
  }

  /// Use this method to create a subscription invite link for a channel chat.
  /// The bot must have the can_invite_users administrator rights. The link can
  /// be edited using the method editChatSubscriptionInviteLink or revoked using
  /// the method revokeChatInviteLink. Returns the new invite link as a
  /// ChatInviteLink object.
  Future<ChatInviteLink> createChatSubscriptionInviteLink({
    required ID chatId,
    String? name,
    required int subscriptionPeriod,
    required int subscriptionPrice,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "name": name,
      "subscription_period": subscriptionPeriod,
      "subscription_price": subscriptionPrice,
    };

    final response = await _makeApiJsonCall(
      APIMethod.createChatSubscriptionInviteLink,
      payload: Payload(params),
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Use this method to edit a subscription invite link created by the bot. The
  /// bot must have the can_invite_users administrator rights. Returns the
  /// edited invite link as a ChatInviteLink object.
  Future<ChatInviteLink> editChatSubscriptionInviteLink({
    required ID chatId,
    required String inviteLink,
    String? name,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "name": name,
      "invite_link": inviteLink,
    };

    final response = await _makeApiJsonCall(
      APIMethod.editChatSubscriptionInviteLink,
      payload: Payload(params),
    );

    return ChatInviteLink.fromJson(response);
  }

  /// Allows the bot to cancel or re-enable extension of a subscription paid in
  /// Telegram Stars. Returns `true` on success.
  ///
  /// Parameters:
  /// - [userId] (int, required): Identifier of the user whose subscription will
  ///   be edited.
  /// - [telegramPaymentChargeId] (String, required): Telegram payment
  ///   identifier for the subscription.
  /// - [isCanceled] (bool, required): Pass `true` to cancel the extension of
  ///   the user subscription; the subscription must be active until the end of
  ///   the current subscription period. Pass `false` to allow the user to
  ///   re-enable a subscription that was previously canceled by the bot.
  Future<bool> editUserStarSubscription({
    required int userId,
    required String telegramPaymentChargeId,
    required bool isCanceled,
  }) async {
    final params = {
      "user_id": userId,
      "telegram_payment_charge_id": telegramPaymentChargeId,
      "is_canceled": isCanceled,
    };

    return await _makeApiBoolCall(
      APIMethod.editUserStarSubscription,
      payload: Payload(params),
    );
  }

  /// Changes the emoji status for a given user who previously allowed the bot
  /// to manage their emoji status via the Mini App method
  /// requestEmojiStatusAccess. Returns `true` on success.
  ///
  /// Parameters:
  /// - [userId] (int, required): Unique identifier of the target user.
  /// - [emojiStatusCustomEmojiId] (String, optional): Custom emoji identifier
  ///   of the emoji status to set. Pass an empty string to remove the status.
  /// - [emojiStatusExpirationDate] (int, optional): Expiration date of the
  ///   emoji status, in Unix time, if any.
  Future<bool> setUserEmojiStatus({
    required int userId,
    String? emojiStatusCustomEmojiId,
    int? emojiStatusExpirationDate,
  }) async {
    final params = {
      "user_id": userId,
      "emoji_status_custom_emoji_id": emojiStatusCustomEmojiId,
      "emoji_status_expiration_date": emojiStatusExpirationDate,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setUserEmojiStatus,
      payload: Payload(params),
    );

    return response == true;
  }

  /// Stores a message that can be sent by a user of a Mini App. Returns a
  /// [PreparedInlineMessage] object.
  ///
  /// Parameters:
  /// - [userId] (int, required): Unique identifier of the target user that can
  ///   use the prepared message.
  /// - [result] (InlineQueryResult, required): A JSON-serialized object
  ///   describing the message to be sent.
  /// - [allowUserChats] (bool, optional): Pass `true` if the message can be
  ///   sent to private chats with users.
  /// - [allowBotChats] (bool, optional): Pass `true` if the message can be sent
  ///   to private chats with bots.
  /// - [allowGroupChats] (bool, optional): Pass `true` if the message can be
  ///   sent to group and supergroup chats.
  /// - [allowChannelChats] (bool, optional): Pass `true` if the message can be
  ///   sent to channel chats.
  Future<PreparedInlineMessage> savePreparedInlineMessage({
    required int userId,
    required InlineQueryResult result,
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) async {
    final params = {
      "user_id": userId,
      "result": result.toJson(),
      "allow_user_chats": allowUserChats,
      "allow_bot_chats": allowBotChats,
      "allow_group_chats": allowGroupChats,
      "allow_channel_chats": allowChannelChats,
    };

    final response = await _makeApiJsonCall(
      APIMethod.savePreparedInlineMessage,
      payload: Payload(params),
    );

    return PreparedInlineMessage.fromJson(response);
  }

  /// Returns the list of gifts that can be sent by the bot to users. Requires
  /// no parameters. Returns a [Gifts] object.
  Future<Gifts> getAvailableGifts() async {
    final response = await _makeApiJsonCall(
      APIMethod.getAvailableGifts,
    );

    return Gifts.fromJson(response);
  }

  /// Sends a gift to the given user. The gift can't be converted to Telegram
  /// Stars by the user. Returns `true` on success.
  ///
  /// Parameters:
  /// - [giftId] (String, required): Identifier of the gift.
  /// - [userId] (int): Unique identifier of the target user that will receive
  ///   the gift.
  /// - [chatId] (ID): Required if user_id is not specified. Unique identifier
  ///   for the chat or username of the channel (in the format @channelusername)
  ///   that will receive the gift.
  /// - [text] (String, optional): Text that will be shown along with the gift;
  ///   0-255 characters.
  /// - [textParseMode] (String, optional): Mode for parsing entities in the
  ///   text. Entities other than “bold”, “italic”, “underline”,
  ///   “strikethrough”, “spoiler”, and “custom_emoji” are ignored.
  /// - [textEntities] (`List<MessageEntity>`, optional): A JSON-serialized list
  ///   of special entities that appear in the gift text. Can be specified
  ///   instead of `textParseMode`.
  /// - [payForUpgrade] - Pass True to pay for the gift upgrade from the bot's
  ///   balance, thereby making the upgrade free for the receiver
  Future<bool> sendGift({
    required String giftId,
    int? userId,
    ID? chatId,
    String? text,
    ParseMode? textParseMode,
    List<MessageEntity>? textEntities,
    bool? payForUpgrade,
  }) async {
    final params = {
      "user_id": userId,
      "chat_id": chatId?.id,
      "gift_id": giftId,
      "text": text,
      "text_parse_mode": textParseMode?.toJson(),
      "text_entities": textEntities?.map((e) => e.toJson()).toList(),
      "pay_for_upgrade": payForUpgrade,
    };

    return await _makeApiBoolCall(
      APIMethod.sendGift,
      payload: Payload(params),
    );
  }

  /// Verifies a user on behalf of the organization which is represented by the
  /// bot. Returns True on success.
  ///
  /// Parameters:
  /// - [userId] (int, required): Unique identifier of the target user.
  /// - [customDescription] (String, optional): Custom description for the
  ///   verification; 0-70 characters. Must be empty if the organization isn't
  ///   allowed to provide a custom verification description.
  Future<bool> verifyUser({
    required int userId,
    String? customDescription,
  }) async {
    final params = {
      "user_id": userId,
      "custom_description": customDescription,
    };

    final response = await _makeApiBoolCall(
      APIMethod.verifyUser,
      payload: Payload(params),
    );

    return response;
  }

  /// Verifies a chat on behalf of the organization which is represented by the
  /// bot. Returns True on success.
  ///
  /// Parameters:
  /// - [chatId] (ID, required): Unique identifier for the target chat or
  ///   username of the target channel (in the format @channelusername)
  /// - [customDescription] (String, optional): Custom description for the
  ///   verification; 0-70 characters. Must be empty if the organization isn't
  ///   allowed to provide a custom verification description.
  Future<bool> verifyChat({
    required ID chatId,
    String? customDescription,
  }) async {
    final params = {
      "chat_id": chatId.id,
      "custom_description": customDescription,
    };

    final response = await _makeApiBoolCall(
      APIMethod.verifyChat,
      payload: Payload(params),
    );

    return response;
  }

  /// Removes verification from a user who is currently verified on behalf of
  /// the organization represented by the bot.
  ///
  /// Returns True on success.
  ///
  /// Parameters:
  /// - [userId] - Unique identifier of the target user
  Future<bool> removeUserVerification({
    required int userId,
  }) async {
    final params = {
      "user_id": userId,
    };

    final response = await _makeApiBoolCall(
      APIMethod.removeUserVerification,
      payload: Payload(params),
    );

    return response;
  }

  /// Removes verification from a chat that is currently verified on behalf of
  /// the organization represented by the bot. Returns True on success.
  ///
  /// Returns True on success.
  ///
  /// Parameters:
  /// - [chatId] - Unique identifier for the target chat or username of the
  ///   target channel (in the format @channelusername)
  Future<bool> removeChatVerification({
    required ID chatId,
  }) async {
    final params = {
      "chat_id": chatId.id,
    };

    final response = await _makeApiBoolCall(
      APIMethod.removeChatVerification,
      payload: Payload(params),
    );

    return response;
  }

  /// Marks incoming message as read on behalf of a business account.
  /// Requires the *can_read_messages* business bot right.
  /// Returns *True* on success.
  Future<bool> readBusinessMessage({
    required String businessConnectionId,
    required ID chatId,
    required int messageId,
  }) async {
    final params = {
      "business_connection_id": businessConnectionId,
      "chat_id": chatId.id,
      "message_id": messageId,
    };
    final response = await _makeApiBoolCall(
      APIMethod.readBusinessMessage,
      payload: Payload.from(params),
    );
    return response;
  }

  /// Use this method to delete messages on behalf of a business account.
  ///
  /// Requires the *can_delete_outgoing_messages* business bot right to delete
  /// messages sent by the bot itself, or the *can_delete_all_messages* business
  /// bot right to delete any message.
  ///
  /// Returns *True* on success.
  Future<bool> deleteBusinessMessages({
    required String businessConnectionId,
    required List<int> messageIds,
  }) async {
    if (messageIds.isEmpty || messageIds.length > 100) {
      throw TeleverseException(
        "Invalid Parameter in [deleteBusinessMessages]",
        description: "The number of message IDs must be between 1 and 100.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "business_connection_id": businessConnectionId,
      "message_ids": messageIds,
    };

    final response = await _makeApiBoolCall(
      APIMethod.deleteBusinessMessages,
      payload: Payload.from(params),
    );

    return response;
  }

  /// Use this method to change the first and last name of a managed business account.
  ///
  /// Requires the *can_change_name* business bot right.
  ///
  /// Returns *True* on success.
  Future<bool> setBusinessAccountName({
    required String businessConnectionId,
    required String firstName,
    String? lastName,
  }) async {
    if (firstName.isEmpty || firstName.length > 64) {
      throw TeleverseException(
        "Invalid Parameter in [setBusinessAccountName]",
        description: "The first name must be between 1 and 64 characters.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    if (lastName != null && lastName.length > 64) {
      throw TeleverseException(
        "Invalid Parameter in [setBusinessAccountName]",
        description: "The last name must be between 0 and 64 characters.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "business_connection_id": businessConnectionId,
      "first_name": firstName,
      "last_name": lastName,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setBusinessAccountName,
      payload: Payload.from(params),
    );

    return response;
  }

  /// Use this method to change the username of a managed business account.
  ///
  /// Requires the *can_change_username* business bot right.
  ///
  /// Returns *True* on success.
  Future<bool> setBusinessAccountUsername({
    required String businessConnectionId,
    String? username,
  }) async {
    if (username != null && username.length > 32) {
      throw TeleverseException(
        "Invalid Parameter in [setBusinessAccountUsername]",
        description: "The username must be between 0 and 32 characters.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "business_connection_id": businessConnectionId,
      "username": username,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setBusinessAccountUsername,
      payload: Payload.from(params),
    );

    return response;
  }

  /// Use this method to change the bio of a managed business account.
  ///
  /// Requires the *can_change_bio* business bot right.
  ///
  /// Returns *True* on success.
  Future<bool> setBusinessAccountBio({
    required String businessConnectionId,
    String? bio,
  }) async {
    if (bio != null && bio.length > 140) {
      throw TeleverseException(
        "Invalid Parameter in [setBusinessAccountBio]",
        description: "The bio must be between 0 and 140 characters.",
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final params = {
      "business_connection_id": businessConnectionId,
      "bio": bio,
    };

    final response = await _makeApiBoolCall(
      APIMethod.setBusinessAccountBio,
      payload: Payload.from(params),
    );

    return response;
  }

  /// Use this method to change the profile photo of a managed business account.
  /// Requires the *can_edit_profile_photo* business bot right.
  /// Returns True on success.
  Future<bool> setBusinessAccountProfilePhoto(
    String businessConnectionId,
    InputProfilePhoto photo, {
    bool? isPublic,
  }) async {
    final params = {
      "business_connection_id": businessConnectionId,
      "photo": photo.toJson(),
      "is_public": isPublic,
    };

    final files = _getFiles([_MultipartHelper(photo.file)]);

    final response = await _makeApiBoolCall(
      APIMethod.setBusinessAccountProfilePhoto,
      payload: Payload(params, files),
    );

    return response;
  }

  /// Use this method to remove the current profile photo of a managed business account.
  /// Requires the *can_edit_profile_photo* business bot right.
  /// Returns True on success.
  Future<bool> removeBusinessAccountProfilePhoto(
    String businessConnectionId, {
    bool? isPublic,
  }) async {
    final params = {
      "business_connection_id": businessConnectionId,
      "is_public": isPublic,
    };

    final response = await _makeApiBoolCall(
      APIMethod.removeBusinessAccountProfilePhoto,
      payload: Payload.from(params),
    );

    return response;
  }

  /// Changes the privacy settings pertaining to incoming gifts in a managed
  /// business account. Requires the *can_change_gift_settings* business bot right.
  ///
  /// Returns *True* on success.
  Future<bool> setBusinessAccountGiftSettings(
    String businessConnectionId,
    bool showGiftButton,
    AcceptedGiftTypes acceptedGiftTypes,
  ) async {
    final params = {
      "business_connection_id": businessConnectionId,
      "show_gift_button": showGiftButton,
      "accepted_gift_types": acceptedGiftTypes.toJson(),
    };

    final response = await _makeApiBoolCall(
      APIMethod.setBusinessAccountGiftSettings,
      payload: Payload.from(params),
    );

    return response;
  }
}
