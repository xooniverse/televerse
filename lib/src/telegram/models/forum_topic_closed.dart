part of models;

/// This object represents a service message about a forum topic closed in the chat. Currently holds no information.
class ForumTopicClosed {
  /// Creates a new [ForumTopicClosed] object.
  ForumTopicClosed();

  /// Creates a new [ForumTopicClosed] object from json.
  factory ForumTopicClosed.fromJson(Map<String, dynamic> json) {
    return ForumTopicClosed();
  }

  /// Converts a [ForumTopicClosed] object to json.
  Map<String, dynamic> toJson() {
    return {};
  }
}
