part of 'types.dart';

/// Represents the type of emoji used in a reaction.
enum ReactionTypeType {
  /// Represents a regular emoji.
  emoji._("emoji"),

  /// Represents a custom emoji.
  customEmoji._("custom_emoji"),

  /// Paid reaction
  paid._("paid"),
  ;

  /// The inner value of this enum entry.
  final String value;

  /// Creates an instance of [ReactionTypeType] from a [value].
  const ReactionTypeType._(this.value);

  /// Creates an instance of [ReactionTypeType] from a [String].
  factory ReactionTypeType.fromJson(String value) {
    switch (value) {
      case "emoji":
        return emoji;
      case "custom_emoji":
        return customEmoji;
      case "paid":
        return paid;
      default:
        throw TeleverseException(
          "Unknown value: $value",
          description:
              "ReactionType.type got an unknown value. For now ReactionTypeType only supports emoji and custom_emoji.\n\nIf you're sure this is a valid value, please let us know by creating an issue at https://github.com/xooniverse/televerse/issues",
          type: TeleverseExceptionType.invalidParameter,
        );
    }
  }
}
