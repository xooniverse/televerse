import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `RevenueWithdrawalState`
@JsonEnum(fieldRename: FieldRename.snake)
enum UniqueGiftOriginType {
  /// For gifts upgraded from regular gifts.
  @JsonValue('upgrade')
  upgrade,

  /// For gifts transferred from other users or channels.
  @JsonValue('transfer')
  transfer,

  /// For gifts bought from other users.
  @JsonValue('resale')
  resale,

  /// Upgrade of a gift that was purchased after it was sent.
  @JsonValue('gifted_upgrade')
  giftedUpgrade,

  /// Purchase of a gift through a purchase offer.
  @JsonValue('offer')
  offer,
}
