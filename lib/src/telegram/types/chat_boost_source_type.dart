import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of the chat boost source.
@JsonEnum(fieldRename: FieldRename.snake)
enum ChatBoostSourceType {
  /// The chat was boosted by the user's Telegram Premium subscription.
  @JsonValue('premium')
  premium,

  /// The chat was boosted using a gift code.
  @JsonValue('gift_code')
  giftCode,

  /// The chat was boosted using a giveaway.
  @JsonValue('giveaway')
  giveaway,
  ;
}
