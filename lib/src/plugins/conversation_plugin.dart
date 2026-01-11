// File: lib/src/plugins/conversation_plugin.dart

import 'dart:async';

import 'package:televerse/televerse.dart';

/// A conversation management plugin that allows waiting for user updates with timeout support.
///
/// This plugin provides the ability to create conversations that can wait for
/// user input and maintain state across multiple updates. Each conversation
/// can pause execution and resume when the next update arrives. The plugin
/// includes automatic cleanup of expired conversations to prevent memory leaks.
///
/// Example usage:
/// ```dart
/// // Define a conversation function
/// Future<void> askName(Conversation<Context> conversation, Context ctx) async {
///   try {
///     await ctx.reply('What is your name?');
///     final nameCtx = await conversation.wait(Duration(minutes: 5));
///     await nameCtx.reply('Hello ${nameCtx.text}!');
///   } on ConversationTimeoutException {
///     await ctx.reply('Sorry, you took too long to respond.');
///   }
/// }
///
/// // Install the plugin and register the conversation
/// final conversationPlugin = ConversationPlugin<Context>(
///   defaultTimeout: Duration(minutes: 30),
///   cleanupInterval: Duration(minutes: 5),
/// );
/// bot.plugin(conversationPlugin);
/// bot.use(createConversation('askName', askName));
///
/// // Start the conversation
/// bot.command('start', (ctx) async {
///   await ctx.conversation.enter('askName');
/// });
/// ```
class ConversationPlugin<CTX extends Context> implements BotPlugin<CTX> {
  /// Storage for conversation state.
  final ConversationStorage storage;

  /// Function to generate storage keys from context.
  final String Function(CTX ctx) getStorageKey;

  /// Default timeout for conversations.
  final Duration defaultTimeout;

  /// Interval for automatic cleanup of expired conversations.
  final Duration cleanupInterval;

  /// Callback called when a conversation expires.
  final void Function(String conversationName, String key)?
  onConversationExpired;

  /// Callback called when a conversation times out during wait.
  final Future<void> Function(String conversationName, CTX? ctx)?
  onConversationTimeout;

  /// Registry of conversation functions.
  final Map<String, _ConversationWrapper<CTX>> _conversations = {};

  /// Active waiting conversations with their completers and timeouts.
  final Map<String, _WaitingConversation<CTX>> _waitingConversations = {};

  /// Timer for periodic cleanup.
  Timer? _cleanupTimer;

  /// Last cleanup time.
  DateTime _lastCleanup = DateTime.now();

  /// Static reference to the installed plugin instance for context access.
  static ConversationPlugin? _instance;

  /// Creates a conversation plugin.
  ConversationPlugin({
    ConversationStorage? storage,
    String Function(CTX ctx)? getStorageKey,
    this.defaultTimeout = const Duration(minutes: 30),
    this.cleanupInterval = const Duration(minutes: 5),
    this.onConversationExpired,
    this.onConversationTimeout,
  }) : storage = storage ?? MemoryConversationStorage(),
       getStorageKey = getStorageKey ?? _defaultStorageKeyGenerator;

  @override
  String get name => 'conversation';

  @override
  String get version => '1.1.0';

  @override
  String get description =>
      'Provides conversation management with waiting capabilities and timeout support';

  @override
  void install(Bot<CTX> bot) {
    _instance = this;
    bot.use(_conversationMiddleware);
    _startCleanupTimer();
  }

  /// Starts the periodic cleanup timer.
  void _startCleanupTimer() {
    _cleanupTimer?.cancel();
    _cleanupTimer = Timer.periodic(cleanupInterval, (_) {
      unawaited(_performCleanup());
    });
  }

  /// The conversation middleware that handles conversation state and routing.
  Future<void> _conversationMiddleware(CTX ctx, NextFunction next) async {
    // Perform cleanup if enough time has passed
    final now = DateTime.now();
    if (now.difference(_lastCleanup) >= cleanupInterval) {
      unawaited(_performCleanup());
      _lastCleanup = now;
    }

    final key = getStorageKey(ctx);

    // Load existing conversation state
    final state = await storage.get(key);

    // If there's an active conversation, handle it
    if (state != null && state.isActive) {
      // Check if conversation has expired
      if (_isConversationExpired(state)) {
        await _cleanupConversation(key, state.conversationName);
        await next();
        return;
      }

      final conversationWrapper = _conversations[state.conversationName];
      if (conversationWrapper != null) {
        // Complete the waiting conversation
        final waitingConversation = _waitingConversations[key];
        if (waitingConversation != null &&
            !waitingConversation.completer.isCompleted) {
          // Cancel the timeout timer
          waitingConversation.timeoutTimer?.cancel();
          _waitingConversations.remove(key);

          // Update last activity
          final updatedState = state.copyWith(lastUpdated: DateTime.now());
          await storage.set(key, updatedState);

          waitingConversation.completer.complete(ctx);
          return; // Don't call next() - conversation handled the update
        }
      } else {
        // Conversation function not found - clean up
        await _cleanupConversation(key, state.conversationName);
      }
    }

    // Continue to normal middleware
    await next();
  }

  /// Default storage key generator using chat ID.
  static String _defaultStorageKeyGenerator<CTX extends Context>(CTX ctx) {
    final chatId = ctx.chat?.id;
    return chatId == null ? 'conversation_unknown' : 'conversation_$chatId';
  }

  /// Registers a conversation function.
  void registerConversation(
    String name,
    ConversationFunction<CTX> conversationFn,
  ) {
    _conversations[name] = _ConversationWrapper<CTX>(conversationFn);
  }

  /// Starts a conversation by name.
  Future<void> enterConversation(String conversationName, CTX ctx) async {
    final conversationWrapper = _conversations[conversationName];
    if (conversationWrapper == null) {
      throw TeleverseException(
        'Conversation "$conversationName" not found',
        description:
            'Make sure to register the conversation using createConversation',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    final key = getStorageKey(ctx);

    // Clean up any existing conversation for this key
    await _cleanupConversation(key, conversationName);

    // Create conversation handle
    final conversation = Conversation._(
      storage,
      key,
      conversationName,
      this,
      defaultTimeout,
    );

    // Start the conversation
    unawaited(conversationWrapper.function(conversation, ctx));
  }

  /// Checks if a conversation has expired.
  bool _isConversationExpired(ConversationState state) {
    final now = DateTime.now();
    final expiresAt = state.expiresAt ?? state.lastUpdated.add(defaultTimeout);
    return now.isAfter(expiresAt);
  }

  /// Performs automatic cleanup of expired conversations.
  Future<void> _performCleanup() async {
    try {
      await cleanupExpiredConversations();
    } catch (e) {
      // Log error but don't crash the bot
      print('Error during conversation cleanup: $e');
    }
  }

  /// Manually cleans up expired conversations.
  Future<void> cleanupExpiredConversations() async {
    final expiredKeys = <String>[];
    final allKeys = await storage.getAllKeys();

    for (final key in allKeys) {
      final state = await storage.get(key);
      if (state != null && _isConversationExpired(state)) {
        expiredKeys.add(key);
      }
    }

    for (final key in expiredKeys) {
      final state = await storage.get(key);
      if (state != null) {
        await _cleanupConversation(key, state.conversationName);
      }
    }
  }

  /// Cleans up a specific conversation.
  Future<void> _cleanupConversation(String key, String conversationName) async {
    // Remove from storage
    await storage.remove(key);

    // Complete any waiting conversation with timeout
    final waitingConversation = _waitingConversations.remove(key);
    if (waitingConversation != null &&
        !waitingConversation.completer.isCompleted) {
      waitingConversation.timeoutTimer?.cancel();
      waitingConversation.completer.completeError(
        ConversationTimeoutException(conversationName),
      );
    }

    // Notify about expiration
    onConversationExpired?.call(conversationName, key);
  }

  /// Sets a custom timeout for a specific conversation.
  Future<void> setConversationTimeout(String key, Duration timeout) async {
    final state = await storage.get(key);
    if (state != null) {
      final expiresAt = DateTime.now().add(timeout);
      final updatedState = state.copyWith(expiresAt: expiresAt);
      await storage.set(key, updatedState);
    }
  }

  /// Gets a list of all active conversation keys.
  Future<List<String>> getActiveConversations() async {
    final activeKeys = <String>[];
    final allKeys = await storage.getAllKeys();

    for (final key in allKeys) {
      final state = await storage.get(key);
      if (state != null && state.isActive && !_isConversationExpired(state)) {
        activeKeys.add(key);
      }
    }

    return activeKeys;
  }

  /// Forces cleanup of a specific conversation.
  Future<void> forceCleanupConversation(String key) async {
    final state = await storage.get(key);
    if (state != null) {
      await _cleanupConversation(key, state.conversationName);
    }
  }

  /// Gets statistics about active conversations.
  Future<ConversationStats> getConversationStats() async {
    final allKeys = await storage.getAllKeys();
    int active = 0;
    int expired = 0;
    int waiting = 0;

    for (final key in allKeys) {
      final state = await storage.get(key);
      if (state != null) {
        if (_isConversationExpired(state)) {
          expired++;
        } else if (state.isActive) {
          active++;
          if (_waitingConversations.containsKey(key)) {
            waiting++;
          }
        }
      }
    }

    return ConversationStats(
      totalConversations: allKeys.length,
      activeConversations: active,
      expiredConversations: expired,
      waitingConversations: waiting,
    );
  }

  @override
  void uninstall(Bot<CTX> bot) {
    _instance = null;
    _cleanupTimer?.cancel();
    _cleanupTimer = null;

    // Clear storage if it's memory storage
    if (storage is MemoryConversationStorage) {
      (storage as MemoryConversationStorage).clear();
    }

    // Complete any waiting conversations with an error
    for (final waitingConversation in _waitingConversations.values) {
      if (!waitingConversation.completer.isCompleted) {
        waitingConversation.timeoutTimer?.cancel();
        waitingConversation.completer.completeError(
          TeleverseException(
            'Conversation plugin uninstalled',
            type: TeleverseExceptionType.invalidParameter,
          ),
        );
      }
    }
    _waitingConversations.clear();
    _conversations.clear();
  }

  @override
  List<String> get dependencies => [];

  /// Gets the current plugin instance.
  static ConversationPlugin<T>? getInstance<T extends Context>() {
    return _instance as ConversationPlugin<T>?;
  }

  /// Legacy getter for backwards compatibility.
  static ConversationPlugin? get instance => _instance;
}

/// Wrapper class to properly handle conversation function types.
class _ConversationWrapper<CTX extends Context> {
  /// The wrapped conversation function.
  final ConversationFunction<CTX> function;

  /// Creates a conversation wrapper.
  const _ConversationWrapper(this.function);
}

/// Represents a waiting conversation with timeout management.
class _WaitingConversation<CTX extends Context> {
  /// The completer for the waiting conversation.
  final Completer<CTX> completer;

  /// Timer for timeout handling.
  final Timer? timeoutTimer;

  /// The conversation name.
  final String conversationName;

  /// Creates a waiting conversation.
  const _WaitingConversation({
    required this.completer,
    required this.conversationName,
    this.timeoutTimer,
  });
}

/// Creates a middleware that registers a conversation function.
///
/// This should be used after installing the ConversationPlugin.
///
/// Example:
/// ```dart
/// bot.use(createConversation('greeting', greetingConversation));
/// ```
Middleware<CTX> createConversation<CTX extends Context>(
  String name,
  ConversationFunction<CTX> conversationFn,
) {
  return (ctx, next) async {
    // Register the conversation function with the plugin instance
    final plugin = ConversationPlugin.getInstance<CTX>();
    if (plugin != null) {
      plugin.registerConversation(name, conversationFn);
    } else {
      throw TeleverseException(
        'ConversationPlugin not installed',
        description:
            'Install ConversationPlugin before registering conversations',
        type: TeleverseExceptionType.invalidParameter,
      );
    }
    await next();
  };
}

/// A conversation handle that provides waiting capabilities with timeout support.
///
/// This is the primary interface for conversation functions to wait for
/// user input and control conversation flow with automatic timeout handling.
class Conversation<CTX extends Context> {
  final ConversationStorage _storage;
  final String _storageKey;
  final String _conversationName;
  final ConversationPlugin<CTX> _plugin;
  final Duration _defaultTimeout;

  /// Creates a conversation handle.
  Conversation._(
    this._storage,
    this._storageKey,
    this._conversationName,
    this._plugin,
    this._defaultTimeout,
  );

  /// Waits for the next update from the user with optional timeout.
  ///
  /// This method pauses the conversation and waits for the user to send
  /// another message, press a button, etc. If no update is received within
  /// the timeout period, a [ConversationTimeoutException] is thrown.
  ///
  /// Parameters:
  /// - [timeout]: Custom timeout for this wait operation. Defaults to plugin's defaultTimeout.
  ///
  /// Returns the context of the next update.
  ///
  /// Throws [ConversationTimeoutException] if the timeout is exceeded.
  ///
  /// Example:
  /// ```dart
  /// try {
  ///   await ctx.reply('What is your favorite color?');
  ///   final response = await conversation.wait(Duration(minutes: 2));
  ///   await response.reply('${response.text} is a great color!');
  /// } on ConversationTimeoutException {
  ///   await ctx.reply('You took too long to respond!');
  /// }
  /// ```
  Future<CTX> wait([Duration? timeout]) async {
    final effectiveTimeout = timeout ?? _defaultTimeout;

    // Create completer for this wait
    final completer = Completer<CTX>();

    // Set up timeout timer
    Timer? timeoutTimer;
    if (effectiveTimeout != Duration.zero) {
      timeoutTimer = Timer(effectiveTimeout, () {
        if (!completer.isCompleted) {
          _plugin._waitingConversations.remove(_storageKey);
          completer.completeError(
            ConversationTimeoutException(_conversationName),
          );

          // Notify about timeout if callback is provided
          _plugin.onConversationTimeout?.call(_conversationName, null);
        }
      });
    }

    // Store the waiting conversation
    _plugin._waitingConversations[_storageKey] = _WaitingConversation<CTX>(
      completer: completer,
      timeoutTimer: timeoutTimer,
      conversationName: _conversationName,
    );

    // Mark conversation as waiting with expiry time
    final expiresAt = DateTime.now().add(effectiveTimeout);
    final state = ConversationState(
      conversationName: _conversationName,
      isActive: true,
      lastUpdated: DateTime.now(),
      expiresAt: expiresAt,
    );
    await _storage.set(_storageKey, state);

    try {
      // Wait for the next update
      final ctx = await completer.future;
      return ctx;
    } catch (e) {
      // Clean up on any error
      timeoutTimer?.cancel();
      _plugin._waitingConversations.remove(_storageKey);
      rethrow;
    }
  }

  /// Waits for an update that matches a custom predicate with timeout.
  ///
  /// This method keeps waiting for updates until one matches the filter
  /// or the timeout is exceeded.
  ///
  /// Parameters:
  /// - [predicate]: The predicate that the update must match.
  /// - [timeout]: Custom timeout for this wait operation.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Send me a photo:');
  /// final photoCtx = await conversation.waitFor(
  ///   PhotoFilter(),
  ///   Duration(minutes: 5),
  /// );
  /// await photoCtx.reply('Nice photo!');
  /// ```
  Future<CTX> waitFor(
    MiddlewarePredicate<CTX> predicate, {
    Duration? timeout,
  }) async {
    final deadline = timeout != null ? DateTime.now().add(timeout) : null;

    CTX ctx;
    do {
      final remainingTime = deadline?.difference(DateTime.now());

      if (remainingTime != null && remainingTime.isNegative) {
        throw ConversationTimeoutException(_conversationName);
      }

      ctx = await wait(remainingTime);
    } while (!predicate(ctx));

    return ctx;
  }

  /// Waits for an update that matches a specific filter with timeout.
  ///
  /// This method keeps waiting for updates until one matches the filter
  /// or the timeout is exceeded.
  ///
  /// Parameters:
  /// - [filter]: The [Filter] that the update must match.
  /// - [timeout]: Custom timeout for this wait operation.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Send me a photo:');
  /// final photoCtx = await conversation.filter(
  ///   PhotoFilter(),
  ///   Duration(minutes: 5),
  /// );
  /// await photoCtx.reply('Nice photo!');
  /// ```
  Future<CTX> filter(Filter<CTX> filter, {Duration? timeout}) async {
    final deadline = timeout != null ? DateTime.now().add(timeout) : null;

    CTX ctx;
    do {
      final remainingTime = deadline?.difference(DateTime.now());

      if (remainingTime != null && remainingTime.isNegative) {
        throw ConversationTimeoutException(_conversationName);
      }

      ctx = await wait(remainingTime);
    } while (!_matchesFilter(ctx, filter));

    return ctx;
  }

  /// Waits for an update that satisfies a predicate function with timeout.
  ///
  /// The predicate function receives the context and should return true
  /// if the update should be accepted.
  ///
  /// Parameters:
  /// - [predicate]: Function that determines if an update should be accepted.
  /// - [timeout]: Custom timeout for this wait operation.
  /// - [otherwise]: Optional function called for updates that don't match the predicate.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Send me a number:');
  /// final numberCtx = await conversation.waitUntil(
  ///   (ctx) {
  ///     final text = ctx.text;
  ///     return text != null && int.tryParse(text) != null;
  ///   },
  ///   timeout: Duration(minutes: 3),
  ///   otherwise: (ctx) async {
  ///     await ctx.reply('Please send a valid number.');
  ///   },
  /// );
  /// final number = int.parse(numberCtx.text!);
  /// await numberCtx.reply('You sent: $number');
  /// ```
  Future<CTX> waitUntil(
    bool Function(CTX ctx) predicate, {
    Duration? timeout,
    Future<void> Function(CTX ctx)? otherwise,
  }) async {
    final deadline = timeout != null ? DateTime.now().add(timeout) : null;

    CTX ctx;
    do {
      final remainingTime = deadline?.difference(DateTime.now());

      if (remainingTime != null && remainingTime.isNegative) {
        throw ConversationTimeoutException(_conversationName);
      }

      ctx = await wait(remainingTime);

      if (!predicate(ctx) && otherwise != null) {
        await otherwise(ctx);
      }
    } while (!predicate(ctx));

    return ctx;
  }

  /// Extends the timeout for the current conversation.
  ///
  /// This adds additional time to the conversation's expiry time.
  ///
  /// Example:
  /// ```dart
  /// await conversation.extendTimeout(Duration(minutes: 10));
  /// ```
  Future<void> extendTimeout(Duration additionalTime) async {
    final state = await _storage.get(_storageKey);
    if (state != null) {
      final currentExpiry =
          state.expiresAt ?? state.lastUpdated.add(_defaultTimeout);
      final newExpiry = currentExpiry.add(additionalTime);
      final updatedState = state.copyWith(expiresAt: newExpiry);
      await _storage.set(_storageKey, updatedState);
    }
  }

  /// Sets a custom timeout for the conversation.
  ///
  /// This replaces the current expiry time with a new one.
  ///
  /// Example:
  /// ```dart
  /// await conversation.setCustomTimeout(Duration(hours: 1));
  /// ```
  Future<void> setCustomTimeout(Duration timeout) async {
    await _plugin.setConversationTimeout(_storageKey, timeout);
  }

  /// Halts the conversation immediately.
  ///
  /// This terminates the conversation and cleans up any stored state.
  ///
  /// Example:
  /// ```dart
  /// if (ctx.text == 'cancel') {
  ///   await ctx.reply('Conversation cancelled.');
  ///   await conversation.halt();
  /// }
  /// ```
  Future<void> halt() async {
    await _plugin.forceCleanupConversation(_storageKey);
  }

  /// Checks if a context matches a filter query.
  bool _matchesFilter(CTX ctx, Filter<CTX> filter) {
    return filter.matches(ctx);
  }

  /// Gets the remaining time before this conversation expires.
  Future<Duration?> getRemainingTime() async {
    final state = await _storage.get(_storageKey);
    if (state == null) return null;

    final expiresAt = state.expiresAt ?? state.lastUpdated.add(_defaultTimeout);
    final remaining = expiresAt.difference(DateTime.now());

    return remaining.isNegative ? Duration.zero : remaining;
  }

  /// Checks if this conversation is still active.
  Future<bool> isActive() async {
    final state = await _storage.get(_storageKey);
    return state != null &&
        state.isActive &&
        !_plugin._isConversationExpired(state);
  }
}

/// Represents the state of a conversation with expiry support.
class ConversationState {
  /// Name of the conversation function.
  final String conversationName;

  /// Whether the conversation is currently active.
  final bool isActive;

  /// When the conversation was last updated.
  final DateTime lastUpdated;

  /// When the conversation expires (optional, defaults to lastUpdated + defaultTimeout).
  final DateTime? expiresAt;

  /// Creates a conversation state.
  const ConversationState({
    required this.conversationName,
    required this.isActive,
    required this.lastUpdated,
    this.expiresAt,
  });

  /// Creates a copy of this state with updated fields.
  ConversationState copyWith({
    String? conversationName,
    bool? isActive,
    DateTime? lastUpdated,
    DateTime? expiresAt,
  }) {
    return ConversationState(
      conversationName: conversationName ?? this.conversationName,
      isActive: isActive ?? this.isActive,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }

  /// Creates a conversation state from JSON.
  factory ConversationState.fromJson(Map<String, dynamic> json) {
    return ConversationState(
      conversationName: json['conversationName'] as String,
      isActive: json['isActive'] as bool,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      expiresAt: json['expiresAt'] != null
          ? DateTime.parse(json['expiresAt'] as String)
          : null,
    );
  }

  /// Converts the conversation state to JSON.
  Map<String, dynamic> toJson() {
    return {
      'conversationName': conversationName,
      'isActive': isActive,
      'lastUpdated': lastUpdated.toIso8601String(),
      if (expiresAt != null) 'expiresAt': expiresAt!.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'ConversationState('
        'name: $conversationName, '
        'active: $isActive, '
        'lastUpdated: $lastUpdated'
        '${expiresAt != null ? ', expiresAt: $expiresAt' : ''}'
        ')';
  }
}

/// Statistics about conversation usage.
class ConversationStats {
  /// Total number of conversations in storage.
  final int totalConversations;

  /// Number of currently active conversations.
  final int activeConversations;

  /// Number of expired conversations.
  final int expiredConversations;

  /// Number of conversations currently waiting for input.
  final int waitingConversations;

  /// Creates conversation statistics.
  const ConversationStats({
    required this.totalConversations,
    required this.activeConversations,
    required this.expiredConversations,
    required this.waitingConversations,
  });

  @override
  String toString() {
    return 'ConversationStats('
        'total: $totalConversations, '
        'active: $activeConversations, '
        'expired: $expiredConversations, '
        'waiting: $waitingConversations'
        ')';
  }
}

/// Exception thrown when a conversation times out.
class ConversationTimeoutException implements Exception {
  /// The name of the conversation that timed out.
  final String conversationName;

  /// Creates a conversation timeout exception.
  const ConversationTimeoutException(this.conversationName);

  @override
  String toString() {
    return 'ConversationTimeoutException: Conversation "$conversationName" timed out';
  }
}

/// Exception thrown when a conversation is halted.
class ConversationHaltException implements Exception {
  /// Creates a new ConversationHaltException.
  const ConversationHaltException();
  @override
  String toString() => 'ConversationHaltException: Conversation was halted';
}

/// Enhanced interface for storing conversation state with key enumeration.
abstract interface class ConversationStorage {
  /// Gets conversation state for a key.
  Future<ConversationState?> get(String key);

  /// Sets conversation state for a key.
  Future<void> set(String key, ConversationState state);

  /// Removes conversation state for a key.
  Future<bool> remove(String key);

  /// Clears all conversation state.
  Future<void> clear();

  /// Gets all conversation keys.
  Future<List<String>> getAllKeys();
}

/// Enhanced in-memory implementation of conversation storage.
class MemoryConversationStorage implements ConversationStorage {
  /// Creates a new MemoryConversationStorage instance.
  MemoryConversationStorage();

  final Map<String, ConversationState> _storage = {};

  @override
  Future<ConversationState?> get(String key) async {
    return _storage[key];
  }

  @override
  Future<void> set(String key, ConversationState state) async {
    _storage[key] = state;
  }

  @override
  Future<bool> remove(String key) async {
    return _storage.remove(key) != null;
  }

  @override
  Future<void> clear() async {
    _storage.clear();
  }

  @override
  Future<List<String>> getAllKeys() async {
    return _storage.keys.toList();
  }

  /// Gets the number of active conversations.
  int get length => _storage.length;

  @override
  String toString() {
    return 'MemoryConversationStorage(${_storage.length} conversations)';
  }
}

/// Type definition for conversation functions.
typedef ConversationFunction<CTX extends Context> =
    Future<void> Function(Conversation<CTX> conversation, CTX ctx);

/// Extension to add conversation capabilities to contexts.
extension ConversationContextExtension on Context {
  /// Enters a conversation by name.
  ///
  /// This starts a new conversation with the specified name.
  /// The conversation function must be registered using [createConversation].
  ///
  /// Example:
  /// ```dart
  /// await ctx.conversation.enter('greeting');
  /// ```
  Future<void> enterConversation(String conversationName) async {
    final plugin = ConversationPlugin.instance;
    if (plugin == null) {
      throw TeleverseException(
        'ConversationPlugin not installed',
        description: 'Install ConversationPlugin before starting conversations',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    await (plugin).enterConversation(conversationName, this);
  }
}

/// Convenience getter for conversation operations.
extension ConversationContextGetter on Context {
  /// Gets conversation operations for this context.
  ///
  /// Example:
  /// ```dart
  /// await ctx.conversation.enter('greeting');
  /// ```
  ConversationContextOperations get conversation {
    return ConversationContextOperations(this);
  }
}

/// Wrapper class for conversation operations.
class ConversationContextOperations {
  final Context _ctx;

  /// Constructs ConversationContextOperations.
  const ConversationContextOperations(Context ctx) : _ctx = ctx;

  /// Enters a conversation by name.
  Future<void> enter(String conversationName) async {
    await _ctx.enterConversation(conversationName);
  }
}
