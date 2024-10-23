part of 'models.dart';

/// The reaction is based on a custom emoji.
class ReactionTypeCustomEmoji implements ReactionType {
  /// Type of the reaction, always “custom”
  @override
  final ReactionTypeType type = ReactionTypeType.customEmoji;

  /// Custom emoji identifier
  final String customEmojiId;

  /// Constructs a [ReactionTypeCustomEmoji] object
  const ReactionTypeCustomEmoji({
    required this.customEmojiId,
  });

  /// Converts a [ReactionTypeCustomEmoji] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'custom_emoji_id': customEmojiId,
    };
  }

  /// Creates a [ReactionTypeCustomEmoji] object from JSON object
  factory ReactionTypeCustomEmoji.fromJson(Map<String, dynamic> json) {
    return ReactionTypeCustomEmoji(
      customEmojiId: json['custom_emoji_id']!,
    );
  }
}
