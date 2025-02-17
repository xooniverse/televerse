import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_topic_edited.freezed.dart';
part 'forum_topic_edited.g.dart';

/// This object represents a service message about an edited forum topic.
@freezed
class ForumTopicEdited with _$ForumTopicEdited {
  /// Creates a new [ForumTopicEdited] object.
  const factory ForumTopicEdited({
    /// Optional. New name of the topic, if it was edited
    String? name,

    /// Optional. New identifier of the custom emoji shown as the topic icon,
    /// if it was edited; an empty string if the icon was removed
    @JsonKey(name: 'icon_custom_emoji_id') String? iconCustomEmojiId,
  }) = _ForumTopicEdited;

  /// Creates a new [ForumTopicEdited] object from json.
  factory ForumTopicEdited.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicEditedFromJson(json);
}
