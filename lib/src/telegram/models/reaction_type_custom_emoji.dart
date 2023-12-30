part of 'models.dart';

/// The reaction is based on a custom emoji.
class ReactionTypeCustomEmoji implements ReactionType {
  /// Type of the reaction, always “custom”
  @override
  final ReactionTypeType type = ReactionTypeType.customEmoji;

  /// Custom emoji identifier
  final String customEmoji;

  /// Constructs a [ReactionTypeCustomEmoji] object
  ReactionTypeCustomEmoji({
    required this.customEmoji,
  });

  /// Converts a [ReactionTypeCustomEmoji] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'custom_emoji': customEmoji,
    };
  }

  /// Creates a [ReactionTypeCustomEmoji] object from JSON object
  factory ReactionTypeCustomEmoji.fromJson(Map<String, dynamic> json) {
    return ReactionTypeCustomEmoji(
      customEmoji: json['custom_emoji']!,
    );
  }
}
