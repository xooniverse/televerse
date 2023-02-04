part of models;

/// This object represents a service message about General forum topic hidden in the chat. Currently holds no information.
class GeneralForumTopicHidden {
  GeneralForumTopicHidden();

  Map<String, dynamic> toJson() {
    return {};
  }

  factory GeneralForumTopicHidden.fromJson(Map<String, dynamic> json) {
    return GeneralForumTopicHidden();
  }
}
