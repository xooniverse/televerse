part of models;

/// This object represents a service message about General forum topic unhidden in the chat. Currently holds no information.
class GeneralForumTopicUnhidden {
  GeneralForumTopicUnhidden();

  Map<String, dynamic> toJson() {
    return {};
  }

  factory GeneralForumTopicUnhidden.fromJson(Map<String, dynamic> json) {
    return GeneralForumTopicUnhidden();
  }
}
