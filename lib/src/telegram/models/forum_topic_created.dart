import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_topic_created.freezed.dart';
part 'forum_topic_created.g.dart';

/// This object represents a service message about a new forum topic created in
/// the chat.
@freezed
class ForumTopicCreated with _$ForumTopicCreated {
  /// Creates a new [ForumTopicCreated] object.
  const factory ForumTopicCreated({
    /// Name of the topic
    @JsonKey(name: 'name') required String name,

    /// Color of the topic icon in RGB format
    @JsonKey(name: 'icon_color') required int iconColor,

    /// Optional. Unique identifier of the custom emoji shown as the topic icon
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
  }) = _ForumTopicCreated;

  /// Creates a new [ForumTopicCreated] object from json.
  factory ForumTopicCreated.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicCreatedFromJson(json);
}
