part of televerse;

/// Abstract class for sessions to be used in Televerse.
abstract class Session {
  /// Converts the session object to a JSON object.
  Map<String, dynamic> toJson();

  /// Constructor for the session.
  const Session();
}

/// Manages the sessions for Televerse.
class SessionsManager<T extends Session> {
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
