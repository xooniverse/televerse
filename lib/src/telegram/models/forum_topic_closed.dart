/// This object represents a service message about a forum topic closed in the chat. Currently holds no information.
class ForumTopicClosed {
  ForumTopicClosed();

  factory ForumTopicClosed.fromJson(Map<String, dynamic> json) {
    return ForumTopicClosed();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
