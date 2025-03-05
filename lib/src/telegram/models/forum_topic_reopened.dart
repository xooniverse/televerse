// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_topic_reopened.freezed.dart';
part 'forum_topic_reopened.g.dart';

/// This object represents a service message about a forum topic reopened in the
/// chat. Currently holds no information.
@freezed
class ForumTopicReopened with _$ForumTopicReopened {
  /// Creates a new [ForumTopicReopened] object.
  const factory ForumTopicReopened() = _ForumTopicReopened;

  /// Creates a new [ForumTopicReopened] object from json.
  factory ForumTopicReopened.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicReopenedFromJson(json);
}
