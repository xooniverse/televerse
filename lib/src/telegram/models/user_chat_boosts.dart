part of 'models.dart';

/// This object represents a list of boosts added to a chat by a user.
class UserChatBoosts {
  /// The list of boosts added to the chat by the user
  final List<ChatBoost> boosts;

  /// Constructs a [UserChatBoosts] object.
  UserChatBoosts({
    required this.boosts,
  });

  /// Converts the `UserChatBoosts` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'boosts': boosts.map((boost) => boost.toJson()).toList(),
    };
  }

  /// Creates a `UserChatBoosts` object from a JSON object.
  factory UserChatBoosts.fromJson(Map<String, dynamic> json) {
    return UserChatBoosts(
      boosts: (json['boosts'] as List)
          .map((item) => ChatBoost.fromJson(item))
          .toList(),
    );
  }
}
