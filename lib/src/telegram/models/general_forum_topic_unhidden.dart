import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_forum_topic_unhidden.freezed.dart';
part 'general_forum_topic_unhidden.g.dart';

/// This object represents a service message about General forum topic unhidden
/// in the chat. Currently holds no information.
@freezed
class GeneralForumTopicUnhidden with _$GeneralForumTopicUnhidden {
  /// Constructs a [GeneralForumTopicUnhidden] object.
  const factory GeneralForumTopicUnhidden() = _GeneralForumTopicUnhidden;

  /// De-serializes a [GeneralForumTopicUnhidden] object from a JSON map.
  factory GeneralForumTopicUnhidden.fromJson(Map<String, dynamic> json) =>
      _$GeneralForumTopicUnhiddenFromJson(json);
}
