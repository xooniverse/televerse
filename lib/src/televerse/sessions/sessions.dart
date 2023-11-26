part of '../../../televerse.dart';

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
  /// Saves the session to a file.
  ///
  /// By default, the sessions are saved in the `.televerse/sessions` directory. If you want to change the directory, you can use the `path` parameter.
  /// The path should be a directory path. The file name will be the session id.
  /// ```dart
  /// bot.sessions.saveAllSessions(path: '/path/to/sessions');
  /// ```
  void saveToFile({String? path}) {
    io.Directory directory = io.Directory.current;
    io.Directory sessionDir =
        io.Directory(path ?? "${directory.path}/.televerse/sessions");

    if (!sessionDir.existsSync()) {
      sessionDir.createSync(recursive: true);
    }

    if (path == null && id == null) {
      throw TeleverseException.sessionIdNotSet;
    }

    final filePath = "${sessionDir.path}/$id.json";

    final json = JsonEncoder.withIndent('  ').convert(toJson());
    io.File(filePath).writeAsStringSync(json);
  }

  /// Loads the session from a file.
  ///
  /// Returns null if the file does not exist.
  static T? loadFromFile<T extends Session>(
    T Function(Map<String, dynamic> json) fromJson, {
    String? path,
    int? id,
  }) {
    if (path == null && id == null) {
      throw TeleverseException.sessionIdNotSet;
    }

    path ??= "${io.Directory.current.path}/.televerse/sessions/$id.json";

    io.File file = io.File(path);

    if (!file.existsSync()) {
      return null;
    }

    final json = file.readAsStringSync();
    return fromJson(jsonDecode(json));
  }

  /// The session id - this is the chat id.
  int? id;

  /// Converts the session object to a JSON object.
  Map<String, dynamic> toJson();

  /// Constructor for the session.
  Session({this.id});

  /// Get the Chat ID object
  ChatID get chatID => ChatID(id!);
}

/// Manages the sessions for Televerse.
/// Session manger instance will be available as `bot.sessions`.
///
/// Session manager can help you to save all the sessions to their respective files.
///
/// ```dart
/// bot.sessions.saveAllSessions();
/// ```
///
/// By default, the sessions are saved in the `.televerse/sessions` directory. If you want to change the directory, you can use the `path` parameter.
/// The path should be a directory path. The file name will be the session id.
/// ```dart
/// bot.sessions.saveAllSessions(path: '/path/to/sessions');
/// ```
class SessionsManager<T extends Session> {
  /// Saves all the sessions to their respective files.
  ///
  /// ```dart
  /// bot.sessions.saveAllSessions();
  /// ```
  ///
  /// By default, the sessions are saved in the `.televerse/sessions` directory. If you want to change the directory, you can use the `path` parameter.
  /// The path should be a directory path. The file name will be the session id.
  /// ```dart
  /// bot.sessions.saveAllSessions(path: '/path/to/sessions');
  /// ```
  void saveAllSessions({String? path}) {
    final int count = _sessions.length;
    for (int i = 0; i < count; i++) {
      _sessions[i]?.saveToFile(path: path);
    }
  }

  /// Constant enabled
  bool enabled = true;

  /// Initialization function for the sessions.
  final T Function(int) _init;

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
      _sessions[id] = _init(id)..id = id;
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
