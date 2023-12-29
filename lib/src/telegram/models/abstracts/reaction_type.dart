part of '../models.dart';

/// This object describes the type of a reaction. Currently, it can be one of
/// - [ReactionTypeEmoji]
/// - [ReactionTypeCustomEmoji]

abstract class ReactionType {
  /// The type of the reaction.
  final ReactionTypeType type;

  /// Constructs a [ReactionType] object
  const ReactionType({
    required this.type,
  });

  /// Converts a [ReactionType] object to JSON object
  Map<String, dynamic> toJson();

  /// Creates a [ReactionType] object from JSON object
  factory ReactionType.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'emoji':
        return ReactionTypeEmoji.fromJson(json);
      case 'custom_emoji':
        return ReactionTypeCustomEmoji.fromJson(json);
      default:
        throw TeleverseException(
          'Invalid reaction type: ${json['type']}',
        );
    }
  }
}
