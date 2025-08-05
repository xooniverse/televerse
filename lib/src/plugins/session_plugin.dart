part of '../../plugins.dart';

/// A comprehensive session management plugin.
///
/// This plugin provides persistent session storage for bots, allowing
/// them to remember data across updates. Sessions are stored per chat
/// and automatically loaded/saved with each update.
///
/// Example usage:
/// ```dart
/// // Basic session with Map storage
/// bot.plugin(SessionPlugin<Context, Map<String, dynamic>>(
///   initial: () => {'count': 0, 'name': ''},
/// ));
///
/// // Custom session key generation
/// bot.plugin(SessionPlugin<Context, UserSession>(
///   initial: () => UserSession(),
///   getSessionKey: (ctx) => 'user_${ctx.from?.id ?? 0}',
/// ));
///
/// // Usage in handlers
/// bot.command('count', (ctx) async {
///   final session = ctx.session as Map<String, dynamic>;
///   session['count'] = (session['count'] as int) + 1;
///   await ctx.reply('Count: ${session['count']}');
/// });
/// ```
class SessionPlugin<CTX extends Context, TSession> implements BotPlugin<CTX> {
  /// Factory function to create initial session data.
  final TSession Function() initial;

  /// Function to generate session keys from context.
  final String Function(CTX ctx) getSessionKey;

  /// The storage backend for session data.
  final SessionStorage<TSession> storage;

  /// Property name to store session data on the context.
  static final String _sessionProperty = 'session';

  /// Optional prefix for session keys.
  final String? keyPrefix;

  /// Creates a session plugin.
  ///
  /// Parameters:
  /// - [initial]: Factory function to create initial session data
  /// - [getSessionKey]: Function to generate session keys (defaults to chat-based)
  /// - [storage]: Storage backend (defaults to memory storage)
  /// - [keyPrefix]: Optional prefix for session keys
  SessionPlugin({
    required this.initial,
    String Function(CTX ctx)? getSessionKey,
    SessionStorage<TSession>? storage,
    this.keyPrefix,
  })  : getSessionKey = getSessionKey ?? _defaultSessionKeyGenerator,
        storage = storage ?? MemorySessionStorage<TSession>();

  @override
  String get name => 'session';

  @override
  String get version => '1.0.0';

  @override
  String get description => 'Provides persistent session storage per chat';

  @override
  void install(Bot<CTX> bot) {
    bot.use(_sessionMiddleware);
  }

  /// The session middleware that handles loading and saving session data.
  Future<void> _sessionMiddleware(CTX ctx, NextFunction next) async {
    final rawKey = getSessionKey(ctx);
    final key = keyPrefix != null ? '$keyPrefix$rawKey' : rawKey;

    // Load existing session or create new one
    TSession session = await storage.get(key) ?? initial();

    // Store session on context
    ctx.set<TSession>(_sessionProperty, session);

    try {
      // Process the update
      await next();
    } finally {
      // Save the session (it might have been modified)
      final updatedSession = ctx.get<TSession>(_sessionProperty);
      if (updatedSession != null) {
        await storage.set(key, updatedSession);
      }
    }
  }

  /// Default session key generator using chat ID.
  static String _defaultSessionKeyGenerator<CTX extends Context>(CTX ctx) {
    final chatId = ctx.chat?.id;

    return chatId == null ? 'chat_unknown' : 'chat_$chatId';
  }

  @override
  void uninstall(Bot<CTX> bot) {
    // Close the storage if it supports it
    if (storage is MemorySessionStorage<TSession>) {
      (storage as MemorySessionStorage<TSession>).clear();
    }
  }

  @override
  List<String> get dependencies => [];
}

/// Abstract base class for contexts with typed session access.
///
/// Extend this class to add type-safe session support to your context:
///
/// ```dart
/// class MySession {
///   int count;
///   MySession(this.count);
///   void incr() => count++;
/// }
///
/// class MyContext extends SessionContext<MySession> {
///   MyContext(super.update, super.api, super.me);
/// }
/// ```
///
/// Requires [SessionPlugin] to be installed on your bot.
abstract class SessionContext<TSession> extends Context {
  /// Constructs a new [SessionContext].
  SessionContext(super.update, super.api, super.me);

  /// Gets the session data for this context.
  ///
  /// Throws [StateError] if no session plugin is installed.
  TSession get session {
    final sessionData = get<TSession>(SessionPlugin._sessionProperty);
    if (sessionData == null) {
      throw StateError(
        'Session not available. Make sure SessionPlugin is installed.',
      );
    }
    return sessionData;
  }

  /// Sets the session data for this context.
  ///
  /// Automatically saved when update processing completes.
  set session(TSession value) {
    set<TSession>(SessionPlugin._sessionProperty, value);
  }

  /// Checks if session data is available on this context.
  bool get hasSession => has(SessionPlugin._sessionProperty);
}

/// Interface for session storage backends.
///
/// This interface allows different storage implementations to be used
/// with the session plugin, such as in-memory, file-based, or database storage.
abstract interface class SessionStorage<T> {
  /// Retrieves session data for the given key.
  ///
  /// Returns null if no session data exists for the key.
  Future<T?> get(String key);

  /// Stores session data for the given key.
  Future<void> set(String key, T value);

  /// Removes session data for the given key.
  ///
  /// Returns true if data was removed, false if no data existed.
  Future<bool> remove(String key);

  /// Checks if session data exists for the given key.
  Future<bool> has(String key);

  /// Removes all session data.
  Future<void> clear();
}

/// In-memory session storage implementation.
///
/// This storage keeps all session data in memory and will be lost
/// when the application terminates. It's suitable for development
/// and testing, but not recommended for production use.
class MemorySessionStorage<T> implements SessionStorage<T> {
  final Map<String, T> _storage = <String, T>{};

  @override
  Future<T?> get(String key) async {
    return _storage[key];
  }

  @override
  Future<void> set(String key, T value) async {
    _storage[key] = value;
  }

  @override
  Future<bool> remove(String key) async {
    return _storage.remove(key) != null;
  }

  @override
  Future<bool> has(String key) async {
    return _storage.containsKey(key);
  }

  @override
  Future<void> clear() async {
    _storage.clear();
  }

  /// Gets the number of stored sessions.
  int get length => _storage.length;

  /// Gets all session keys.
  Iterable<String> get keys => _storage.keys;

  @override
  String toString() {
    return 'MemorySessionStorage(${_storage.length} sessions)';
  }
}
