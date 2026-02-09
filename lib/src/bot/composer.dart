// File: lib/src/bot/composer.dart
part of '../../televerse.dart';

/// Base class for middleware composition.
///
/// The [Composer] class provides a foundation for building middleware chains.
/// It allows you to add, remove, and execute middleware in a controlled manner.
///
/// This class serves as the base for the `Bot` class and can also be used
/// standalone for creating reusable middleware compositions.
///
/// Example:
/// ```dart
/// final composer = Composer<Context>();
/// composer.use((ctx, next) async {
///   print('Before next middleware');
///   await next();
///   print('After next middleware');
/// });
/// ```
class Composer<CTX extends Context> {
  /// The list of middleware entries.
  final List<MiddlewareEntry<CTX>> _middleware = [];

  /// Global error handler.
  ErrorHandler<CTX>? _globalErrorHandler;

  /// Context-aware filters for this composer instance.
  ///
  /// Provides type-safe access to all available filters without needing
  /// to specify generic types manually.
  final Filters<CTX> filters = Filters<CTX>();

  /// Creates a new composer.
  Composer();

  /// Creates a composer with initial middleware.
  Composer.withMiddleware(List<Middleware<CTX>> initialMiddleware) {
    for (final middleware in initialMiddleware) {
      use(middleware);
    }
  }

  /// Makes the Composer callable as middleware.
  ///
  /// This allows you to use a Composer instance directly as middleware:
  /// ```dart
  /// final subComposer = Composer<Context>();
  /// subComposer.use(someMiddleware);
  ///
  /// // Use subComposer as middleware
  /// bot.use(subComposer);
  /// ```
  Future<void> call(CTX ctx, NextFunction next) async {
    await _executeMiddleware(ctx, 0, next: next, isHandler: true);
  }

  /// Creates a new handler group.
  ///
  /// A handler group is a new Composer that is linked to this one.
  /// It allows you to organize your handlers and middleware into groups.
  ///
  /// Parameters:
  /// - [name]: Optional name for the group (for debugging)
  ///
  /// Returns the new handler group (Composer).
  Composer<CTX> group([String? name]) {
    final composer = Composer<CTX>();
    useNamed(name ?? 'group', composer.call);
    return composer;
  }

  // ===============================
  // Middleware Management
  // ===============================

  /// Adds middleware to the composition.
  ///
  /// The middleware will be executed in the order they are added.
  ///
  /// Parameters:
  /// - [middleware]: The middleware function to add
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.use((ctx, next) async {
  ///   print('Processing update ${ctx.update.updateId}');
  ///   await next();
  /// });
  /// ```
  Composer<CTX> use(Middleware<CTX> middleware) {
    _middleware.add(MiddlewareEntry(middleware));
    return this;
  }

  /// Adds named middleware to the composition.
  ///
  /// Named middleware can be useful for debugging and logging.
  ///
  /// Parameters:
  /// - [name]: The name of the middleware
  /// - [middleware]: The middleware function to add
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> useNamed(String name, Middleware<CTX> middleware) {
    _middleware.add(MiddlewareEntry.named(name, middleware));
    return this;
  }

  /// Adds conditional middleware that only runs when a predicate is true.
  ///
  /// Parameters:
  /// - [predicate]: Function that determines if middleware should run
  /// - [middleware]: The middleware function to add
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.when(
  ///   (ctx) => ctx.isPrivateChat,
  ///   (ctx, next) async {
  ///     await ctx.reply('This only works in private chats!');
  ///     await next();
  ///   },
  /// );
  /// ```
  Composer<CTX> when(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> middleware,
  ) {
    _middleware.add(MiddlewareEntry.when(predicate, middleware));
    return this;
  }

  /// Adds middleware that runs concurrently (fork).
  ///
  /// Forked middleware runs in parallel with the rest of the middleware chain
  /// and doesn't block the execution of subsequent middleware.
  ///
  /// Parameters:
  /// - [middleware]: The middleware function to fork
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.fork((ctx, next) async {
  ///   // This runs concurrently and doesn't block other middleware
  ///   await logToDatabase(ctx.update);
  /// });
  /// ```
  Composer<CTX> fork(Middleware<CTX> middleware) {
    _middleware.add(MiddlewareEntry.fork(middleware));
    return this;
  }

  /// Adds middleware that is created lazily based on the context.
  ///
  /// The middleware factory function is called for each update, allowing
  /// you to create context-specific middleware dynamically.
  ///
  /// Parameters:
  /// - [middlewareFactory]: Function that creates middleware based on context
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.lazy((ctx) {
  ///   final userId = ctx.from?.id;
  ///   return (ctx, next) async {
  ///     print('User $userId sent an update');
  ///     await next();
  ///   };
  /// });
  /// ```
  Composer<CTX> lazy(MiddlewareFactory<CTX> middlewareFactory) {
    return use((ctx, next) async {
      final middleware = middlewareFactory(ctx);
      await middleware(ctx, next);
    });
  }

  /// Adds middleware that handles a specific branch of execution.
  ///
  /// The branch middleware allows you to conditionally execute different
  /// middleware based on a predicate.
  ///
  /// Parameters:
  /// - [predicate]: Function that determines which branch to take
  /// - [trueMiddleware]: Middleware to run if predicate is true
  /// - [falseMiddleware]: Middleware to run if predicate is false
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.branch(
  ///   (ctx) => ctx.isPrivateChat,
  ///   (ctx, next) => ctx.reply('Private message handler'),
  ///   (ctx, next) => ctx.reply('Group message handler'),
  /// );
  /// ```
  Composer<CTX> branch(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> trueMiddleware,
    Middleware<CTX> falseMiddleware,
  ) {
    return use((ctx, next) async {
      if (predicate(ctx)) {
        await trueMiddleware(ctx, next);
      } else {
        await falseMiddleware(ctx, next);
      }
    });
  }

  // ===============================
  // Error Handling
  // ===============================

  /// Sets a global error handler that catches all unhandled errors.
  ///
  /// This handler will be called for any unhandled errors that occur
  /// during middleware execution and are not caught by error boundaries.
  ///
  /// Parameters:
  /// - [handler]: The error handler function
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.onError((error) async {
  ///   print('Error occurred: ${error.error}');
  ///   if (error.hasContext) {
  ///     await error.ctx!.reply('Sorry, something went wrong!');
  ///   }
  /// });
  /// ```
  Composer<CTX> onError(ErrorHandler<CTX> handler) {
    _globalErrorHandler = handler;
    return this;
  }

  /// Creates an error boundary that catches errors from specific middleware.
  ///
  /// This is the correct implementation following grammY's pattern.
  /// The error boundary:
  /// 1. Accepts an error handler and middleware to protect
  /// 2. If an error occurs in the protected middleware, calls the error handler
  /// 3. If the error handler calls `next()`, continues execution after the boundary
  /// 4. If the error handler doesn't call `next()`, stops execution (error contained)
  ///
  /// Parameters:
  /// - [errorHandler]: Error handler that gets error and next function
  /// - [protectedMiddleware]: List of middleware to protect with this boundary
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// bot.errorBoundary(
  ///   (error, next) async {
  ///     print('Error caught: ${error.error}');
  ///
  ///     if (error.error is ValidationException) {
  ///       await error.ctx?.reply('Please check your input');
  ///       await next(); // Continue after boundary
  ///     } else {
  ///       await error.ctx?.reply('Something went wrong');
  ///       // Don't call next() - contain the error
  ///     }
  ///   },
  ///   riskyMiddleware1,
  ///   riskyMiddleware2,
  /// );
  /// ```
  Composer<CTX> errorBoundary(
    ErrorBoundaryHandler<CTX> errorHandler, [
    List<Middleware<CTX>> protectedMiddleware = const [],
  ]) {
    // Add the error boundary middleware to the current composer
    return use((ctx, next) async {
      try {
        // Execute all protected middleware first
        for (final middleware in protectedMiddleware) {
          await middleware(ctx, () async {});
        }

        // If all protected middleware completed successfully, continue with next
        await next();
      } catch (error, stackTrace) {
        // Create bot error
        final botError = BotError<CTX>.fromMiddleware(error, stackTrace, ctx);

        // Call the error boundary handler with the error and next function
        // The handler decides whether to call next() to continue execution
        await errorHandler(botError, next);
      }
    });
  }

  /// Alternative error boundary method that accepts middleware as varargs.
  ///
  /// This matches grammY's exact API signature.
  ///
  /// Parameters:
  /// - [errorHandler]: Error handler that gets error and next function
  /// - ...: Variable number of middleware to protect
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// bot.errorBoundaryVarArgs(
  ///   (error, next) async {
  ///     print('Error in boundary: ${error.error}');
  ///     // Decide whether to call next() or not
  ///   },
  ///   middleware1,
  ///   middleware2,
  ///   middleware3,
  /// );
  /// ```
  Composer<CTX> errorBoundaryVarArgs(
    ErrorBoundaryHandler<CTX> errorHandler,
    Middleware<CTX> middleware1, [
    Middleware<CTX>? middleware2,
    Middleware<CTX>? middleware3,
    Middleware<CTX>? middleware4,
    Middleware<CTX>? middleware5,
  ]) {
    final middlewareList = <Middleware<CTX>>[middleware1];
    if (middleware2 != null) middlewareList.add(middleware2);
    if (middleware3 != null) middlewareList.add(middleware3);
    if (middleware4 != null) middlewareList.add(middleware4);
    if (middleware5 != null) middlewareList.add(middleware5);

    return errorBoundary(errorHandler, middlewareList);
  }

  // ===============================
  // Convenience Methods
  // ===============================

  /// Adds a handler using a custom filter.
  ///
  /// This method allows you to use any filter implementation to determine
  /// when the handler should be executed.
  ///
  /// Parameters:
  /// - [filter]: The filter to use
  /// - [handler]: The handler function
  Composer<CTX> on(Filter<CTX> filter, UpdateHandler<CTX> handler) {
    return use((ctx, next) async {
      if (filter.matches(ctx)) {
        await handler(ctx);
      } else {
        await next();
      }
    });
  }

  /// Adds a handler for a specific command.
  Composer<CTX> command(
    String command,
    UpdateHandler<CTX> handler, {
    bool caseSensitive = false,
  }) {
    return on(
      CommandFilter<CTX>(command, caseSensitive: caseSensitive),
      handler,
    );
  }

  /// Adds a handler for text messages that match a pattern.
  Composer<CTX> hears(Pattern pattern, UpdateHandler<CTX> handler) {
    Filter<CTX> filter;

    if (pattern is String) {
      filter = TextFilter<CTX>(text: pattern);
    } else if (pattern is RegExp) {
      filter = RegexFilter<CTX>(pattern);
    } else {
      throw ArgumentError('Pattern must be String or RegExp');
    }

    return on(filter, handler);
  }

  /// Adds a handler that runs for any text message.
  Composer<CTX> onText(UpdateHandler<CTX> handler) {
    return on(TextMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for callback queries.
  Composer<CTX> onCallbackQuery(UpdateHandler<CTX> handler) {
    return on(CallbackQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for callback queries with specific data.
  Composer<CTX> callbackQuery(Pattern data, UpdateHandler<CTX> handler) {
    return on(CallbackQueryFilter<CTX>(data: data), handler);
  }

  /// Adds a handler for inline queries.
  Composer<CTX> onInlineQuery(UpdateHandler<CTX> handler) {
    return on(InlineQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for inline queries with specific data.
  Composer<CTX> inlineQuery(Pattern query, UpdateHandler<CTX> handler) {
    return on(InlineQueryFilter<CTX>(query: query), handler);
  }

  /// Adds a handler for messages with photos.
  Composer<CTX> onPhoto(UpdateHandler<CTX> handler) {
    return on(PhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with documents.
  Composer<CTX> onDocument(UpdateHandler<CTX> handler) {
    return on(DocumentFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with stickers.
  Composer<CTX> onSticker(UpdateHandler<CTX> handler) {
    return on(StickerFilter<CTX>(), handler);
  }

  /// Adds a handler for private chat messages.
  Composer<CTX> onPrivateChat(UpdateHandler<CTX> handler) {
    return on(PrivateChatFilter<CTX>(), handler);
  }

  /// Adds a handler for group chat messages.
  Composer<CTX> onGroupChat(UpdateHandler<CTX> handler) {
    return on(GroupChatFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with animations.
  Composer<CTX> onAnimation(UpdateHandler<CTX> handler) {
    return on(AnimationFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with audio files.
  Composer<CTX> onAudio(UpdateHandler<CTX> handler) {
    return on(AudioFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with video files.
  Composer<CTX> onVideo(UpdateHandler<CTX> handler) {
    return on(VideoFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with video notes.
  Composer<CTX> onVideoNote(UpdateHandler<CTX> handler) {
    return on(VideoNoteFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with voice notes.
  Composer<CTX> onVoice(UpdateHandler<CTX> handler) {
    return on(VoiceFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with contacts.
  Composer<CTX> onContact(UpdateHandler<CTX> handler) {
    return on(ContactFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with dice.
  Composer<CTX> onDice(UpdateHandler<CTX> handler) {
    return on(DiceFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with games.
  Composer<CTX> onGame(UpdateHandler<CTX> handler) {
    return on(GameFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with polls.
  Composer<CTX> onPollMessage(UpdateHandler<CTX> handler) {
    return on(PollMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with venue information.
  Composer<CTX> onVenue(UpdateHandler<CTX> handler) {
    return on(VenueFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with location data.
  Composer<CTX> onLocation(UpdateHandler<CTX> handler) {
    return on(LocationFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with live location updates.
  Composer<CTX> onLiveLocation(UpdateHandler<CTX> handler) {
    return on(LiveLocationFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with captions.
  Composer<CTX> onCaption(UpdateHandler<CTX> handler) {
    return on(CaptionMessageFilter<CTX>(), handler);
  }

  // ===============================
  // Update Type Handlers
  // ===============================

  /// Adds a handler for any message update (regular or edited).
  Composer<CTX> onMessage(UpdateHandler<CTX> handler) {
    return on(AnyMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for edited message updates.
  Composer<CTX> onEditedMessage(UpdateHandler<CTX> handler) {
    return on(EditedMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for channel post updates.
  Composer<CTX> onChannelPost(UpdateHandler<CTX> handler) {
    return on(ChannelPostFilter<CTX>(), handler);
  }

  /// Adds a handler for edited channel post updates.
  Composer<CTX> onEditedChannelPost(UpdateHandler<CTX> handler) {
    return on(EditedChannelPostFilter<CTX>(), handler);
  }

  /// Adds a handler for chosen inline result updates.
  Composer<CTX> onChosenInlineResult(UpdateHandler<CTX> handler) {
    return on(ChosenInlineResultFilter<CTX>(), handler);
  }

  /// Adds a handler for shipping query updates.
  Composer<CTX> onShippingQuery(UpdateHandler<CTX> handler) {
    return on(ShippingQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for pre-checkout query updates.
  Composer<CTX> onPreCheckoutQuery(UpdateHandler<CTX> handler) {
    return on(PreCheckoutQueryFilter<CTX>(), handler);
  }

  /// Adds a handler for successful payment messages.
  Composer<CTX> onSuccessfulPayment(UpdateHandler<CTX> handler) {
    return on(SuccessfulPaymentFilter<CTX>(), handler);
  }

  /// Adds a handler for poll updates.
  Composer<CTX> onPoll(UpdateHandler<CTX> handler) {
    return on(PollFilter<CTX>(), handler);
  }

  /// Adds a handler for poll answer updates.
  Composer<CTX> onPollAnswer(UpdateHandler<CTX> handler) {
    return on(PollAnswerFilter<CTX>(), handler);
  }

  /// Adds a handler for bot's chat member updates.
  Composer<CTX> onMyChatMember(UpdateHandler<CTX> handler) {
    return on(MyChatMemberFilter<CTX>(), handler);
  }

  /// Adds a handler for chat member updates.
  Composer<CTX> onChatMember(UpdateHandler<CTX> handler) {
    return on(ChatMemberFilter<CTX>(), handler);
  }

  /// Adds a handler for chat join request updates.
  Composer<CTX> onChatJoinRequest(UpdateHandler<CTX> handler) {
    return on(ChatJoinRequestFilter<CTX>(), handler);
  }

  // ===============================
  // Service Message Handlers
  // ===============================

  /// Adds a handler for new chat title service messages.
  Composer<CTX> onNewChatTitle(UpdateHandler<CTX> handler) {
    return on(NewChatTitleFilter<CTX>(), handler);
  }

  /// Adds a handler for new chat photo service messages.
  Composer<CTX> onNewChatPhoto(UpdateHandler<CTX> handler) {
    return on(NewChatPhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for delete chat photo service messages.
  Composer<CTX> onDeleteChatPhoto(UpdateHandler<CTX> handler) {
    return on(DeleteChatPhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for pinned message service messages.
  Composer<CTX> onPinnedMessage(UpdateHandler<CTX> handler) {
    return on(PinnedMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for user shared messages.
  Composer<CTX> onUsrShared(UpdateHandler<CTX> handler) {
    return on(UsersSharedFilter<CTX>(), handler);
  }

  /// Adds a handler for chat shared messages.
  Composer<CTX> onChatShared(UpdateHandler<CTX> handler) {
    return on(ChatSharedFilter<CTX>(), handler);
  }

  // ===============================
  // Video Chat Service Messages
  // ===============================

  /// Adds a handler for video chat scheduled service messages.
  Composer<CTX> whenVideoChatScheduled(UpdateHandler<CTX> handler) {
    return on(VideoChatScheduledFilter<CTX>(), handler);
  }

  /// Adds a handler for video chat started service messages.
  Composer<CTX> whenVideoChatStarted(UpdateHandler<CTX> handler) {
    return on(VideoChatStartedFilter<CTX>(), handler);
  }

  /// Adds a handler for video chat ended service messages.
  Composer<CTX> whenVideoChatEnded(UpdateHandler<CTX> handler) {
    return on(VideoChatEndedFilter<CTX>(), handler);
  }

  /// Adds a handler for video chat participants invited service messages.
  Composer<CTX> whenVideoChatParticipantsInvited(UpdateHandler<CTX> handler) {
    return on(VideoChatParticipantsInvitedFilter<CTX>(), handler);
  }

  // ===============================
  // Forum Topic Service Messages
  // ===============================

  /// Adds a handler for forum topic created service messages.
  Composer<CTX> onForumTopicCreated(UpdateHandler<CTX> handler) {
    return on(ForumTopicCreatedFilter<CTX>(), handler);
  }

  /// Adds a handler for forum topic edited service messages.
  Composer<CTX> onForumTopicEdited(UpdateHandler<CTX> handler) {
    return on(ForumTopicEditedFilter<CTX>(), handler);
  }

  /// Adds a handler for forum topic closed service messages.
  Composer<CTX> onForumTopicClosed(UpdateHandler<CTX> handler) {
    return on(ForumTopicClosedFilter<CTX>(), handler);
  }

  /// Adds a handler for forum topic reopened service messages.
  Composer<CTX> onForumTopicReopened(UpdateHandler<CTX> handler) {
    return on(ForumTopicReopenedFilter<CTX>(), handler);
  }

  // ===============================
  // Web App and Advanced Features
  // ===============================

  /// Adds a handler for web app data messages.
  Composer<CTX> onWebAppData(UpdateHandler<CTX> handler) {
    return on(WebAppDataFilter<CTX>(), handler);
  }

  // ===============================
  // Entity-Based Handlers
  // ===============================

  /// Adds a handler for messages with URL entities.
  Composer<CTX> onURL(UpdateHandler<CTX> handler) {
    return on(UrlFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with email entities.
  Composer<CTX> onEmail(UpdateHandler<CTX> handler) {
    return on(EntityFilter<CTX>.single(MessageEntityType.email), handler);
  }

  /// Adds a handler for messages with phone number entities.
  Composer<CTX> onPhoneNumber(UpdateHandler<CTX> handler) {
    return on(EntityFilter<CTX>.single(MessageEntityType.phoneNumber), handler);
  }

  /// Adds a handler for messages with hashtag entities.
  Composer<CTX> onHashtag(UpdateHandler<CTX> handler) {
    return on(HashtagFilter<CTX>(), handler);
  }

  /// Adds a handler for messages with mention entities.
  Composer<CTX> onMention(UpdateHandler<CTX> handler) {
    return on(MentionFilter<CTX>(), handler);
  }

  /// Adds a handler for any command (equivalent to onCommand).
  Composer<CTX> onCommand(UpdateHandler<CTX> handler) {
    return on(AnyCommandFilter<CTX>(), handler);
  }

  // ===============================
  // Chat Type Specific Handlers
  // ===============================

  /// Adds a handler for specific chat type.
  Composer<CTX> chatType(ChatType chatType, UpdateHandler<CTX> handler) {
    return on(ChatTypeFilter<CTX>.single(chatType), handler);
  }

  /// Adds a handler for multiple chat types.
  Composer<CTX> chatTypes(Set<ChatType> chatTypes, UpdateHandler<CTX> handler) {
    return on(ChatTypeFilter<CTX>(chatTypes), handler);
  }

  // ===============================
  // Reaction Handlers
  // ===============================

  /// Adds a handler for message reaction updates.
  Composer<CTX> onMessageReaction(UpdateHandler<CTX> handler) {
    return on(MessageReactionFilter<CTX>(), handler);
  }

  /// Adds a handler for message reaction count updates.
  Composer<CTX> onMessageReactionCount(UpdateHandler<CTX> handler) {
    return on(MessageReactionCountFilter<CTX>(), handler);
  }

  /// Adds a handler for specific emoji reactions.
  Composer<CTX> whenReacted(String emoji, UpdateHandler<CTX> handler) {
    return on(EmojiReactionFilter<CTX>(emoji), handler);
  }

  // ===============================
  // Chat Boost Handlers
  // ===============================

  /// Adds a handler for chat boost updates.
  Composer<CTX> onChatBoosted(UpdateHandler<CTX> handler) {
    return on(ChatBoostFilter<CTX>(), handler);
  }

  /// Adds a handler for chat boost removal updates.
  Composer<CTX> onChatBoostRemoved(UpdateHandler<CTX> handler) {
    return on(RemovedChatBoostFilter<CTX>(), handler);
  }

  // ===============================
  // Business Features
  // ===============================

  /// Adds a handler for business connection updates.
  Composer<CTX> onBusinessConnection(UpdateHandler<CTX> handler) {
    return on(BusinessConnectionFilter<CTX>(), handler);
  }

  /// Adds a handler for business message updates.
  Composer<CTX> onBusinessMessage(UpdateHandler<CTX> handler) {
    return on(BusinessMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for edited business message updates.
  Composer<CTX> onBusinessMessageEdited(UpdateHandler<CTX> handler) {
    return on(EditedBusinessMessageFilter<CTX>(), handler);
  }

  /// Adds a handler for deleted business message updates.
  Composer<CTX> onBusinessMessageDeleted(UpdateHandler<CTX> handler) {
    return on(DeletedBusinessMessagesFilter<CTX>(), handler);
  }

  // ===============================
  // Paid Media Handlers
  // ===============================

  /// Adds a handler for paid media messages.
  Composer<CTX> onPaidMedia(UpdateHandler<CTX> handler) {
    return on(PaidMediaFilter<CTX>(), handler);
  }

  /// Adds a handler for paid media with videos.
  Composer<CTX> onPaidMediaVideo(UpdateHandler<CTX> handler) {
    return on(PaidMediaVideoFilter<CTX>(), handler);
  }

  /// Adds a handler for paid media with photos.
  Composer<CTX> onPaidMediaPhoto(UpdateHandler<CTX> handler) {
    return on(PaidMediaPhotoFilter<CTX>(), handler);
  }

  /// Adds a handler for paid media purchase updates.
  Composer<CTX> onPaidMediaPurchase(UpdateHandler<CTX> handler) {
    return on(PurchasedPaidMediaFilter<CTX>(), handler);
  }

  // ===============================
  // Enhanced Convenience Methods
  // ===============================

  /// Adds a handler for specific entity types.
  Composer<CTX> entity(
    MessageEntityType entityType,
    UpdateHandler<CTX> handler,
  ) {
    return on(EntityFilter<CTX>.single(entityType), handler);
  }

  /// Adds a handler for multiple entity types.
  Composer<CTX> entities(
    Set<MessageEntityType> entityTypes,
    UpdateHandler<CTX> handler,
  ) {
    return on(EntityFilter<CTX>(entityTypes), handler);
  }

  /// Adds a handler with exact text matching (alias for textEquals).
  Composer<CTX> text(
    String text,
    UpdateHandler<CTX> handler, {
    bool caseSensitive = true,
  }) {
    return on(
      TextFilter<CTX>(text: text, caseSensitive: caseSensitive),
      handler,
    );
  }

  /// Adds a handler for matching a custom filter.
  ///
  /// If [handler] is provided, it acts as a conditional handler that only runs
  /// if [predicate] returns true.
  ///
  /// If [handler] is not provided, it creates and returns a new [Composer]
  /// that receives updates only if [predicate] returns true.
  ///
  /// Parameters:
  /// - [predicate]: The function to check updates against
  /// - [handler]: Optional handler to execute if predicate matches
  Composer<CTX> filter(
    MiddlewarePredicate<CTX> predicate, [
    UpdateHandler<CTX>? handler,
  ]) {
    if (handler != null) {
      return use((ctx, next) async {
        if (predicate(ctx)) {
          await handler(ctx);
        } else {
          await next();
        }
      });
    }

    final composer = Composer<CTX>();
    use((ctx, next) async {
      if (predicate(ctx)) {
        await composer.call(ctx, next);
      } else {
        await next();
      }
    });
    return composer;
  }

  // ===============================
  // Shortcut Methods (Common Commands)
  // ===============================

  /// Adds a handler for /settings command.
  Composer<CTX> settings(UpdateHandler<CTX> handler) {
    return command('settings', handler);
  }

  /// Adds a handler for /help command.
  Composer<CTX> help(UpdateHandler<CTX> handler) {
    return command('help', handler);
  }

  // ===============================
  // Execution
  // ===============================

  /// Processes a context through the middleware chain.
  ///
  /// This method executes all middleware in order, handling errors
  /// appropriately. Returns true if execution completed successfully,
  /// false if an error occurred.
  ///
  /// Parameters:
  /// - [ctx]: The context to process
  ///
  /// Example:
  /// ```dart
  /// final ctx = Context(update, api, botInfo);
  /// final success = await composer.handle(ctx);
  /// ```
  Future<bool> handle(CTX ctx) async {
    if (_middleware.isEmpty) return true;

    try {
      await _executeMiddleware(ctx, 0, isHandler: false);
      return true;
    } catch (error, stackTrace) {
      // Handle any unhandled errors with the global error handler
      return await _handleUnhandledError(error, stackTrace, ctx, false);
    }
  }

  /// Executes middleware starting from a specific index.
  ///
  /// This is the core method that handles the middleware chain execution,
  /// including error handling and concurrent execution.
  Future<void> _executeMiddleware(
    CTX ctx,
    int index, {
    NextFunction? next,
    required bool isHandler,
  }) async {
    if (index >= _middleware.length) {
      return await next?.call();
    }

    final entry = _middleware[index];

    // Check if middleware should run
    if (!entry.shouldRun(ctx)) {
      // Skip this middleware and continue to next
      return _executeMiddleware(
        ctx,
        index + 1,
        next: next,
        isHandler: isHandler,
      );
    }

    // Determine if next middleware is the handler (last one in chain)
    final nextIsHandler = index == _middleware.length - 1;

    // Handle concurrent (fork) middleware
    if (entry.concurrent) {
      // Start concurrent execution but don't wait for it
      unawaited(
        _executeSingleMiddleware(
          ctx,
          entry,
          () async {},
          isHandler: false,
        ).catchError((error, stackTrace) async {
          // For forked middleware, we handle errors separately
          // to avoid crashing the main middleware chain
          await _handleForkedMiddlewareError(error, stackTrace, ctx, false);
        }),
      );

      // Continue to next middleware immediately
      return _executeMiddleware(
        ctx,
        index + 1,
        next: next,
        isHandler: nextIsHandler,
      );
    }

    // Execute middleware and wait for completion
    try {
      await _executeSingleMiddleware(ctx, entry, () async {
        // Next function - continue to next middleware
        await _executeMiddleware(
          ctx,
          index + 1,
          next: next,
          isHandler: nextIsHandler,
        );
      }, isHandler: nextIsHandler);
    } catch (error, stackTrace) {
      // Create error with appropriate source flag
      final botError = nextIsHandler
          ? BotError<CTX>.fromHandler(error, stackTrace, ctx)
          : BotError<CTX>.fromMiddleware(error, stackTrace, ctx);

      // Try global error handler
      if (_globalErrorHandler != null) {
        try {
          await _globalErrorHandler!(botError);
          return; // Error was handled
        } catch (handlerError, handlerStackTrace) {
          print('⚠️  Error in global error handler: $handlerError');
          print('Handler stack trace: $handlerStackTrace');
        }
      }

      // Rethrow if not handled
      rethrow;
    }
  }

  /// Executes a single middleware entry.
  Future<void> _executeSingleMiddleware(
    CTX ctx,
    MiddlewareEntry<CTX> entry,
    NextFunction next, {
    required bool isHandler,
  }) async {
    await entry.middleware(ctx, next);
  }

  /// Handles unhandled errors (errors that escape error boundaries).
  ///
  /// This method deals with errors that occur in middleware that isn't
  /// protected by error boundaries, or errors that bubble up from
  /// error boundary handlers themselves.
  ///
  /// Returns true if the error was handled successfully, false if it should be rethrown.
  Future<bool> _handleUnhandledError(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
    bool isMiddleware,
  ) async {
    final botError = isMiddleware
        ? BotError<CTX>.fromMiddleware(error, stackTrace, ctx)
        : BotError<CTX>.fromHandler(error, stackTrace, ctx);

    // Try global error handler first
    if (_globalErrorHandler != null) {
      try {
        await _globalErrorHandler!(botError);
        return true; // Error was handled successfully
      } catch (handlerError, handlerStackTrace) {
        // Error in global handler - log and continue to default handling
        print('⚠️  Error in global error handler: $handlerError');
        print('Handler stack trace: $handlerStackTrace');
        print('Falling back to default error handling...\n');
      }
    }

    // No handler available or handler failed - provide helpful error information
    _logUnhandledError(botError);

    // Return false to indicate the error was not handled
    // The caller can decide whether to rethrow or not
    return false;
  }

  /// Logs unhandled error information in a user-friendly format.
  void _logUnhandledError(BotError<CTX> botError) {
    print('🚨 Unhandled Error in Televerse Bot');
    print('━' * 50);
    print('Source: ${botError.sourceIsMiddleware ? "Middleware" : "Handler"}');
    print('Error: ${botError.error}');
    print('');

    if (botError.hasContext) {
      print('Context Information:');
      if (botError.updateId != null) {
        print('  • Update ID: ${botError.updateId}');
      }
      if (botError.chatId != null) {
        print('  • Chat ID: ${botError.chatId}');
      }
      if (botError.userId != null) {
        print('  • User ID: ${botError.userId}');
      }
      print('');
    }

    print('Original Stack Trace:');
    print(botError.stackTrace);
    print('');

    print('💡 To handle errors in your bot, add an error handler:');
    print('');
    print('bot.onError((error) async {');
    print('  print("Error occurred: \${error.error}");');
    print('  if (error.sourceIsMiddleware) {');
    print('    print("Error in middleware");');
    print('  } else {');
    print('    print("Error in handler");');
    print('  }');
    print('  if (error.hasContext) {');
    print('    await error.ctx!.reply("Sorry, something went wrong!");');
    print('  }');
    print('});');
    print('');

    print('🆘 Need Help?');
    print(
      'If you believe this is an issue with Televerse, please report it on GitHub.',
    );
    print(
      'Make sure to remove any sensitive information from the error logs before sharing.',
    );
    print('For additional help and community support:');
    print('');
    print('  • Telegram: https://t.me/televersedart');
    print(
      '  • GitHub Issues: https://github.com/theweaverlabs/televerse/issues',
    );
    print(
      '  • GitHub Discussions: https://github.com/theweaverlabs/televerse/discussions',
    );
    print('');
    print('🛑 Bot will continue processing other updates.');
    print('━' * 50);
  }

  /// Handles errors in forked (concurrent) middleware.
  ///
  /// Forked middleware errors are handled separately to prevent them
  /// from crashing the main middleware chain.
  Future<void> _handleForkedMiddlewareError(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
    bool isMiddleware,
  ) async {
    final botError = isMiddleware
        ? BotError<CTX>.fromMiddleware(error, stackTrace, ctx)
        : BotError<CTX>.fromHandler(error, stackTrace, ctx);

    // Try global error handler
    if (_globalErrorHandler != null) {
      try {
        await _globalErrorHandler!(botError);
      } catch (handlerError, handlerStackTrace) {
        // Error in global handler - just log, don't rethrow for forked middleware
        print(
          'Error in global error handler for forked middleware: $handlerError',
        );
        print('Handler stack trace: $handlerStackTrace');
        print('Original forked error: $error');
      }
    } else {
      // No global handler - just log the forked middleware error
      print('Unhandled error in forked middleware: $error');
      print('Stack trace: $stackTrace');
    }
  }

  // ===============================
  // Composition Operations
  // ===============================

  /// Mounts another composer's middleware.
  ///
  /// This allows you to compose multiple composers together,
  /// creating reusable middleware modules.
  ///
  /// Parameters:
  /// - [other]: The composer to mount
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// final authComposer = Composer<Context>()
  ///   ..use(authMiddleware);
  ///
  /// final mainComposer = Composer<Context>()
  ///   ..mount(authComposer)
  ///   ..use(mainMiddleware);
  /// ```
  Composer<CTX> mount(Composer<CTX> other) {
    _middleware.addAll(other._middleware);
    return this;
  }

  /// Creates a sub-composer with additional middleware.
  ///
  /// This creates a new composer that includes all current middleware
  /// plus any additional middleware you specify.
  ///
  /// Parameters:
  /// - [additionalMiddleware]: Additional middleware to include
  ///
  /// Returns a new composer with combined middleware.
  ///
  /// Example:
  /// ```dart
  /// final baseComposer = Composer<Context>()
  ///   ..use(loggingMiddleware);
  ///
  /// final extendedComposer = baseComposer.extend([
  ///   authMiddleware,
  ///   validationMiddleware,
  /// ]);
  /// ```
  Composer<CTX> extend(List<Middleware<CTX>> additionalMiddleware) {
    final newComposer = Composer<CTX>();
    newComposer._middleware.addAll(_middleware);
    newComposer._globalErrorHandler = _globalErrorHandler;

    for (final middleware in additionalMiddleware) {
      newComposer.use(middleware);
    }

    return newComposer;
  }

  /// Clones this composer.
  ///
  /// Creates an exact copy of this composer with all its middleware
  /// and error handling configuration.
  ///
  /// Returns a new composer that's a copy of this one.
  Composer<CTX> clone() {
    final newComposer = Composer<CTX>();
    newComposer._middleware.addAll(_middleware);
    newComposer._globalErrorHandler = _globalErrorHandler;
    return newComposer;
  }

  // ===============================
  // Information and Debugging
  // ===============================

  /// Gets the number of middleware in this composer.
  int get middlewareCount => _middleware.length;

  /// Gets the list of middleware names (where available).
  List<String> get middlewareNames {
    return _middleware.map((entry) => entry.name ?? 'unnamed').toList();
  }

  /// Checks if the composer has any middleware.
  bool get hasMiddleware => _middleware.isNotEmpty;

  /// Checks if the composer has error handling configured.
  bool get hasErrorHandling => _globalErrorHandler != null;

  /// Removes all middleware from this composer.
  ///
  /// This clears all middleware and error handlers.
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> clear() {
    _middleware.clear();
    _globalErrorHandler = null;
    return this;
  }

  /// Removes middleware at a specific index.
  ///
  /// Parameters:
  /// - [index]: The index of the middleware to remove
  ///
  /// Returns this composer for method chaining.
  ///
  /// Throws [RangeError] if the index is out of bounds.
  Composer<CTX> removeAt(int index) {
    if (index < 0 || index >= _middleware.length) {
      throw RangeError.index(index, _middleware);
    }
    _middleware.removeAt(index);
    return this;
  }

  /// Removes middleware with a specific name.
  ///
  /// Parameters:
  /// - [name]: The name of the middleware to remove
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> removeNamed(String name) {
    _middleware.removeWhere((entry) => entry.name == name);
    return this;
  }

  /// Inserts middleware at a specific position.
  ///
  /// Parameters:
  /// - [index]: The position to insert at
  /// - [middleware]: The middleware to insert
  ///
  /// Returns this composer for method chaining.
  ///
  /// Throws [RangeError] if the index is out of bounds.
  Composer<CTX> insertAt(int index, Middleware<CTX> middleware) {
    if (index < 0 || index > _middleware.length) {
      throw RangeError.index(index, _middleware);
    }
    _middleware.insert(index, MiddlewareEntry(middleware));
    return this;
  }

  @override
  String toString() {
    return 'Composer<$CTX>(middleware: ${_middleware.length}, '
        'hasGlobalErrorHandler: ${_globalErrorHandler != null})';
  }
}
