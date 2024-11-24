part of '../../../televerse.dart';

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
///  final bot = Bot("YOUR_BOT_TOKEN");
///  bot.start();
/// }
/// ```
///
class Bot<CTX extends Context> {
  /// Private Constructor!
  Bot._(
    this.token, {
    Fetcher<CTX>? fetcher,
    String baseURL = RawAPI.defaultBase,
    LoggerOptions? loggerOptions,
    this.timeout,
  })  : isLocal = baseURL != RawAPI.defaultBase,
        fetcher = fetcher ?? LongPolling<CTX>(),
        _api = _constructRawAPI(
          token,
          baseURL: _cookBaseUrlString(baseURL),
          loggerOptions: loggerOptions,
          timeout: timeout,
        ) {
    // Set the default error handler
    onError(_defaultErrorHandler);
  }

  /// Create a new bot instance.
  ///
  /// To create a new bot instance, you need to pass the bot token. You can also pass a [fetcher] to the constructor. The fetcher is used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
  ///
  /// ## Using Local Bot API Server
  /// You can use the [Bot] class to create a bot instance that listens to a local Bot API server. Use the [Bot.local] constructor to create a bot instance that listens to a local Bot API server.
  factory Bot(
    String token, {
    Fetcher<CTX>? fetcher,
    LoggerOptions? loggerOptions,
    Duration? timeout,
  }) {
    return Bot._(
      token,
      fetcher: fetcher,
      loggerOptions: loggerOptions,
      timeout: timeout,
    );
  }

  /// Televerse local constructor. This constructor is used to create a bot instance that listens to a local Bot API server.
  ///
  /// [token] - Bot token.
  ///
  /// [baseURL] - Base URL of the Telegram Bot API. By default, the base URL is `http://localhost:8081`. This parameter will be used to create the [RawAPI] instance that points to your local Bot API server.
  ///
  /// [fetcher] - The fetcher - used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
  ///
  /// ## Note
  /// The Bot API server source code is available at [telegram-bot-api](https://github.com/tdlib/telegram-bot-api). You can run it locally and send the requests to your own server instead of ```https://api.telegram.org```.
  ///
  /// If you switch to a local Bot API server, your bot will be able to:
  /// - Download files without a size limit.
  /// - Upload files up to 2000 MB.
  /// - Upload files using their local path and the file URI scheme.
  /// - Use an HTTP URL for the webhook.
  /// - Use any local IP address for the webhook.
  /// - Use any port for the webhook.
  /// - Set max_webhook_connections up to 100000.
  /// - Receive the absolute local path as a value of the file_path field without the need to download the file after a getFile request.
  ///
  /// Learn to setup Local Bot API Server here: https://github.com/tdlib/telegram-bot-api
  factory Bot.local(
    String token, {
    Fetcher<CTX>? fetcher,
    String baseURL = RawAPI.defaultLocalBase,
    LoggerOptions? loggerOptions,
    Duration? timeout,
  }) {
    print('🌐 [Televerse] Using local Bot API server at $baseURL');
    return Bot._(
      token,
      fetcher: fetcher,
      baseURL: baseURL,
      loggerOptions: loggerOptions,
      timeout: timeout,
    );
  }

  /// Constructs a Bot instance from the passed `RawAPI` instance.
  ///
  /// This is useful when your code primarily focuses on RawAPI than listeners and when you'd like to have access to
  /// `RawAPI` instance separately.
  Bot.fromAPI(
    RawAPI api, {
    Fetcher<CTX>? fetcher,
  })  : _api = api,
        isLocal = api._baseUrl != RawAPI.defaultBase,
        timeout = api.timeout,
        token = api.token,
        fetcher = fetcher ?? LongPolling<CTX>() {
    onError(_defaultErrorHandler);
  }

  /// The current bot instance.
  static late Bot _instance;

  /// A flag that indicates whether the Bot API is running locally or not.
  final bool isLocal;

  /// The timeout duration for the requests.
  ///
  /// This is used to set the timeout duration for the requests. When the timeout duration is reached, the request will be cancelled.
  final Duration? timeout;

  /// The fetcher - used to fetch updates from the Telegram servers.
  final Fetcher<CTX> fetcher;

  /// The bot token.
  final String token;

  /// Get the bot instance.
  ///
  /// This getter returns the bot instance. You can use this to access the bot instance from anywhere in your code.
  ///
  /// Notes:
  ///   - If you try to access this getter before creating a bot instance, it will throw an error.
  ///   - The instance will be the last created bot instance.
  ///   - DO NOT use this getter to create a bot instance. Use the [Bot] constructor instead. This getter is only used to access the bot instance.
  static Bot get instance {
    try {
      return _instance;
    } catch (err) {
      throw TeleverseException(
        "Bot instance not found. ",
        description: "Create a Bot instance with a token first.",
        type: TeleverseExceptionType.botNotInitialized,
      );
    }
  }

  /// Raw API instance associated with this bot instance (internal)
  RawAPI _api;

  /// This method actually sets the RawAPI instance.
  ///
  /// This is called right at the moment of the Bot construction.
  static RawAPI _constructRawAPI(
    String token, {
    String baseURL = RawAPI.defaultBase,
    LoggerOptions? loggerOptions,
    Duration? timeout,
  }) {
    final isLocal = baseURL != RawAPI.defaultBase;
    if (isLocal) {
      return RawAPI.local(
        token,
        baseUrl: baseURL,
        loggerOptions: loggerOptions,
        timeout: timeout,
      );
    }
    return RawAPI(
      token,
      loggerOptions: loggerOptions,
      timeout: timeout,
    );
  }

  /// Raw API - gives you access to all the methods of Telegram Bot API.
  ///
  /// This getter returns the [RawAPI] instance. You can use this to access the raw API instance from anywhere in your code.
  ///
  /// For example, you can use the [RawAPI] instance to send a message to a chat:
  /// ```dart
  /// bot.api.sendMessage(ChatID(123456789), "Hello World!");
  /// ```
  RawAPI get api {
    return _api;
  }

  /// This method basically removes the trailing / from base URL
  static String _cookBaseUrlString(String str) {
    if (str.endsWith('/')) {
      str = str.substring(0, str.length - 1);
    }
    return str;
  }

  /// Handles the error in initial `getMe` call
  Future<void> _handleTheGetMeError(Object err, StackTrace st) async {
    if (err is DioException) {
      if (err.type == DioExceptionType.connectionTimeout ||
          err.type == DioExceptionType.receiveTimeout ||
          err.type == DioExceptionType.sendTimeout) {
        err = TeleverseException.timeoutException(st, timeout!);
      }
    }
    final botErr = BotError<CTX>(err, st);
    await _onError(botErr);
  }

  /// Initializes the bot with common setup logic.
  Future<void> _initializeBot() async {
    // Create Fetcher and assign the RawAPI instance
    fetcher.setApi(api);

    // Perform initial /getMe request
    try {
      await getMe();
    } catch (err, st) {
      _handleTheGetMeError(err, st);
    }

    // Set stream controllers
    if (fetcher._updateStreamController == null ||
        fetcher._updateStreamController?.isClosed == true) {
      fetcher._updateStreamController = StreamController<Update>.broadcast();
    }
    // Set instance variable
    _instance = this;
  }

  /// (Internal) A Future that resolves to User of Bot info.
  ///
  /// In other words, initial getMe request :)
  Future<User>? _getMeRequest;

  /// Whether _me is filled or not
  _GetMeStatus _getMeStatus = _GetMeStatus.notInitiated;

  /// Whether the `Bot.me` is filled
  bool get initialized => _getMeStatus == _GetMeStatus.completed;

  /// Information about the bot.
  User? _me;

  /// Get information about the bot.
  ///
  /// This getter returns the bot information. You can use this to access the bot information from anywhere in your code. This getter will be automatically set when the bot starts.
  /// If you try to access this getter before creating a bot instance, it will throw an error.
  User get me {
    if (_me != null) return _me!;

    throw TeleverseException(
      "Bot information not found.",
      description: "This happens when the initial getMe request is "
          "not completed. You can call `bot.getMe` method to set this property.",
      type: TeleverseExceptionType.requestFailed,
    );
  }

  /// Get information about the bot.
  ///
  /// This will also set `bot.me`. If by any chance the request is failed,
  /// this will throw a TeleverseException with the details about the exception.
  ///
  /// Note: As of now this won't be handled in `onError` handler.
  Future<User> getMe() async {
    try {
      if (_me != null) return _me!;

      _getMeStatus = _GetMeStatus.pending;
      _me = await api.getMe();
      _getMeStatus = _GetMeStatus.completed;

      return _me!;
    } catch (err, stack) {
      final exception = TeleverseException.getMeRequestFailed(err, stack);
      throw exception;
    }
  }

  /// Whether the function is async or not.
  /// Thanks to StackOverflow answer: https://stackoverflow.com/a/63109983/10006183
  bool _isAsync(Function fn) {
    if (fn is Future Function(Never)) return true;
    return false;
  }

  /// Preprocessing the Context.
  ///
  /// This method sets additional info if any has to be set. For example, this method currently sets `Context.matches`
  /// parameter if the [scope] is a RegExp handler.
  void _preProcess(HandlerScope<CTX> scope, CTX context) async {
    if (scope.isRegExp) {
      final text = context.msg?.text ?? "";
      if (scope.pattern != null) {
        context._matches = scope.pattern!.allMatches(text).toList();
      }
    }
  }

  /// Processes the Update as per the scope definition.
  Future<void> _processUpdate(HandlerScope<CTX> scope, CTX context) async {
    if (_isAsync(scope.handler!)) {
      try {
        await ((scope.handler!(context)) as Future);
      } catch (err, stack) {
        final botErr = BotError(err, stack, ctx: context);
        await _onError(botErr);
      }
    } else {
      try {
        scope.handler!(context);
      } catch (err, stack) {
        final botErr = BotError(err, stack, ctx: context);
        await _onError(botErr);
      }
    }
  }

  /// Handles an incoming update by creating a context and processing it through
  /// appropriate handler scopes.
  Future<void> _onUpdate(Update update) async {
    final context = await _createContext(update);

    final matchingScopes = await _findMatchingScope(context);
    if (matchingScopes.isEmpty) {
      return;
    }

    final len = matchingScopes.length;
    for (int i = 0; i < len; i++) {
      final considerNext = await _processMatchingScope(
        matchingScopes.elementAt(i),
        context,
      );

      if (!considerNext) break;
    }
  }

  /// Creates a context for the given update
  Future<CTX> _createContext(Update update) async {
    return _contextConstructor(
      api: api,
      me: !initialized ? await _getMeRequest! : me,
      update: update,
    );
  }

  /// Finds the first matching handler scope for an update
  Future<Iterable<HandlerScope<CTX>>> _findMatchingScope(CTX ctx) async {
    // Get scopes matching the update type
    final matchingScopes = _handlerScopes
        .where((scope) => scope.types.contains(ctx.update.type))
        .toList();

    if (matchingScopes.isEmpty) return [];

    // Sort scopes with custom predicates first
    if (matchingScopes.any((scope) => scope.hasCustomPredicate)) {
      matchingScopes.sort(
        (a, b) => b.hasCustomPredicate || b.isConversation ? 1 : -1,
      );
    }

    final candidates = matchingScopes.where(
      (scope) => scope.predicate(ctx),
    );

    final hasConversation = candidates.any((e) {
      return e.isConversation;
    });

    if (hasConversation) {
      return [];
    }

    return candidates;
  }

  /// Processes a matching scope with the given context
  Future<bool> _processMatchingScope(
    HandlerScope<CTX> scope,
    CTX context,
  ) async {
    if (scope.handler == null) return true;
    if (scope.hasCustomPredicate) {
      try {
        final customPass = await scope.options!.customPredicate!(context);
        if (!customPass) return true;
      } catch (err, stack) {
        await _onError(BotError<CTX>(err, stack));
        return false;
      }
    }

    _preProcess(scope, context);

    await _applyMiddlewares(context, () async {
      await _processUpdate(scope, context);
    });
    return false;
  }

  /// Additional infomration on the bot
  ///
  /// This space can be used for plugins or any other utilities to improve user experience
  final Map<String, dynamic> additionalInfo = {};

  /// List of Handler Scopes
  final List<HandlerScope<CTX>> _handlerScopes = [];

  /// List of middlewares added to the bot
  final List<Middleware> _middlewares = [];

  /// Applies middlewares over the passed context
  Future<void> _applyMiddlewares(
    CTX ctx,
    Future<void> Function() handler,
  ) async {
    int index = -1;

    Future<void> next() async {
      index++;

      if (index < _middlewares.length) {
        try {
          await _middlewares[index].handle(ctx, next);
        } catch (err, stack) {
          final botErr = BotError<CTX>(
            err,
            stack,
            sourceIsMiddleware: true,
          );
          _onError(botErr);
        }
      } else {
        try {
          await handler();
        } catch (err, stack) {
          final botErr = BotError<CTX>(err, stack);
          _onError(botErr);
        }
      }
    }

    await next();
  }

  /// Registers a middleware
  void use(MiddlewareBase middleware) {
    switch (middleware) {
      case Middleware():
        _middlewares.add(middleware);
        break;
      case Transformer():
        api.use(middleware);
        break;
    }
  }

  /// Use custom context constructor to specify how custom context instances should be created.
  ///
  /// This method allows you to register a constructor function that creates instances
  /// of a custom context type (`CTX`). The custom context must extend the base `Context` class
  /// and its constructor should match the required parameters (`api`, `me`, and `update`).
  ///
  /// If you specify a custom context type (`Bot<MyCustomContext>`), ensure you register
  /// the constructor using this method (`contextBuilder`) before initializing your bot instance.
  ///
  /// Example usage:
  /// ```dart
  /// class MyCustomContext extends Context {
  ///   MyCustomContext({
  ///     required super.api,
  ///     required super.me,
  ///     required super.update,
  ///   });
  /// }
  ///
  /// final bot = Bot<MyCustomContext>(token);
  /// bot.contextBuilder(MyCustomContext.new);
  /// ```
  ///
  /// If you encounter a `TypeError` indicating that the constructor for your custom context
  /// hasn't been registered, make sure to use this method to specify the constructor.
  ///
  /// ```dart
  /// bot.contextBuilder(MyCustomContext.new);
  /// ```
  ///
  /// For detailed usage instructions and examples, visit the [Custom Context Documentation](https://televerse.xooniverse.com/advanced/custom-context.html).
  void contextBuilder(ContextConstructor<CTX> constructor) {
    _usingCustomContext = true;
    _contextConstructor = constructor;
  }

  /// A flag that indicates whether the Bot is configured to use a custom context.
  ///
  /// When set to `true`, it means the Bot instance is using a custom context type (`CTX`),
  /// and the context constructor (`_contextConstructor`) has been registered to create instances
  /// of this custom context.
  ///
  /// To use a custom context, you must register its constructor using [contextBuilder].
  ///
  /// Example usage:
  /// ```dart
  /// final bot = Bot<MyCustomContext>(token);
  /// bot.contextBuilder(MyCustomContext.new);
  /// print(bot.isUsingCustomContext); // true
  /// ```
  bool get isUsingCustomContext => _usingCustomContext;

  /// Internal flag to track whether the Bot is configured to use a custom context.
  bool _usingCustomContext = false;

  /// Context constructor function used to create instances of the custom context (`CTX`).
  ///
  /// This function is registered using [contextBuilder] and is responsible for creating
  /// instances of the custom context type (`CTX`) with the required parameters (`api`, `me`, `update`).
  ///
  /// Example implementation:
  /// ```dart
  /// ContextConstructor<CTX> _contextConstructor = ({
  ///   required RawAPI api,
  ///   required User me,
  ///   required Update update,
  /// }) {
  ///   return MyCustomContext(api: api, me: me, update: update);
  /// };
  /// ```
  ContextConstructor<CTX> _contextConstructor = ({
    required RawAPI api,
    required User me,
    required Update update,
  }) {
    try {
      return Context(api: api, me: me, update: update) as CTX;
    } catch (err) {
      if (err is TypeError) BotExtras.handleTypeError<CTX>();
      rethrow;
    }
  };

  /// To manually handle updates without fetcher
  ///
  /// This method is useful when you want to use a custom webhook server instead of the default one provided by Televerse,
  /// or to use in a cloud function.
  /// use Update.fromJson(json) to convert the json to an update.
  Future<void> handleUpdate(Update update) => _onUpdate(update);

  /// Initialize the bot.
  ///
  /// This method simply initalizes the bot - performs the initial getMe request
  /// to fill the `bot.me` property.
  Future<void> init() async {
    if (!initialized) {
      await _initializeBot();
    }
  }

  /// Start polling or webhook listener for fetching updates.
  ///
  /// Note: This method must be awaited.
  Future<void> start() async {
    if (!initialized) {
      await _initializeBot();
    }

    fetcher._updateSubscription = fetcher.onUpdate().listen(
          _onUpdate,
          onDone: _onStop,
        );

    try {
      await fetcher.start();
    } catch (err, stack) {
      await fetcher.stop();
      final botErr = BotError<CTX>(err, stack);
      await _onError(botErr);
    }
  }

  /// Stop listening for updates.
  Future<void> stop({
    bool shouldCloseHttpClient = true,
  }) {
    if (shouldCloseHttpClient) {
      api.closeClient();
    }
    return fetcher.stop();
  }

  /// Stream of [Update] objects.
  ///
  /// This getter returns a stream of [Update] objects. You can use this to listen to incoming updates from Telegram servers.
  Stream<Update> get updatesStream {
    return fetcher.onUpdate();
  }

  /// On Stop Handler
  FutureOr<void> Function() _onStop = () {};

  /// Registers a callback when the the bot is stopped.
  ///
  /// This can be used to clean up resources.
  void onStop(FutureOr<void> Function() callback) {
    _onStop = callback;
  }

  /// Handler for unexpected errors.
  late FutureOr<void> Function(BotError<CTX> error) _onError;

  /// Registers a callback for any unexpected error.
  ///
  /// The `err` parameter will be an instance of [BotError].
  ///
  /// The handler will be called whenever one of the following exceptions are thrown,
  /// or any unexpected error is thrown:
  ///  - [TelegramException]
  ///  - [LongPollingException]
  ///  - [TeleverseException]
  ///
  /// When a [LongPollingException] is thrown, the fetcher will be stopped and
  /// waits for the [handler] to finish executing. After that, the fetcher will
  /// be started again.
  ///
  /// Note: you DON'T have to manually wait for the [ResponseParameters.retryAfter] duration.
  /// The fetcher will automatically wait for the duration and start polling again.
  void onError(
    void Function(BotError<CTX> err) handler,
  ) {
    _onError = handler;
    fetcher.onError(handler);
  }
}
