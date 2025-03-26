// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_topic_closed.freezed.dart';
part 'forum_topic_closed.g.dart';

/// This object represents a service message about a forum topic closed in the
/// chat. Currently holds no information.
@freezed
abstract class ForumTopicClosed with _$ForumTopicClosed {
  /// Creates a new [ForumTopicClosed] object.
  const factory ForumTopicClosed() = _ForumTopicClosed;

  /// Creates a new [ForumTopicClosed] object from json.
  factory ForumTopicClosed.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicClosedFromJson(json);
}
