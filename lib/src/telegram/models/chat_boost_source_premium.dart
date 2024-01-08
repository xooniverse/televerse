part of 'models.dart';

/// The boost was obtained by subscribing to Telegram Premium or by gifting a Telegram Premium subscription to another user.
class ChatBoostSourcePremium implements ChatBoostSource {
  /// Source of the boost
  @override
  final ChatBoostSourceType type = ChatBoostSourceType.premium;

  /// User that boosted the chat
  final User user;

  /// Creates a source of a chat boost.
  const ChatBoostSourcePremium({
    required this.user,
  });

  /// Converts the `ChatBoostSourcePremium` object to a JSON object.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'user': user.toJson(),
    };
  }

  /// Creates a `ChatBoostSourcePremium` object from a JSON object.
  factory ChatBoostSourcePremium.fromJson(Map<String, dynamic> json) {
    return ChatBoostSourcePremium(
      user: User.fromJson(json['user']),
    );
  }
}
