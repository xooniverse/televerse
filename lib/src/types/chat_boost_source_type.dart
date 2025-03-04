import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_boost_source_type.g.dart';

/// Type of the chat boost source.
@JsonEnum(fieldRename: FieldRename.snake, alwaysCreate: true)
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

  /// Converts the [ChatBoostSourceType] to its corresponding JSON value.
  String toJson() => _$ChatBoostSourceTypeEnumMap[this]!;
}
