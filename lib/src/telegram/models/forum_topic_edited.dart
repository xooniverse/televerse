part of models;

/// This object represents a service message about an edited forum topic.
class ForumTopicEdited {
  /// Optional. New name of the topic, if it was edited
  final String? name;

  /// Optional. New identifier of the custom emoji shown as the topic icon, if it was edited; an empty string if the icon was removed
  final String? iconCustomEmojiId;

  /// Creates a new [ForumTopicEdited] object.
  ForumTopicEdited({
    this.name,
    this.iconCustomEmojiId,
  });

  /// Converts a [ForumTopicEdited] object to json.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'icon_custom_emoji_id': iconCustomEmojiId,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [ForumTopicEdited] object from json.
  factory ForumTopicEdited.fromJson(Map<String, dynamic> json) {
    return ForumTopicEdited(
      name: json['name'],
      iconCustomEmojiId: json['icon_custom_emoji_id'],
    );
  }
}
