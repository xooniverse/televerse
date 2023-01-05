part of models;

/// This object represents a service message about a forum topic reopened in the chat. Currently holds no information.
class ForumTopicReopened {
  ForumTopicReopened();

  factory ForumTopicReopened.fromJson(Map<String, dynamic> json) {
    return ForumTopicReopened();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
