part of 'models.dart';

/// This object represents a message about a forwarded story in the chat. Currently holds no information.
class Story {
  /// Constructs an instance of Story.
  const Story();

  /// Constructs an instance of Story from a JSON map.
  factory Story.fromJson(Map<String, dynamic> json) {
    return Story();
  }

  /// Returns JSON-encodeable map of this object.
  Map<String, dynamic> toJson() => <String, dynamic>{};
}
