// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/types/owned_gift_type.dart';

import 'gift.dart';
import 'unique_gift.dart';
import 'message_entity.dart';
import 'user.dart';

part 'owned_gift.freezed.dart';
part 'owned_gift.g.dart';

/// Interface to expose the `type` property on OwnedGift
abstract interface class _WithGiftType {
  /// Type of the gift
  OwnedGiftType get type;
}

/// This object describes a gift received and owned by a user or a chat.
/// Currently, it can be one of
/// - OwnedGiftRegular
/// - OwnedGiftUnique
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class OwnedGift with _$OwnedGift implements _WithGiftType {
  /// Describes a regular gift owned by a user or a chat.
  const factory OwnedGift.regular({
    /// Type of the gift, always "regular"
    @JsonKey(name: 'type')
    @Default(OwnedGiftType.regular)
    final OwnedGiftType type,

    /// Information about the regular gift
    @JsonKey(name: 'gift') required Gift gift,

    /// Optional. Unique identifier of the gift for the bot;
    /// for gifts received on behalf of business accounts only
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,

    /// Optional. Sender of the gift if it is a known user
    @JsonKey(name: 'sender_user') User? senderUser,

    /// Date the gift was sent in Unix time
    @JsonKey(name: 'send_date') required int sendDate,

    /// Optional. Text of the message that was added to the gift
    @JsonKey(name: 'text') String? text,

    /// Optional. Special entities that appear in the text
    @JsonKey(name: 'entities') List<MessageEntity>? entities,

    /// Optional. True, if the sender and gift text are shown only to the gift receiver;
    /// otherwise, everyone will be able to see them
    @JsonKey(name: 'is_private') bool? isPrivate,

    /// Optional. True, if the gift is displayed on the account's profile page;
    /// for gifts received on behalf of business accounts only
    @JsonKey(name: 'is_saved') bool? isSaved,

    /// Optional. True, if the gift can be upgraded to a unique gift;
    /// for gifts received on behalf of business accounts only
    @JsonKey(name: 'can_be_upgraded') bool? canBeUpgraded,

    /// Optional. True, if the gift was refunded and isn't available anymore
    @JsonKey(name: 'was_refunded') bool? wasRefunded,

    /// Optional. Number of Telegram Stars that can be claimed by the receiver
    /// instead of the gift; omitted if the gift cannot be converted to Telegram Stars
    @JsonKey(name: 'convert_star_count') int? convertStarCount,

    /// Optional. Number of Telegram Stars that were paid by the sender for
    /// the ability to upgrade the gift
    @JsonKey(name: 'prepaid_upgrade_star_count') int? prepaidUpgradeStarCount,
  }) = OwnedGiftRegular;

  /// Describes a unique gift received and owned by a user or a chat.
  const factory OwnedGift.unique({
    /// Type of the gift, always "unique"
    @JsonKey(name: 'type')
    @Default(OwnedGiftType.unique)
    final OwnedGiftType type,

    /// Information about the unique gift
    @JsonKey(name: 'gift') required UniqueGift gift,

    /// Optional. Unique identifier of the received gift for the bot;
    /// for gifts received on behalf of business accounts only
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,

    /// Optional. Sender of the gift if it is a known user
    @JsonKey(name: 'sender_user') User? senderUser,

    /// Date the gift was sent in Unix time
    @JsonKey(name: 'send_date') required int sendDate,

    /// Optional. True, if the gift is displayed on the account's profile page;
    /// for gifts received on behalf of business accounts only
    @JsonKey(name: 'is_saved') bool? isSaved,

    /// Optional. True, if the gift can be transferred to another owner;
    /// for gifts received on behalf of business accounts only
    @JsonKey(name: 'can_be_transferred') bool? canBeTransferred,

    /// Optional. Number of Telegram Stars that must be paid to transfer the gift;
    /// omitted if the bot cannot transfer the gift
    @JsonKey(name: 'transfer_star_count') int? transferStarCount,

    /// Optional. Point in time (Unix timestamp) when the gift can be transferred.
    /// If it is in the past, then the gift can be transferred now
    @JsonKey(name: 'next_transfer_date') int? nextTransferDate,
  }) = OwnedGiftUnique;

  /// Creates an instance of [OwnedGift] from JSON data
  factory OwnedGift.fromJson(Map<String, dynamic> json) =>
      _$OwnedGiftFromJson(json);
}
