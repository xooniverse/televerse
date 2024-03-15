part of 'types.dart';

/// Type of the chat boost source.
enum ChatBoostSourceType {
  /// The chat was boosted by the user's Telegram Premium subscription.
  premium._('premium'),

  /// The chat was boosted using a gift code.
  giftCode._('gift_code'),

  /// The chat was boosted using a giveaway.
  giveaway._('giveaway'),
  ;

  /// Value of the source type.
  final String value;

  /// Creates a source type.
  const ChatBoostSourceType._(this.value);

  /// Creates a source type from a [json] object.
  factory ChatBoostSourceType.fromJson(String json) {
    switch (json) {
      case 'premium':
        return premium;
      case 'gift_code':
        return giftCode;
      case 'giveaway':
        return giveaway;
      default:
        throw TeleverseException(
          "Invalid value '$json' for ChatBoostSourceType.",
          description:
              'The given value does not match any ChatBoostSourceType.',
          type: TeleverseExceptionType.invalidParameter,
        );
    }
  }
}
