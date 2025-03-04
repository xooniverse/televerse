import 'package:freezed_annotation/freezed_annotation.dart';
import 'chat_boost.dart';

part 'user_chat_boosts.freezed.dart';
part 'user_chat_boosts.g.dart';

/// This object represents a list of boosts added to a chat by a user.
@freezed
class UserChatBoosts with _$UserChatBoosts {
  /// Constructs a `UserChatBoosts` object.
  const factory UserChatBoosts({
    /// The list of boosts added to the chat by the user
    @JsonKey(name: 'boosts') required List<ChatBoost> boosts,
  }) = _UserChatBoosts;

  /// Creates a `UserChatBoosts` object from a JSON object.
  factory UserChatBoosts.fromJson(Map<String, dynamic> json) =>
      _$UserChatBoostsFromJson(json);
}
