part of '../models.dart';

/// This object describes the source of a chat boost. It can be one of
/// - ChatBoostSourcePremium
/// - ChatBoostSourceGiftCode
/// - ChatBoostSourceGiveaway
abstract class ChatBoostSource {
  /// Source of the boost
  final ChatBoostSourceType type;

  /// Creates a source of a chat boost.
  const ChatBoostSource(this.type);

  /// Converts the `ChatBoostSource` object to a JSON object.
  Map<String, dynamic> toJson();

  /// Creates a `ChatBoostSource` object from a JSON object.
  factory ChatBoostSource.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'premium':
        return ChatBoostSourcePremium.fromJson(json);
      case 'gift_code':
        return ChatBoostSourceGiftCode.fromJson(json);
      case 'giveaway':
        return ChatBoostSourceGiveaway.fromJson(json);
      default:
        throw TeleverseException(
          "Invalid value '${json['type']}' for ChatBoostSourceType.",
          description:
              'The given value does not match any ChatBoostSourceType.',
          type: TeleverseExceptionType.invalidParameter,
        );
    }
  }
}
