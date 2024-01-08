part of 'models.dart';

/// This object represents a forum topic.
class ForumTopic {
  /// Unique identifier of the forum topic
  final String messageThreadId;

  /// Name of the topic
  final String name;

  /// Color of the topic icon in RGB format
  final int iconColor;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  final String? iconCustomEmojiId;

  /// Creates a new [ForumTopic] object.
  const ForumTopic({
    required this.messageThreadId,
    required this.name,
    required this.iconColor,
    this.iconCustomEmojiId,
  });

  /// Creates a new [ForumTopic] object from json.
  factory ForumTopic.fromJson(Map<String, dynamic> json) {
    return ForumTopic(
      messageThreadId: json['message_thread_id'] as String,
      name: json['name'] as String,
      iconColor: json['icon_color'] as int,
      iconCustomEmojiId: json['icon_custom_emoji_id'] as String?,
    );
  }

  /// Converts a [ForumTopic] object to json.
  Map<String, dynamic> toJson() {
    return {
      'message_thread_id': messageThreadId,
      'name': name,
      'icon_color': iconColor,
      'icon_custom_emoji_id': iconCustomEmojiId,
    }..removeWhere((key, value) => value == null);
  }
}
