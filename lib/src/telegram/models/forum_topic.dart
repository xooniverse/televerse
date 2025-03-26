// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_topic.freezed.dart';
part 'forum_topic.g.dart';

/// This object represents a forum topic.
@freezed
abstract class ForumTopic with _$ForumTopic {
  /// Creates a new [ForumTopic] object.
  const factory ForumTopic({
    /// Unique identifier of the forum topic
    @JsonKey(name: 'message_thread_id') required String messageThreadId,

    /// Name of the topic
    @JsonKey(name: 'name') required String name,

    /// Color of the topic icon in RGB format
    @JsonKey(name: 'icon_color') required int iconColor,

    /// Optional. Unique identifier of the custom emoji shown as the topic icon
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
  }) = _ForumTopic;

  /// Creates a new [ForumTopic] object from json.
  factory ForumTopic.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicFromJson(json);
}
