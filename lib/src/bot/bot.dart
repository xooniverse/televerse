// File: lib/src/bot/bot.dart
part of '../../televerse.dart';

/// The main Bot class for creating and managing Telegram bots.
///
/// This class provides a high-level, type-safe interface for building Telegram bots.
/// It extends [Composer] to provide middleware composition capabilities and includes
/// methods for handling different types of updates with full generic support.
///
/// The Bot class supports:
/// - Generic context types for type safety
/// - Middleware composition and error handling
/// - Multiple update fetching strategies (long polling, webhooks)
/// - Filter-based update routing
/// - Plugin system for extensibility
/// - Comprehensive error handling
///
/// Example:
/// ```dart
/// final bot = Bot<Context>('YOUR_BOT_TOKEN');
///
/// bot.command('start', (ctx) async {
///   await ctx.reply('Hello! Welcome to my bot.');
/// });
///
/// bot.hears('hello', (ctx) async {
///   await ctx.reply('Hi there! 👋');
/// });
///
/// bot.catch((error) async {
///   print('Bot error: ${error.error}');
/// });
///
/// await bot.start();
/// ```
class Bot<CTX extends Context> extends Composer<CTX> {
  /// The bot token used for authentication.
  final String token;

  /// The RawAPI instance for making Telegram Bot API calls.
  final RawAPI api;

  /// Information about the bot.
  BotInfo botInfo;

  /// Factory function for creating context instances.
  final ContextFactory<CTX> _contextFactory;

  /// List of installed plugins.
  final List<BotPlugin<CTX>> _plugins = [];

  /// The current update fetcher.
  UpdateFetcher? _currentFetcher;

  /// Whether the bot is currently running.
  bool _isRunning = false;

  /// Whether the bot has been initialized.
  bool _isInitialized = false;

  /// Completer for the start operation.
  Completer<void>? _startCompleter;

  /// Subscription to the update fetcher's stream.
  StreamSubscription<Update>? _fetcherSubscription;

  /// Statistics about bot operation.
  BotStats _stats = BotStats.empty();

  /// Creates a new Bot instance.
  ///
  /// Parameters:
  /// - [token]: The bot token obtained from @BotFather
  /// - [contextFactory]: Optional factory for creating custom context types
  /// - [botInfo]: Optional bot information (will be fetched if not provided)
  /// - [httpClient]: Optional custom HTTP client
  /// - [baseUrl]: Optional custom base URL for API requests
  ///
  /// Example:
  /// ```dart
  /// // Basic bot
  /// final bot = Bot<Context>('YOUR_BOT_TOKEN');
  ///
  /// // Bot with custom context
  /// final bot = Bot<MyContext>(
  ///   'YOUR_BOT_TOKEN',
  ///   contextFactory: MyContext.new,
  /// );
  /// ```
  Bot(
    this.token, {
    ContextFactory<CTX>? contextFactory,
    BotInfo? botInfo,
    HttpClient? httpClient,
    String? baseUrl,
  })  : _contextFactory = contextFactory ?? _defaultContextFactory,
        botInfo = botInfo ?? const BotInfo(),
        api = RawAPI(token, httpClient: httpClient, baseUrl: baseUrl);

  /// Creates a Bot instance for use with a local Bot API server.
  ///
  /// This constructor configures the bot to use a local Bot API server instance
  /// instead of the official Telegram servers. This is useful for handling
  /// large files or when you need more control over the API server.
  ///
  /// Parameters:
  /// - [token]: The bot token
  /// - [url]: The URL of your local Bot API server
  /// - [contextFactory]: Optional factory for creating custom context types
  /// - [botInfo]: Optional bot information
  /// - [httpClient]: Optional custom HTTP client
  ///
  /// Example:
  /// ```dart
  /// final bot = Bot.local(
  ///   'YOUR_BOT_TOKEN',
  ///   'http://localhost:8081',
  /// );
  /// ```
  factory Bot.local(
    String token,
    String url, {
    ContextFactory<CTX>? contextFactory,
    BotInfo? botInfo,
    HttpClient? httpClient,
  }) {
    return Bot(
      token,
      contextFactory: contextFactory,
      botInfo: botInfo,
      httpClient: httpClient,
      baseUrl: url,
    );
  }

  /// Creates a Bot instance from an existing RawAPI instance.
  ///
  /// This constructor is useful when you want to share a RawAPI instance
  /// across multiple bots or when you need more control over the API configuration.
  ///
  /// Parameters:
  /// - [api]: The pre-configured RawAPI instance
  /// - [contextFactory]: Optional factory for creating custom context types
  /// - [botInfo]: Optional bot information (will be fetched if not provided)
  ///
  /// Example:
  /// ```dart
  /// // Create and configure API instance
  /// final api = RawAPI('YOUR_BOT_TOKEN');
  /// api.use(LoggingTransformer());
  /// api.use(RetryTransformer());
  ///
  /// // Create bot from API
  /// final bot = Bot.fromAPI<Context>(
  ///   api,
  ///   contextFactory: MyContext.new,
  /// );
  ///
  /// // Share API across multiple bots
  /// final bot1 = Bot.fromAPI<Context>(api);
  /// final bot2 = Bot.fromAPI<MyContext>(api, contextFactory: MyContext.new);
  /// ```
  factory Bot.fromAPI(
    RawAPI api, {
    ContextFactory<CTX>? contextFactory,
    BotInfo? botInfo,
  }) {
    return Bot._(
      api,
      contextFactory: contextFactory ?? _defaultContextFactory,
      botInfo: botInfo ?? const BotInfo(),
    );
  }

  /// Private constructor for factory methods.
  Bot._(
    this.api, {
    required ContextFactory<CTX> contextFactory,
    required this.botInfo,
  })  : _contextFactory = contextFactory,
        token = api.token;

  // ===============================
  // Bot Lifecycle
  // ===============================

  /// Initializes the bot.
  ///
  /// This method fetches bot information from Telegram and prepares
  /// the bot for operation. It's called automatically when the bot starts,
  /// but can be called manually for early initialization.
  ///
  /// Returns the updated [BotInfo] with the bot's details.
  Future<BotInfo> initialize() async {
    if (_isInitialized) return botInfo;

    try {
      final me = await api.getMe();
      final updatedBotInfo = BotInfo.fromUser(me);

      botInfo = updatedBotInfo;
      _isInitialized = true;

      return updatedBotInfo;
    } catch (error, stackTrace) {
      throw BotError<CTX>.fromMiddleware(error, stackTrace, null);
    }
  }

  /// Starts the bot with the specified fetcher.
  ///
  /// This method initializes the bot (if not already done), starts the
  /// update fetcher, and begins processing incoming updates.
  ///
  /// Parameters:
  /// - [fetcher]: The update fetcher to use (defaults to long polling)
  ///
  /// Example:
  /// ```dart
  /// // Start with default long polling
  /// await bot.start();
  ///
  /// // Start with custom long polling config
  /// await bot.start(LongPollingFetcher(
  ///   api,
  ///   config: LongPollingConfig.highThroughput(),
  /// ));
  ///
  /// // Start with webhook
  /// await bot.start(WebhookFetcher(
  ///   api: api,
  ///   config: WebhookConfig.production('https://yourdomain.com/webhook'),
  /// ));
  /// ```
  Future<void> start([UpdateFetcher? fetcher]) async {
    if (_isRunning) {
      throw TeleverseException(
        'Bot is already running',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    _startCompleter = Completer<void>();

    try {
      // Initialize bot if not already done
      if (!_isInitialized) {
        await initialize();
      }

      // Set up the fetcher
      _currentFetcher = fetcher ?? LongPollingFetcher(api);
      _isRunning = true;
      _stats = BotStats.empty();

      // Subscribe to updates
      _fetcherSubscription = _currentFetcher!.updates.listen(
        _handleUpdate,
        onError: _handleFetcherError,
        onDone: () => _handleFetcherDone(),
      );

      // Start the fetcher
      await _currentFetcher!.start();

      print('🤖 Bot started successfully!');
      if (botInfo.username != null) {
        print('📝 Bot username: @${botInfo.username}');
      }

      // Wait until the bot is stopped
      await _startCompleter!.future;
    } catch (error, stackTrace) {
      _isRunning = false;
      _startCompleter?.completeError(error, stackTrace);
      rethrow;
    }
  }

  /// Stops the bot.
  ///
  /// This method gracefully shuts down the bot by stopping the update fetcher
  /// and canceling all subscriptions.
  Future<void> stop() async {
    if (!_isRunning) return;

    print('🛑 Stopping bot...');

    try {
      _isRunning = false;

      // Cancel the fetcher subscription
      await _fetcherSubscription?.cancel();
      _fetcherSubscription = null;

      // Stop the fetcher
      await _currentFetcher?.stop();
      _currentFetcher = null;

      print('✅ Bot stopped successfully!');
      _startCompleter?.complete();
    } catch (error, stackTrace) {
      print('⚠️  Error stopping bot: $error');
      _startCompleter?.completeError(error, stackTrace);
    } finally {
      _startCompleter = null;
    }
  }

  /// Closes the bot and releases all resources.
  ///
  /// This method should be called when you're completely done with the bot
  /// to properly clean up resources like HTTP connections.
  Future<void> close() async {
    await stop();

    // Close the fetcher
    await _currentFetcher?.close();

    // Close the API
    await api.closeClient();
  }

  // ===============================
  // Update Handling
  // ===============================

  /// Handles an incoming update.
  ///
  /// This method creates a context for the update and processes it through
  /// the middleware chain.
  Future<void> _handleUpdate(Update update) async {
    if (!_isRunning) return;

    final startTime = DateTime.now();
    CTX? ctx;

    try {
      // Create context
      ctx = _contextFactory(update, api, botInfo);

      // Update statistics
      _updateStats(processed: true);

      // Process through middleware chain
      await handle(ctx);

      // Update success statistics
      final duration = DateTime.now().difference(startTime);
      _updateSuccessStats(duration);
    } catch (error, stackTrace) {
      final duration = DateTime.now().difference(startTime);
      _updateErrorStats(duration);

      // Create bot error
      final botError = BotError<CTX>.fromMiddleware(
        error,
        stackTrace,
        ctx,
      );

      // Handle the error through the error handling system
      await _handleErrorFromMiddleware(botError);
    }
  }

  /// Handles errors from the update fetcher.
  void _handleFetcherError(Object error, StackTrace stackTrace) {
    if (!_isRunning) return;

    _updateStats(processed: false);

    final botError = BotError<CTX>.fromFetcher(error, stackTrace);

    // Try to handle through error system
    unawaited(_handleErrorFromMiddleware(botError));
  }

  /// Handles when the fetcher stream is done.
  void _handleFetcherDone() {
    if (_isRunning) {
      print('⚠️  Update fetcher stream closed unexpectedly');
      unawaited(stop());
    }
  }

  /// Handles middleware errors.
  Future<void> _handleErrorFromMiddleware(BotError<CTX> botError) async {
    // Use the inherited error handling from Composer
    await _handleUnhandledError(
      botError.error,
      botError.stackTrace,
      botError.ctx,
    );
  }

  // ===============================
  // Convenience Methods for Filters
  // ===============================

  /// Adds a handler for a specific command.
  ///
  /// Parameters:
  /// - [command]: The command name (without leading slash)
  /// - [handler]: The handler function
  /// - [caseSensitive]: Whether command matching is case sensitive
  ///
  /// Example:
  /// ```dart
  /// bot.command('start', (ctx) async {
  ///   await ctx.reply('Welcome! 👋');
  /// });
  ///
  /// bot.command('Help', (ctx) async {
  ///   await ctx.reply('Available commands: /start, /help');
  /// }, caseSensitive: true);
  /// ```
  Bot<CTX> command(
    String command,
    UpdateHandler<CTX> handler, {
    bool caseSensitive = false,
  }) {
    return filterWithFilter(
      CommandFilter<CTX>(command, caseSensitive: caseSensitive),
      handler,
    );
  }

  /// Adds a handler for text messages that match a pattern.
  ///
  /// The pattern can be a [String] for exact matching or a [RegExp] for
  /// regular expression matching.
  ///
  /// Parameters:
  /// - [pattern]: String or RegExp pattern to match
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// // Exact text matching
  /// bot.hears('hello', (ctx) async {
  ///   await ctx.reply('Hello there! 👋');
  /// });
  ///
  /// // Regular expression matching
  /// bot.hears(RegExp(r'(?i)good (morning|evening)'), (ctx) async {
  ///   await ctx.reply('Good ${match.group(1)} to you too!');
  /// });
  /// ```
  Bot<CTX> hears(
    Pattern pattern,
    UpdateHandler<CTX> handler,
  ) {
    Filter<CTX> filter;

    if (pattern is String) {
      filter = TextFilter<CTX>(text: pattern);
    } else if (pattern is RegExp) {
      filter = RegexFilter<CTX>(pattern);
    } else {
      throw ArgumentError('Pattern must be String or RegExp');
    }

    return filterWithFilter(filter, handler);
  }

  /// Adds a handler that runs for any text message.
  ///
  /// This is a convenience method for handling all text messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// bot.onText((ctx) async {
  ///   final text = ctx.text!;
  ///   await ctx.reply('You said: $text');
  /// });
  /// ```
  Bot<CTX> onText(UpdateHandler<CTX> handler) {
    return filterWithFilter(TextMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for callback queries.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// // Handle any callback query
  /// bot.onCallbackQuery((ctx) async {
  ///   await ctx.answerCallbackQuery(text: 'Button pressed!');
  /// });
  ///
  /// // Handle specific callback data
  /// bot.callbackQuery('button_1', (ctx) async {
  ///   await ctx.answerCallbackQuery(text: 'You pressed button 1!');
  /// });
  /// ```
  Bot<CTX> onCallbackQuery(UpdateHandler<CTX> handler) {
    return filterWithFilter(CallbackQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for callback queries with specific data.
  ///
  /// Parameters:
  /// - [data]: The callback data to match
  /// - [handler]: The handler function
  Bot<CTX> callbackQuery(Pattern data, UpdateHandler<CTX> handler) {
    return filterWithFilter(CallbackQueryFilter<CTX>(data: data), handler);
  }

  /// Adds a handler for inline queries.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// bot.onInlineQuery((ctx) async {
  ///   final results = [
  ///     InlineQueryResultArticle(
  ///       id: '1',
  ///       title: 'Sample Result',
  ///       inputMessageContent: InputTextMessageContent(
  ///         messageText: 'Hello from inline query!',
  ///       ),
  ///     ),
  ///   ];
  ///   await ctx.answerInlineQuery(results);
  /// });
  /// ```
  Bot<CTX> onInlineQuery(UpdateHandler<CTX> handler) {
    return filterWithFilter(InlineQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for inline queries with specific data.
  ///
  /// Parameters:
  /// - [query]: The callback data to match
  /// - [handler]: The handler function
  Bot<CTX> inlineQuery(Pattern query, UpdateHandler<CTX> handler) {
    return filterWithFilter(InlineQueryFilter<CTX>(query: query), handler);
  }

  /// Adds a handler for messages with photos.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// bot.onPhoto((ctx) async {
  ///   await ctx.reply('Nice photo! 📸');
  /// });
  /// ```
  Bot<CTX> onPhoto(UpdateHandler<CTX> handler) {
    return filterWithFilter(PhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with documents.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onDocument(UpdateHandler<CTX> handler) {
    return filterWithFilter(DocumentFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with stickers.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onSticker(UpdateHandler<CTX> handler) {
    return filterWithFilter(StickerFilter<CTX>(), handler);
  }

  /// Adds a handler for private chat messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// bot.onPrivateChat((ctx) async {
  ///   await ctx.reply('This is a private conversation!');
  /// });
  /// ```
  Bot<CTX> onPrivateChat(UpdateHandler<CTX> handler) {
    return filterWithFilter(PrivateChatFilter<CTX>(), handler);
  }

  /// Adds a handler for group chat messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onGroupChat(UpdateHandler<CTX> handler) {
    return filterWithFilter(GroupChatFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with animations.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// bot.onAnimation((ctx) async {
  ///   await ctx.reply('Nice animation! 🎬');
  /// });
  /// ```
  Bot<CTX> onAnimation(UpdateHandler<CTX> handler) {
    return filterWithFilter(AnimationFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with audio files.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onAudio(UpdateHandler<CTX> handler) {
    return filterWithFilter(AudioFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with video files.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onVideo(UpdateHandler<CTX> handler) {
    return filterWithFilter(VideoFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with video notes.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onVideoNote(UpdateHandler<CTX> handler) {
    return filterWithFilter(VideoNoteFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with voice notes.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onVoice(UpdateHandler<CTX> handler) {
    return filterWithFilter(VoiceFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with contacts.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onContact(UpdateHandler<CTX> handler) {
    return filterWithFilter(ContactFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with dice.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onDice(UpdateHandler<CTX> handler) {
    return filterWithFilter(DiceFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with games.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onGame(UpdateHandler<CTX> handler) {
    return filterWithFilter(GameFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with polls.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPollMessage(UpdateHandler<CTX> handler) {
    return filterWithFilter(PollMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with venue information.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onVenue(UpdateHandler<CTX> handler) {
    return filterWithFilter(VenueFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with location data.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onLocation(UpdateHandler<CTX> handler) {
    return filterWithFilter(LocationFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with live location updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onLiveLocation(UpdateHandler<CTX> handler) {
    return filterWithFilter(LiveLocationFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with captions.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onCaption(UpdateHandler<CTX> handler) {
    return filterWithFilter(CaptionMessageFilter<CTX>(), handler);
  }

  // ===============================
  // Update Type Handlers
  // ===============================

  /// Adds a handler for any message update (regular or edited).
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onMessage(UpdateHandler<CTX> handler) {
    return filterWithFilter(AnyMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for edited message updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onEditedMessage(UpdateHandler<CTX> handler) {
    return filterWithFilter(EditedMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for channel post updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChannelPost(UpdateHandler<CTX> handler) {
    return filterWithFilter(ChannelPostFilter<CTX>(), handler);
  }

  /// Adds a handler for edited channel post updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onEditedChannelPost(UpdateHandler<CTX> handler) {
    return filterWithFilter(EditedChannelPostFilter<CTX>(), handler);
  }

  /// Adds a handler for chosen inline result updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChosenInlineResult(UpdateHandler<CTX> handler) {
    return filterWithFilter(ChosenInlineResultFilter<CTX>(), handler);
  }

  /// Adds a handler for shipping query updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onShippingQuery(UpdateHandler<CTX> handler) {
    return filterWithFilter(ShippingQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for pre-checkout query updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPreCheckoutQuery(UpdateHandler<CTX> handler) {
    return filterWithFilter(PreCheckoutQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for successful payment messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onSuccessfulPayment(UpdateHandler<CTX> handler) {
    return filterWithFilter(SuccessfulPaymentFilter<CTX>(), handler);
  }

  /// Adds a handler for poll updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPoll(UpdateHandler<CTX> handler) {
    return filterWithFilter(PollFilter<CTX>(), handler);
  }

  /// Adds a handler for poll answer updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPollAnswer(UpdateHandler<CTX> handler) {
    return filterWithFilter(PollAnswerFilter<CTX>(), handler);
  }

  /// Adds a handler for bot's chat member updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onMyChatMember(UpdateHandler<CTX> handler) {
    return filterWithFilter(MyChatMemberFilter<CTX>(), handler);
  }

  /// Adds a handler for chat member updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChatMember(UpdateHandler<CTX> handler) {
    return filterWithFilter(ChatMemberFilter<CTX>(), handler);
  }

  /// Adds a handler for chat join request updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChatJoinRequest(UpdateHandler<CTX> handler) {
    return filterWithFilter(ChatJoinRequestFilter<CTX>(), handler);
  }

  // ===============================
  // Service Message Handlers
  // ===============================

  /// Adds a handler for new chat title service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onNewChatTitle(UpdateHandler<CTX> handler) {
    return filterWithFilter(NewChatTitleFilter<CTX>(), handler);
  }

  /// Adds a handler for new chat photo service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onNewChatPhoto(UpdateHandler<CTX> handler) {
    return filterWithFilter(NewChatPhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for delete chat photo service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onDeleteChatPhoto(UpdateHandler<CTX> handler) {
    return filterWithFilter(DeleteChatPhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for pinned message service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPinnedMessage(UpdateHandler<CTX> handler) {
    return filterWithFilter(PinnedMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for user shared messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onUsrShared(UpdateHandler<CTX> handler) {
    return filterWithFilter(UsersSharedFilter<CTX>(), handler);
  }

  /// Adds a handler for chat shared messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChatShared(UpdateHandler<CTX> handler) {
    return filterWithFilter(ChatSharedFilter<CTX>(), handler);
  }

  // ===============================
  // Video Chat Service Messages
  // ===============================

  /// Adds a handler for video chat scheduled service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> whenVideoChatScheduled(UpdateHandler<CTX> handler) {
    return filterWithFilter(VideoChatScheduledFilter<CTX>(), handler);
  }

  /// Adds a handler for video chat started service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> whenVideoChatStarted(UpdateHandler<CTX> handler) {
    return filterWithFilter(VideoChatStartedFilter<CTX>(), handler);
  }

  /// Adds a handler for video chat ended service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> whenVideoChatEnded(UpdateHandler<CTX> handler) {
    return filterWithFilter(VideoChatEndedFilter<CTX>(), handler);
  }

  /// Adds a handler for video chat participants invited service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> whenVideoChatParticipantsInvited(UpdateHandler<CTX> handler) {
    return filterWithFilter(VideoChatParticipantsInvitedFilter<CTX>(), handler);
  }

  // ===============================
  // Forum Topic Service Messages
  // ===============================

  /// Adds a handler for forum topic created service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onForumTopicCreated(UpdateHandler<CTX> handler) {
    return filterWithFilter(ForumTopicCreatedFilter<CTX>(), handler);
  }

  /// Adds a handler for forum topic edited service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onForumTopicEdited(UpdateHandler<CTX> handler) {
    return filterWithFilter(ForumTopicEditedFilter<CTX>(), handler);
  }

  /// Adds a handler for forum topic closed service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onForumTopicClosed(UpdateHandler<CTX> handler) {
    return filterWithFilter(ForumTopicClosedFilter<CTX>(), handler);
  }

  /// Adds a handler for forum topic reopened service messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onForumTopicReopened(UpdateHandler<CTX> handler) {
    return filterWithFilter(ForumTopicReopenedFilter<CTX>(), handler);
  }

  // ===============================
  // Web App and Advanced Features
  // ===============================

  /// Adds a handler for web app data messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onWebAppData(UpdateHandler<CTX> handler) {
    return filterWithFilter(WebAppDataFilter<CTX>(), handler);
  }

  // ===============================
  // Entity-Based Handlers
  // ===============================

  /// Adds a handler for messages with URL entities.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onURL(UpdateHandler<CTX> handler) {
    return filterWithFilter(UrlFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with email entities.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onEmail(UpdateHandler<CTX> handler) {
    return filterWithFilter(
        EntityFilter<CTX>.single(MessageEntityType.email), handler);
  }

  /// Adds a handler for messages with phone number entities.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPhoneNumber(UpdateHandler<CTX> handler) {
    return filterWithFilter(
        EntityFilter<CTX>.single(MessageEntityType.phoneNumber), handler);
  }

  /// Adds a handler for messages with hashtag entities.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onHashtag(UpdateHandler<CTX> handler) {
    return filterWithFilter(HashtagFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with mention entities.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onMention(UpdateHandler<CTX> handler) {
    return filterWithFilter(MentionFilter<CTX>(), handler);
  }

  /// Adds a handler for when the bot is mentioned.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> whenMentioned(UpdateHandler<CTX> handler) {
    return filterWithFilter(
      PredicateFilter<CTX>((ctx) {
        final entities = ctx.entities;
        final text = ctx.text;
        final botUsername = botInfo.username;

        if (entities == null || text == null || botUsername == null) {
          return false;
        }

        return entities.any((entity) {
          if (entity.type == MessageEntityType.mention) {
            final mentionText = text.substring(
              entity.offset + 1, // Skip @
              entity.offset + entity.length,
            );
            return mentionText.toLowerCase() == botUsername.toLowerCase();
          }
          return false;
        });
      }, name: 'bot-mentioned'),
      handler,
    );
  }

  /// Adds a handler for any command (equivalent to onCommand).
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onCommand(UpdateHandler<CTX> handler) {
    return filterWithFilter(AnyCommandFilter<CTX>(), handler);
  }

  // ===============================
  // Chat Type Specific Handlers
  // ===============================

  /// Adds a handler for specific chat type.
  ///
  /// Parameters:
  /// - [chatType]: The chat type to match
  /// - [handler]: The handler function
  Bot<CTX> chatType(ChatType chatType, UpdateHandler<CTX> handler) {
    return filterWithFilter(ChatTypeFilter<CTX>.single(chatType), handler);
  }

  /// Adds a handler for multiple chat types.
  ///
  /// Parameters:
  /// - [chatTypes]: The set of chat types to match
  /// - [handler]: The handler function
  Bot<CTX> chatTypes(Set<ChatType> chatTypes, UpdateHandler<CTX> handler) {
    return filterWithFilter(ChatTypeFilter<CTX>(chatTypes), handler);
  }

  // ===============================
  // Reaction Handlers
  // ===============================

  /// Adds a handler for message reaction updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onMessageReaction(UpdateHandler<CTX> handler) {
    return filterWithFilter(MessageReactionFilter<CTX>(), handler);
  }

  /// Adds a handler for message reaction count updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onMessageReactionCount(UpdateHandler<CTX> handler) {
    return filterWithFilter(MessageReactionCountFilter<CTX>(), handler);
  }

  /// Adds a handler for specific emoji reactions.
  ///
  /// Parameters:
  /// - [emoji]: The emoji to match (e.g., '👍', '❤️')
  /// - [handler]: The handler function
  Bot<CTX> whenReacted(String emoji, UpdateHandler<CTX> handler) {
    return filterWithFilter(EmojiReactionFilter<CTX>(emoji), handler);
  }

  // ===============================
  // Chat Boost Handlers
  // ===============================

  /// Adds a handler for chat boost updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChatBoosted(UpdateHandler<CTX> handler) {
    return filterWithFilter(ChatBoostFilter<CTX>(), handler);
  }

  /// Adds a handler for chat boost removal updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onChatBoostRemoved(UpdateHandler<CTX> handler) {
    return filterWithFilter(RemovedChatBoostFilter<CTX>(), handler);
  }

  // ===============================
  // Business Features
  // ===============================

  /// Adds a handler for business connection updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onBusinessConnection(UpdateHandler<CTX> handler) {
    return filterWithFilter(BusinessConnectionFilter<CTX>(), handler);
  }

  /// Adds a handler for business message updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onBusinessMessage(UpdateHandler<CTX> handler) {
    return filterWithFilter(BusinessMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for edited business message updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onBusinessMessageEdited(UpdateHandler<CTX> handler) {
    return filterWithFilter(EditedBusinessMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for deleted business message updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onBusinessMessageDeleted(UpdateHandler<CTX> handler) {
    return filterWithFilter(DeletedBusinessMessagesFilter<CTX>(), handler);
  }

  // ===============================
  // Paid Media Handlers
  // ===============================

  /// Adds a handler for paid media messages.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPaidMedia(UpdateHandler<CTX> handler) {
    return filterWithFilter(PaidMediaFilter<CTX>(), handler);
  }

  /// Adds a handler for paid media with videos.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPaidMediaVideo(UpdateHandler<CTX> handler) {
    return filterWithFilter(PaidMediaVideoFilter<CTX>(), handler);
  }

  /// Adds a handler for paid media with photos.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPaidMediaPhoto(UpdateHandler<CTX> handler) {
    return filterWithFilter(PaidMediaPhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for paid media purchase updates.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> onPaidMediaPurchase(UpdateHandler<CTX> handler) {
    return filterWithFilter(PurchasedPaidMediaFilter<CTX>(), handler);
  }

  // ===============================
  // Enhanced Convenience Methods
  // ===============================

  /// Adds a handler for specific entity types.
  ///
  /// Parameters:
  /// - [entityType]: The entity type to match
  /// - [handler]: The handler function
  Bot<CTX> entity(MessageEntityType entityType, UpdateHandler<CTX> handler) {
    return filterWithFilter(EntityFilter<CTX>.single(entityType), handler);
  }

  /// Adds a handler for multiple entity types.
  ///
  /// Parameters:
  /// - [entityTypes]: The set of entity types to match
  /// - [handler]: The handler function
  Bot<CTX> entities(
      Set<MessageEntityType> entityTypes, UpdateHandler<CTX> handler) {
    return filterWithFilter(EntityFilter<CTX>(entityTypes), handler);
  }

  /// Adds a handler with exact text matching (alias for textEquals).
  ///
  /// Parameters:
  /// - [text]: The exact text to match
  /// - [handler]: The handler function
  /// - [caseSensitive]: Whether matching should be case sensitive
  Bot<CTX> text(
    String text,
    UpdateHandler<CTX> handler, {
    bool caseSensitive = true,
  }) {
    return filterWithFilter(
      TextFilter<CTX>(text: text, caseSensitive: caseSensitive),
      handler,
    );
  }

  // ===============================
  // Shortcut Methods (Common Commands)
  // ===============================

  /// Adds a handler for /settings command.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> settings(UpdateHandler<CTX> handler) {
    return command('settings', handler);
  }

  /// Adds a handler for /help command.
  ///
  /// Parameters:
  /// - [handler]: The handler function
  Bot<CTX> help(UpdateHandler<CTX> handler) {
    return command('help', handler);
  }

  /// Adds a handler using a custom filter.
  ///
  /// This method allows you to use any filter implementation to determine
  /// when the handler should be executed.
  ///
  /// Parameters:
  /// - [filter]: The filter to use
  /// - [handler]: The handler function
  ///
  /// Example:
  /// ```dart
  /// // Using built-in filters
  /// bot.filterWithFilter(Filters.photo.and(Filters.privateChat), (ctx) async {
  ///   await ctx.reply('Private photo received!');
  /// });
  ///
  /// // Using custom filter
  /// bot.filterWithFilter(
  ///   PredicateFilter((ctx) => ctx.text?.length > 100),
  ///   (ctx) async {
  ///     await ctx.reply('That was a long message!');
  ///   },
  /// );
  /// ```
  Bot<CTX> filterWithFilter(Filter<CTX> filter, UpdateHandler<CTX> handler) {
    return use((ctx, next) async {
      if (filter.matches(ctx)) {
        await handler(ctx);
      } else {
        await next();
      }
    });
  }

  // Override the base methods to return Bot<CTX> instead of Composer<CTX>
  @override
  Bot<CTX> filter(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> middleware,
  ) {
    super.filter(predicate, middleware);
    return this;
  }

  @override
  Bot<CTX> use(Middleware<CTX> middleware) {
    super.use(middleware);
    return this;
  }

  @override
  Bot<CTX> useNamed(String name, Middleware<CTX> middleware) {
    super.useNamed(name, middleware);
    return this;
  }

  @override
  Bot<CTX> fork(Middleware<CTX> middleware) {
    super.fork(middleware);
    return this;
  }

  @override
  Bot<CTX> lazy(MiddlewareFactory<CTX> middlewareFactory) {
    super.lazy(middlewareFactory);
    return this;
  }

  @override
  Bot<CTX> branch(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> trueMiddleware,
    Middleware<CTX> falseMiddleware,
  ) {
    super.branch(predicate, trueMiddleware, falseMiddleware);
    return this;
  }

  @override
  Bot<CTX> onError(ErrorHandler<CTX> handler) {
    super.onError(handler);
    return this;
  }

  @override
  Bot<CTX> errorBoundary(
    ErrorBoundaryHandler<CTX> errorHandler, [
    List<Middleware<CTX>> protectedMiddleware = const [],
  ]) {
    super.errorBoundary(errorHandler, protectedMiddleware);
    return this;
  }

  @override
  Bot<CTX> errorBoundaryVarArgs(
    ErrorBoundaryHandler<CTX> errorHandler,
    Middleware<CTX> middleware1, [
    Middleware<CTX>? middleware2,
    Middleware<CTX>? middleware3,
    Middleware<CTX>? middleware4,
    Middleware<CTX>? middleware5,
  ]) {
    super.errorBoundaryVarArgs(
      errorHandler,
      middleware1,
      middleware2,
      middleware3,
      middleware4,
      middleware5,
    );
    return this;
  }

  @override
  Bot<CTX> mount(Composer<CTX> other) {
    super.mount(other);
    return this;
  }

  @override
  Bot<CTX> removeAt(int index) {
    super.removeAt(index);
    return this;
  }

  @override
  Bot<CTX> removeNamed(String name) {
    super.removeNamed(name);
    return this;
  }

  @override
  Bot<CTX> clear() {
    super.clear();
    return this;
  }

  @override
  Bot<CTX> insertAt(index, Middleware<CTX> middleware) {
    super.insertAt(index, middleware);
    return this;
  }

  // ===============================
  // Plugin System
  // ===============================

  /// Installs a plugin.
  ///
  /// Plugins extend the bot's functionality and can add middleware,
  /// transformers, or other features.
  ///
  /// Parameters:
  /// - [plugin]: The plugin to install
  ///
  /// Returns this bot for method chaining.
  ///
  /// Throws [TeleverseException] if the bot is already running.
  ///
  /// Example:
  /// ```dart
  /// bot.plugin(SessionPlugin<Context, Map<String, dynamic>>(
  ///   initial: () => {},
  ///   getSessionKey: (ctx) => 'user_${ctx.from?.id ?? 0}',
  /// ));
  ///
  /// bot.plugin(LoggingPlugin<Context>());
  /// ```
  Bot<CTX> plugin(BotPlugin<CTX> plugin) {
    if (_isRunning) {
      throw TeleverseException(
        'Cannot install plugins while bot is running',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    // Check dependencies
    final missingDeps = plugin.dependencies
        .where((dep) => !_plugins.any((p) => p.name == dep))
        .toList();

    if (missingDeps.isNotEmpty) {
      throw TeleverseException(
        'Plugin ${plugin.name} has missing dependencies: ${missingDeps.join(', ')}',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    // Install the plugin
    plugin.install(this);
    _plugins.add(plugin);

    return this;
  }

  // ===============================
  // Information and Statistics
  // ===============================

  /// Whether the bot is currently running.
  bool get isRunning => _isRunning;

  /// Whether the bot has been initialized.
  bool get isInitialized => _isInitialized;

  /// Gets the bot's current statistics.
  BotStats get stats => _stats;

  /// Gets the list of installed plugins.
  List<BotPlugin<CTX>> get plugins => List.unmodifiable(_plugins);

  /// Gets the current update fetcher.
  UpdateFetcher? get currentFetcher => _currentFetcher;

  // ===============================
  // Private Methods
  // ===============================

  /// Default context factory for the base Context type.
  static CTX _defaultContextFactory<CTX extends Context>(
    Update update,
    RawAPI api,
    BotInfo botInfo,
  ) {
    return Context(update, api, botInfo) as CTX;
  }

  /// Updates general statistics.
  void _updateStats({required bool processed}) {
    _stats = BotStats(
      totalUpdates: _stats.totalUpdates + 1,
      processedUpdates: _stats.processedUpdates + (processed ? 1 : 0),
      errorUpdates: _stats.errorUpdates + (processed ? 0 : 1),
      startTime: _stats.startTime,
      averageProcessingTime: _stats.averageProcessingTime,
      lastUpdateTime: DateTime.now(),
    );
  }

  /// Updates success statistics.
  void _updateSuccessStats(Duration processingTime) {
    final newAverage = _stats.averageProcessingTime == Duration.zero
        ? processingTime
        : Duration(
            milliseconds: ((_stats.averageProcessingTime.inMilliseconds +
                        processingTime.inMilliseconds) /
                    2)
                .round(),
          );

    _stats = BotStats(
      totalUpdates: _stats.totalUpdates,
      processedUpdates: _stats.processedUpdates,
      errorUpdates: _stats.errorUpdates,
      startTime: _stats.startTime,
      averageProcessingTime: newAverage,
      lastUpdateTime: _stats.lastUpdateTime,
    );
  }

  /// Updates error statistics.
  void _updateErrorStats(Duration processingTime) {
    // Error stats are already updated in _updateStats
    // This method can be extended for more detailed error tracking
  }

  @override
  String toString() {
    return 'Bot<$CTX>('
        'username: ${botInfo.username ?? 'unknown'}, '
        'running: $_isRunning, '
        'plugins: ${_plugins.length}'
        ')';
  }
}

/// Type aliases for convenience.
typedef UpdateHandler<CTX extends Context> = FutureOr<void> Function(CTX ctx);

/// Statistics about bot operation.
class BotStats {
  /// Total number of updates received.
  final int totalUpdates;

  /// Number of updates processed successfully.
  final int processedUpdates;

  /// Number of updates that resulted in errors.
  final int errorUpdates;

  /// When the bot was started.
  final DateTime? startTime;

  /// Average time to process an update.
  final Duration averageProcessingTime;

  /// Time of the last update.
  final DateTime? lastUpdateTime;

  /// Creates bot statistics.
  const BotStats({
    required this.totalUpdates,
    required this.processedUpdates,
    required this.errorUpdates,
    this.startTime,
    required this.averageProcessingTime,
    this.lastUpdateTime,
  });

  /// Creates empty statistics.
  BotStats.empty()
      : totalUpdates = 0,
        processedUpdates = 0,
        errorUpdates = 0,
        startTime = DateTime.now(),
        averageProcessingTime = Duration.zero,
        lastUpdateTime = null;

  /// Success rate as a percentage.
  double get successRate {
    if (totalUpdates == 0) return 0.0;
    return (processedUpdates / totalUpdates) * 100;
  }

  /// Error rate as a percentage.
  double get errorRate {
    if (totalUpdates == 0) return 0.0;
    return (errorUpdates / totalUpdates) * 100;
  }

  /// Uptime duration.
  Duration get uptime {
    if (startTime == null) return Duration.zero;
    return DateTime.now().difference(startTime!);
  }

  /// Updates per second (based on uptime).
  double get updatesPerSecond {
    final uptimeSeconds = uptime.inSeconds;
    if (uptimeSeconds == 0) return 0.0;
    return totalUpdates / uptimeSeconds;
  }

  @override
  String toString() {
    return 'BotStats('
        'total: $totalUpdates, '
        'processed: $processedUpdates, '
        'errors: $errorUpdates, '
        'successRate: ${successRate.toStringAsFixed(1)}%, '
        'avgTime: ${averageProcessingTime.inMilliseconds}ms'
        ')';
  }
}
