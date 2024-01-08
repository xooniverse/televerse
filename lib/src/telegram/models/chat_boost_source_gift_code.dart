part of 'models.dart';

/// The boost was obtained by the creation of Telegram Premium gift codes to boost a chat. Each such code boosts the chat 4 times for the duration of the corresponding Telegram Premium subscription.
class ChatBoostSourceGiftCode implements ChatBoostSource {
  /// Source of the boost, always `ChatBoostSourceType.giftCode`
  @override
  final ChatBoostSourceType type = ChatBoostSourceType.giftCode;

  /// User for which the gift code was created
  final User user;

  /// Creates a source of a chat boost.
  const ChatBoostSourceGiftCode({
    required this.user,
  });

  /// Converts the `ChatBoostSourceGiftCode` object to a JSON object.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'user': user.toJson(),
    };
  }

  /// Creates a `ChatBoostSourceGiftCode` object from a JSON object.
  factory ChatBoostSourceGiftCode.fromJson(Map<String, dynamic> json) {
    return ChatBoostSourceGiftCode(
      user: User.fromJson(json['user']),
    );
  }
}
