// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/gift.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';

part 'gift_info.freezed.dart';
part 'gift_info.g.dart';

/// Describes a service message about a regular gift that was sent or received.
@freezed
abstract class GiftInfo with _$GiftInfo {
  /// Creates a new [GiftInfo] object.
  const factory GiftInfo({
    /// Information about the gift
    @JsonKey(name: 'gift') required Gift gift,

    /// Optional. Unique identifier of the received gift for the bot; only present
    /// for gifts received on behalf of business accounts
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,

    /// Optional. Number of Telegram Stars that can be claimed by the receiver by
    /// converting the gift; omitted if conversion to Telegram Stars is impossible
    @JsonKey(name: 'convert_star_count') int? convertStarCount,

    /// Optional. Number of Telegram Stars that were prepaid by the sender for
    /// the ability to upgrade the gift
    @JsonKey(name: 'prepaid_upgrade_star_count') int? prepaidUpgradeStarCount,

    /// Optional. True, if the gift can be upgraded to a unique gift
    @JsonKey(name: 'can_be_upgraded') bool? canBeUpgraded,

    /// Optional. Text of the message that was added to the gift
    @JsonKey(name: 'text') String? text,

    /// Optional. Special entities that appear in the text
    @JsonKey(name: 'entities') List<MessageEntity>? entities,

    /// Optional. True, if the sender and gift text are shown only to the gift
    /// receiver; otherwise, everyone will be able to see them
    @JsonKey(name: 'is_private') bool? isPrivate,

    /// Optional. True, if the gift's upgrade was purchased after the gift was sent
    @JsonKey(name: 'is_upgrade_separate') bool? isUpgradeSeparate,

    /// Optional. Unique number reserved for this gift when upgraded. See the number field in UniqueGift
    @JsonKey(name: 'unique_gift_number') int? uniqueGiftNumber,
  }) = _GiftInfo;

  /// Creates a new [GiftInfo] object from a JSON [Map].
  factory GiftInfo.fromJson(Map<String, dynamic> json) =>
      _$GiftInfoFromJson(json);
}
