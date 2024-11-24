part of '../../../televerse.dart';

/// Represents different states a conversation can be in
///
/// Possible states are:
/// * [active] - The conversation is currently ongoing
/// * [completed] - The conversation has successfully completed
/// * [cancelled] - The conversation was cancelled before completion
/// * [timedOut] - The conversation exceeded its timeout duration
enum ConversationState {
  /// The conversation is currently ongoing
  active,

  /// The conversation has successfully completed
  completed,

  /// The conversation was cancelled before completion
  cancelled,

  /// The conversation exceeded its timeout duration
  timedOut,
}

/// Configuration options for managing conversation behavior
///
/// This class provides various settings to customize how a conversation behaves,
/// including timeout settings and cleanup behavior.
class ConversationConfig {
  /// The maximum duration to wait for a response before timing out.
  /// If null, the conversation will never timeout.
  final Duration? timeout;

  /// Whether to clear any unfulfilled conversations before starting a new one.
  /// Defaults to true.
  final bool clearUnfulfilled;

  /// Optional name for the conversation scope.
  /// If not provided, a random name will be generated.
  final String? name;

  /// Creates a new conversation configuration.
  ///
  /// All parameters are optional:
  /// * [timeout] - Duration after which the conversation will timeout
  /// * [clearUnfulfilled] - Whether to clear pending conversations (defaults to true)
  /// * [name] - Custom name for the conversation scope
  const ConversationConfig({
    this.timeout,
    this.clearUnfulfilled = true,
    this.name,
  });

  /// Copies the the current config with specified values.
  ConversationConfig copyWith({
    Duration? timeout,
    bool? clearUnfulfilled,
    String? name,
  }) {
    return ConversationConfig(
      timeout: timeout ?? this.timeout,
      clearUnfulfilled: clearUnfulfilled ?? this.clearUnfulfilled,
      name: name ?? this.name,
    );
  }
}

/// Function type definition for filtering conversation updates
///
/// Takes a context object and returns a boolean indicating whether
/// the update matches the desired criteria.
typedef ConversationFilter<CTX extends Context> = bool Function(CTX ctx);

/// Base class representing the result of a conversation
///
/// This is a sealed class that can either be a [ConversationSuccess]
/// or [ConversationFailure].
sealed class ConversationResult<T> {
  /// The final state of the conversation
  final ConversationState state;

  /// Creates a new conversation result with the specified state
  const ConversationResult(this.state);
}

/// Represents a successful conversation result
///
/// Contains the data retrieved from the successful conversation.
class ConversationSuccess<T> extends ConversationResult<T> {
  /// The data obtained from the successful conversation
  final T data;

  /// Creates a new successful conversation result with the obtained data
  ConversationSuccess(this.data) : super(ConversationState.completed);
}

/// Represents a failed conversation result
///
/// Contains information about why the conversation failed.
class ConversationFailure<T> extends ConversationResult<T> {
  /// Description of what caused the conversation to fail
  final String message;

  /// Creates a new failed conversation result with an error message and state
  ConversationFailure(this.message, ConversationState state) : super(state);
}

/// Main class for managing conversations in a bot context
///
/// Provides methods for waiting for specific updates and managing conversation state.
class Conversation<CTX extends Context> {
  final Bot<CTX> _bot;

  final String _name;
  final _activeSubscriptions = <String, _ConversationSubscription>{};

  /// Unique name identifier for the conversation
  ///
  /// If not provided in constructor, generates a random name with 'conv-' prefix
  String get name => _name;

  /// Creates a new conversation instance
  ///
  /// [name] is optional and will be auto-generated if not provided
  Conversation(
    Bot<CTX> bot, {
    String? name,
  })  : _bot = bot,
        _name = name ?? 'conv-${_generateId(5)}';

  /// Waits for a specific update that matches the given filter criteria
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor
  /// * [filter] - Function to determine if an update matches desired criteria
  /// * [config] - Optional configuration for the conversation behavior
  ///
  /// Returns a [ConversationResult] indicating success or failure
  Future<ConversationResult<CTX>> waitFor({
    required ID chatId,
    required ConversationFilter filter,
    ConversationConfig config = const ConversationConfig(),
  }) async {
    final scopeName = _generateScopeName(config.name);

    if (config.clearUnfulfilled) {
      await clear(chatId);
    }

    // Create subscription
    final subscription = await _createSubscription(
      chatId: chatId,
      scopeName: scopeName,
      filter: filter,
      timeout: config.timeout,
    );

    try {
      final result = await subscription.future;
      return result;
    } finally {
      await _cleanup(scopeName, chatId);
    }
  }

  /// Creates and manages a conversation subscription
  Future<_ConversationSubscription<CTX>> _createSubscription({
    required ID chatId,
    required String scopeName,
    required ConversationFilter filter,
    Duration? timeout,
  }) async {
    // Cancel existing subscription if any
    await _cancelExistingSubscription(scopeName);

    final completer = Completer<ConversationResult<CTX>>();
    final subscription = _bot.updatesStream.listen(
      (update) => _handleUpdate(update, chatId, filter, completer),
      onError: (error) {
        if (!completer.isCompleted) {
          completer.complete(
            ConversationFailure(
              error.toString(),
              ConversationState.cancelled,
            ),
          );
        }
      },
    );

    final conversationSub = _ConversationSubscription(
      subscription: subscription,
      future: completer.future,
      completer: completer,
    );

    _activeSubscriptions[scopeName] = conversationSub;

    // Setup timeout if specified
    if (timeout != null) {
      _setupTimeout(timeout, scopeName, completer);
    }

    // Register handler scope
    _bot._handlerScopes.add(
      HandlerScope(
        isConversation: true,
        options: ScopeOptions(name: scopeName),
        predicate: (ctx) => _isSameChat(ctx, chatId) && filter(ctx),
        types: UpdateType.values,
        chatId: chatId,
      ),
    );

    return conversationSub;
  }

  void _handleUpdate(
    Update update,
    ID chatId,
    ConversationFilter filter,
    Completer<ConversationResult<CTX>> completer,
  ) async {
    final ctx = await _bot._contextConstructor(
      api: _bot.api,
      me: _bot.me,
      update: update,
    );

    if (!completer.isCompleted && _isSameChat(ctx, chatId) && filter(ctx)) {
      try {
        completer.complete(ConversationSuccess(ctx));
      } catch (e) {
        completer.complete(
          ConversationFailure(
            e.toString(),
            ConversationState.cancelled,
          ),
        );
      }
    }
  }

  void _setupTimeout(
    Duration timeout,
    String scopeName,
    Completer<ConversationResult<CTX>> completer,
  ) {
    Timer(timeout, () {
      if (!completer.isCompleted) {
        completer.complete(
          ConversationFailure(
            'Conversation timed out',
            ConversationState.timedOut,
          ),
        );
        _cleanup(scopeName, null);
      }
    });
  }

  /// Waits for any text message in the specified chat
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor
  /// * [config] - Optional configuration for the conversation behavior
  ///
  /// Returns a [ConversationResult] containing the context with the text message
  Future<ConversationResult<CTX>> waitForTextMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.text != null,
      config: config,
    );
  }

  /// Waits for a message matching a specific pattern
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor
  /// * [pattern] - String or RegExp pattern to match against message text
  /// * [config] - Optional configuration for the conversation behavior
  ///
  /// Returns a [ConversationResult] containing the context with the matching message
  Future<ConversationResult<CTX>> waitForPattern({
    required ID chatId,
    required Pattern pattern,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) {
        final text = up.msg?.text ?? '';
        if (pattern is String) return text.contains(pattern);
        if (pattern is RegExp) return pattern.hasMatch(text);
        return false;
      },
      config: config,
    );
  }

  /// Clears all active conversations for a specific chat
  ///
  /// [chatId] - The ID of the chat whose conversations should be cleared
  Future<void> clear(ID chatId) async {
    final scopesToRemove = _bot._handlerScopes
        .where(
          (scope) =>
              scope.isConversation &&
              scope.name?.startsWith(_name) == true &&
              scope.chatId == chatId,
        )
        .toList();

    for (final scope in scopesToRemove) {
      await _cleanup(scope.name!, chatId);
    }
  }

  /// Clears all active conversations across all chats.
  Future<void> clearAll() async {
    final allScopes = _activeSubscriptions.keys.toList();
    for (final scope in allScopes) {
      await _cleanup(scope, null);
    }
  }

  // Helper methods
  Future<void> _cleanup(String scopeName, ID? chatId) async {
    final subscription = _activeSubscriptions.remove(scopeName);
    await subscription?.subscription.cancel();

    _bot._handlerScopes.removeWhere(
      (scope) =>
          scope.isConversation &&
          scope.name == scopeName &&
          (chatId == null || scope.chatId == chatId),
    );
  }

  Future<void> _cancelExistingSubscription(String scopeName) async {
    final existing = _activeSubscriptions[scopeName];
    if (existing != null) {
      await existing.subscription.cancel();
      if (!existing.completer.isCompleted) {
        existing.completer.complete(
          ConversationFailure(
            'Conversation cancelled',
            ConversationState.cancelled,
          ),
        );
      }
      _activeSubscriptions.remove(scopeName);
    }
  }

  String _generateScopeName(String? handlerName) =>
      handlerName ?? '$_name+${_generateId()}';

  bool _isSameChat(CTX ctx, ID chatId) {
    bool sameChat = ctx.chat?.id == chatId.id || ctx.from?.id == chatId.id;

    if (chatId is ChannelID || chatId is SupergroupID) {
      sameChat = sameChat || ctx.chat?.username == chatId.id;
    }
    return sameChat;
  }

  static String _generateId([int length = 10]) {
    // Implement your random ID generation here
    return DateTime.now().millisecondsSinceEpoch.toString();
  }

  /// Waits for a photo message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the photo message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the photo
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForPhotoMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.photo != null,
      config: config.copyWith(name: 'photo'),
    );
  }

  /// Waits for a video message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the video message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the video
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForVideoMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.video != null,
      config: config.copyWith(name: 'video'),
    );
  }

  /// Waits for a voice message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the voice message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the voice
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForVoiceMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.voice != null,
      config: config.copyWith(name: 'voice'),
    );
  }

  /// Waits for a document message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the document message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the document
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForDocumentMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.document != null,
      config: config.copyWith(name: 'document'),
    );
  }

  /// Waits for a contact message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the contact message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the contact
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForContactMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.contact != null,
      config: config.copyWith(name: 'contact'),
    );
  }

  /// Waits for a location message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the location message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the location
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForLocationMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.location != null,
      config: config.copyWith(name: 'location'),
    );
  }

  /// Waits for a venue message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the venue message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the venue
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForVenueMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.venue != null,
      config: config.copyWith(name: 'venue'),
    );
  }

  /// Waits for a poll message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the poll message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the poll
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForPollMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.poll != null,
      config: config.copyWith(name: 'poll'),
    );
  }

  /// Waits for a dice message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the dice message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the dice
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForDiceMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.dice != null,
      config: config.copyWith(name: 'dice'),
    );
  }

  /// Waits for a game message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the game message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the game
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForGameMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.game != null,
      config: config.copyWith(name: 'game'),
    );
  }

  /// Waits for a sticker message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the sticker message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the sticker
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForStickerMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.sticker != null,
      config: config.copyWith(name: 'sticker'),
    );
  }

  /// Waits for a video note message from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the video note message
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the video note
  /// message if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForVideoNoteMessage({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.videoNote != null,
      config: config.copyWith(name: 'videoNote'),
    );
  }

  /// Waits for a video chat to start.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the video chat start event
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the video chat
  /// start event if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitToStartVideoChat({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.videoChatStarted != null,
      config: config.copyWith(name: 'videoChatStarted'),
    );
  }

  /// Waits for a video chat to end.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the video chat end event
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the video chat
  /// end event if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitToEndVideoChat({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.msg?.videoChatEnded != null,
      config: config.copyWith(name: 'videoChatEnded'),
    );
  }

  /// Waits for a callback query from the user.
  ///
  /// Parameters:
  /// * [chatId] - The ID of the chat to monitor for the callback query
  /// * [config] - Optional configuration for the conversation behavior including
  ///   timeout and cleanup settings
  ///
  /// Returns a [ConversationResult] that may contain the context with the callback
  /// query if successful, or error details if the conversation failed or timed out.
  Future<ConversationResult<CTX>> waitForCallbackQuery({
    required ID chatId,
    ConversationConfig config = const ConversationConfig(),
  }) {
    return waitFor(
      chatId: chatId,
      filter: (up) => up.callbackQuery != null,
      config: config.copyWith(name: 'callbackQuery'),
    );
  }
}

class _ConversationSubscription<T> {
  final StreamSubscription<Update> subscription;
  final Future<ConversationResult<T>> future;
  final Completer<ConversationResult<T>> completer;

  _ConversationSubscription({
    required this.subscription,
    required this.future,
    required this.completer,
  });
}
