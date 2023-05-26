part of televerse;

/// Session File Extension helps you to save and load sessions from files.
///
/// By default, the sessions are saved in the `.televerse/sessions` directory. If you want to change the directory, you can use the `path` parameter.
/// The path should be a directory path. The file name will be the session id.
/// ```dart
/// bot.sessions.saveAllSessions(path: '/path/to/sessions');
/// ```
extension SessionFileExtension on Session {
  /// Saves the session to a file.
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
}

/// Sessions Saver extension helps you to save all the sessions to their respective files.
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
extension SessionsSaver on SessionsManager {
  /// Saves all the sessions to their respective files.
  void saveAllSessions({String? path}) {
    for (final session in _sessions.values) {
      session?.saveToFile(path: path);
    }
  }
}
