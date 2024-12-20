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
    return switch (ChatBoostSourceType.fromJson(json['type'])) {
      ChatBoostSourceType.premium => ChatBoostSourcePremium.fromJson(json),
      ChatBoostSourceType.giftCode => ChatBoostSourceGiftCode.fromJson(json),
      ChatBoostSourceType.giveaway => ChatBoostSourceGiveaway.fromJson(json),
    };
  }
}
