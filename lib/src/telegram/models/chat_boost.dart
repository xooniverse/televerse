part of 'models.dart';

/// This object contains information about a chat boost.
class ChatBoost {
  /// Unique identifier of the boost
  final String boostId;

  /// Point in time (Unix timestamp) when the chat was boosted
  final int addDate;

  /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
  final int expirationDate;

  /// Source of the added boost
  final ChatBoostSource source;

  /// Creates a chat boost.
  ChatBoost({
    required this.boostId,
    required this.addDate,
    required this.expirationDate,
    required this.source,
  });

  /// Converts the `ChatBoost` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'boost_id': boostId,
      'add_date': addDate,
      'expiration_date': expirationDate,
      'source': source.toJson(),
    };
  }

  /// Creates a `ChatBoost` object from a JSON object.
  factory ChatBoost.fromJson(Map<String, dynamic> json) {
    return ChatBoost(
      boostId: json['boost_id'],
      addDate: json['add_date'],
      expirationDate: json['expiration_date'],
      source: ChatBoostSource.fromJson(json['source']),
    );
  }
}
