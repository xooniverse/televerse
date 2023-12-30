part of 'models.dart';

/// This object represents a service message about a new forum topic created in the chat.
class ForumTopicCreated {
  /// Name of the topic
  String name;

  /// Color of the topic icon in RGB format
  int color;

  /// Optional. Unique identifier of the custom emoji shown as the topic icon
  String? iconCustomEmojiId;

  /// Creates a new [ForumTopicCreated] object.
  ForumTopicCreated({
    required this.name,
    required this.color,
    this.iconCustomEmojiId,
  });

  /// Creates a new [ForumTopicCreated] object from json.
  factory ForumTopicCreated.fromJson(Map<String, dynamic> json) {
    return ForumTopicCreated(
      name: json['name'],
      color: json['icon_color'],
      iconCustomEmojiId: json['icon_custom_emoji_id'],
    );
  }

  /// Converts a [ForumTopicCreated] object to json.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'color': color,
      'icon_custom_emoji_id': iconCustomEmojiId,
    }..removeWhere((key, value) => value == null);
  }
}
