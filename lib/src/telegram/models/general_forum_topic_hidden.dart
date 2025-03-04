import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_forum_topic_hidden.freezed.dart';
part 'general_forum_topic_hidden.g.dart';

/// This object represents a service message about General forum topic hidden in
/// the chat. Currently holds no information.
@freezed
class GeneralForumTopicHidden with _$GeneralForumTopicHidden {
  /// Constructs a [GeneralForumTopicHidden] object.
  const factory GeneralForumTopicHidden() = _GeneralForumTopicHidden;

  /// De-serializes a [GeneralForumTopicHidden] object from a JSON map.
  factory GeneralForumTopicHidden.fromJson(Map<String, dynamic> json) =>
      _$GeneralForumTopicHiddenFromJson(json);
}
