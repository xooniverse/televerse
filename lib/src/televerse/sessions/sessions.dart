part of televerse;

/// Abstract class for sessions to be used in Televerse.
///
/// Sessions are used to store data for each chat. Televerse session helps yu to
/// store data of any type for each chat. You can store data like the number of
/// messages sent by a user, the number of times a command was used, etc.
///
/// For now, sessions are stored in memory. In the future, sessions will be
/// stored in a database or a file.
///
/// To create a session, you must create a class that extends this class. You
/// can add any fields you want to the session. You must also override the
/// [toJson] method to convert the session object to a JSON object.
///
/// Example:
/// ```dart
/// import 'dart:io';
/// import 'package:televerse/televerse.dart';
///
/// // Session class must extend Session
/// class MySession extends Session {
///  int count;
///
///  MySession(this.count);
///
///  @override
///  Map<String, dynamic> toJson() {
///   return {'count': count};
///  }
/// }
///
/// // You should pass a function that returns a new session object
/// MySession init() {
///   return MySession(0);
/// }
///
/// // Now create the bot instance mentioning the session type
/// final bot = Bot<MySession>("<BOT_TOKEN>");
///
/// void main() {
///   // Initialize the session
///   bot.initSession(init);
///
///   // Now you can use the session in the bot
///  bot.onMessage((ctx) {
///     final sess = ctx.session as MySession;
///     sess.count++;
///     ctx.reply("Times you have sent a message: ${sess.count}");
///   });
///
///   bot.start();
/// }
/// ```
abstract class Session {
  /// Converts the session object to a JSON object.
  Map<String, dynamic> toJson();

  /// Constructor for the session.
  const Session();
}

/// Manages the sessions for Televerse.
class SessionsManager<T extends Session> {
  /// Constant enabled
  bool enabled = true;

  /// Initialization function for the sessions.
  final T Function() _init;

  /// Creates a new sessions manager.
  SessionsManager._(this._init);

  /// The sessions map.
  final Map<int, T?> _sessions = {};

  /// Adds a session to the sessions map.
  void addSession(int id, T? session) {
    _sessions[id] = session;
  }

  /// Removes a session from the sessions map.
  void removeSession(int id) {
    _sessions.remove(id);
  }

  /// Gets a session from the sessions map.
  T getSession(int id) {
    if (!_sessions.containsKey(id)) {
      _sessions[id] = _init();
    }

    return _sessions[id]!;
  }

  /// Gets all the sessions from the sessions map.
  Map<int, T?> getSessions() {
    return _sessions;
  }

  /// Converts the sessions map to a JSON object.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    _sessions.forEach((key, value) {
      json[key.toString()] = value?.toJson();
    });
    return json;
  }
}
