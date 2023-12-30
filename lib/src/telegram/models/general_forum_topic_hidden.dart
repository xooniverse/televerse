part of 'models.dart';

/// This object represents a service message about General forum topic hidden in the chat. Currently holds no information.
class GeneralForumTopicHidden {
  /// Constructs a [GeneralForumTopicHidden] object
  GeneralForumTopicHidden();

  /// Converts a [GeneralForumTopicHidden] object to a JSON map
  Map<String, dynamic> toJson() {
    return {};
  }

  /// De-serializes a [GeneralForumTopicHidden] object from a JSON map
  factory GeneralForumTopicHidden.fromJson(Map<String, dynamic> json) {
    return GeneralForumTopicHidden();
  }
}
