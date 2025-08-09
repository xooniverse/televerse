// File: lib/src/plugins/conversation/conversation_plugin.dart
part of '../../../plugins.dart';

/// A conversation management plugin that allows waiting for user updates.
///
/// This plugin provides the ability to create conversations that can wait for
/// user input and maintain state across multiple updates. Each conversation
/// can pause execution and resume when the next update arrives.
///
/// Example usage:
/// ```dart
/// // Define a conversation function
/// Future<void> askName(Conversation<Context> conversation, Context ctx) async {
///   await ctx.reply('What is your name?');
///   final nameCtx = await conversation.wait();
///   await nameCtx.reply('Hello ${nameCtx.text}!');
/// }
///
/// // Install the plugin and register the conversation
/// final conversationPlugin = ConversationPlugin<Context>();
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

  /// Registry of conversation functions - now properly typed
  final Map<String, ConversationWrapper<CTX>> _conversations = {};

  /// Active waiting conversations.
  final Map<String, Completer<CTX>> _waitingConversations = {};

  /// Static reference to the installed plugin instance for context access
  static ConversationPlugin? _instance;

  /// Creates a conversation plugin.
  ConversationPlugin({
    ConversationStorage? storage,
    String Function(CTX ctx)? getStorageKey,
  })  : storage = storage ?? MemoryConversationStorage(),
        getStorageKey = getStorageKey ?? _defaultStorageKeyGenerator;

  @override
  String get name => 'conversation';

  @override
  String get version => '1.0.0';

  @override
  String get description =>
      'Provides conversation management with waiting capabilities';

  @override
  void install(Bot<CTX> bot) {
    _instance = this;
    bot.use(_conversationMiddleware);
  }

  /// The conversation middleware that handles conversation state and routing.
  Future<void> _conversationMiddleware(CTX ctx, NextFunction next) async {
    final key = getStorageKey(ctx);

    // Load existing conversation state
    final state = await storage.get(key);

    // If there's an active conversation, handle it
    if (state != null && state.isActive) {
      final conversationWrapper = _conversations[state.conversationName];
      if (conversationWrapper != null) {
        // Complete the waiting conversation
        final completer = _waitingConversations[key];
        if (completer != null && !completer.isCompleted) {
          _waitingConversations.remove(key);
          completer.complete(ctx);
          return; // Don't call next() - conversation handled the update
        }
      } else {
        // Conversation function not found - clean up
        await storage.remove(key);
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
    _conversations[name] = ConversationWrapper<CTX>(conversationFn);
  }

  /// Starts a conversation by name.
  Future<void> enterConversation(
    String conversationName,
    CTX ctx,
  ) async {
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

    // Create conversation handle
    final conversation = Conversation._(
      storage,
      key,
      conversationName,
      this,
    );

    // Start the conversation
    unawaited(conversationWrapper.function(conversation, ctx));
  }

  @override
  void uninstall(Bot<CTX> bot) {
    _instance = null;
    // Clear storage if it's memory storage
    if (storage is MemoryConversationStorage) {
      (storage as MemoryConversationStorage).clear();
    }
    // Complete any waiting conversations with an error
    for (final completer in _waitingConversations.values) {
      if (!completer.isCompleted) {
        completer.completeError(
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

  /// Gets the current plugin instance - now properly typed
  static ConversationPlugin<T>? getInstance<T extends Context>() {
    return _instance as ConversationPlugin<T>?;
  }

  /// Legacy getter for backwards compatibility
  static ConversationPlugin? get instance => _instance;
}

/// Wrapper class to properly handle conversation function types
class ConversationWrapper<CTX extends Context> {
  /// The wrapped conversation function
  final ConversationFunction<CTX> function;

  /// Creates a conversation wrapper
  const ConversationWrapper(this.function);
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

/// A conversation handle that provides waiting capabilities.
///
/// This is the primary interface for conversation functions to wait for
/// user input and control conversation flow.
class Conversation<CTX extends Context> {
  final ConversationStorage _storage;
  final String _storageKey;
  final String _conversationName;
  final ConversationPlugin<CTX> _plugin;

  /// Creates a conversation handle.
  Conversation._(
    this._storage,
    this._storageKey,
    this._conversationName,
    this._plugin,
  );

  /// Waits for the next update from the user.
  ///
  /// This method pauses the conversation and waits for the user to send
  /// another message, press a button, etc.
  ///
  /// Returns the context of the next update.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('What is your favorite color?');
  /// final response = await conversation.wait();
  /// await response.reply('${response.text} is a great color!');
  /// ```
  Future<CTX> wait() async {
    // Create completer for this wait
    final completer = Completer<CTX>();
    _plugin._waitingConversations[_storageKey] = completer;

    // Mark conversation as waiting
    final state = ConversationState(
      conversationName: _conversationName,
      isActive: true,
      lastUpdated: DateTime.now(),
    );
    await _storage.set(_storageKey, state);

    // Wait for the next update
    final ctx = await completer.future;
    return ctx;
  }

  /// Waits for an update that matches a specific filter query.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Send me a photo:');
  /// final photoCtx = await conversation.waitFor(PhotoFilter());
  /// await photoCtx.reply('Nice photo!');
  /// ```
  Future<CTX> waitFor(Filter<CTX> filter) async {
    CTX ctx;
    do {
      ctx = await wait();
    } while (!_matchesFilterQuery(ctx, filter));
    return ctx;
  }

  /// Waits for an update that satisfies a predicate function.
  ///
  /// The predicate function receives the context and should return true
  /// if the update should be accepted.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply('Send me a number:');
  /// final numberCtx = await conversation.waitUntil((ctx) {
  ///   final text = ctx.text;
  ///   return text != null && int.tryParse(text) != null;
  /// });
  /// final number = int.parse(numberCtx.text!);
  /// await numberCtx.reply('You sent: $number');
  /// ```
  Future<CTX> waitUntil(
    bool Function(CTX ctx) predicate, {
    Future<void> Function(CTX ctx)? otherwise,
  }) async {
    CTX ctx;
    do {
      ctx = await wait();
      if (!predicate(ctx) && otherwise != null) {
        await otherwise(ctx);
      }
    } while (!predicate(ctx));
    return ctx;
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
    await _storage.remove(_storageKey);

    // Complete any waiting conversation
    final completer = _plugin._waitingConversations[_storageKey];
    if (completer != null && !completer.isCompleted) {
      _plugin._waitingConversations.remove(_storageKey);
      completer.completeError(ConversationHaltException());
    }
  }

  /// Checks if a context matches a filter query.
  bool _matchesFilterQuery(CTX ctx, Filter<CTX> filter) {
    return filter.matches(ctx);
  }
}

/// Represents the state of a conversation.
class ConversationState {
  /// Name of the conversation function.
  final String conversationName;

  /// Whether the conversation is currently active.
  final bool isActive;

  /// When the conversation was last updated.
  final DateTime lastUpdated;

  /// Creates a conversation state.
  const ConversationState({
    required this.conversationName,
    required this.isActive,
    required this.lastUpdated,
  });

  /// Creates a conversation state from JSON.
  factory ConversationState.fromJson(Map<String, dynamic> json) {
    return ConversationState(
      conversationName: json['conversationName'] as String,
      isActive: json['isActive'] as bool,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );
  }

  /// Converts the conversation state to JSON.
  Map<String, dynamic> toJson() {
    return {
      'conversationName': conversationName,
      'isActive': isActive,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }
}

/// Exception thrown when a conversation is halted.
class ConversationHaltException implements Exception {
  @override
  String toString() => 'ConversationHaltException: Conversation was halted';
}

/// Interface for storing conversation state.
abstract interface class ConversationStorage {
  /// Gets conversation state for a key.
  Future<ConversationState?> get(String key);

  /// Sets conversation state for a key.
  Future<void> set(String key, ConversationState state);

  /// Removes conversation state for a key.
  Future<bool> remove(String key);

  /// Clears all conversation state.
  Future<void> clear();
}

/// In-memory implementation of conversation storage.
class MemoryConversationStorage implements ConversationStorage {
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

  /// Gets the number of active conversations.
  int get length => _storage.length;

  @override
  String toString() {
    return 'MemoryConversationStorage(${_storage.length} conversations)';
  }
}

/// Type definition for conversation functions.
typedef ConversationFunction<CTX extends Context> = Future<void> Function(
  Conversation<CTX> conversation,
  CTX ctx,
);

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

    // Cast to the appropriate type - this is safe because the plugin
    // instance matches the bot's context type
    await (plugin).enterConversation(
      conversationName,
      this,
    );
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

  /// Constructs ConversationContextOperations
  const ConversationContextOperations(Context ctx) : _ctx = ctx;

  /// Enters a conversation by name.
  Future<void> enter(String conversationName) async {
    await _ctx.enterConversation(conversationName);
  }
}
