// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/unique_gift.dart';
import 'package:televerse/televerse.dart';

part 'unique_gift_info.freezed.dart';
part 'unique_gift_info.g.dart';

/// Describes a service message about a unique gift that was sent or received.
@freezed
abstract class UniqueGiftInfo with _$UniqueGiftInfo {
  /// Creates a new [UniqueGiftInfo] object.
  const factory UniqueGiftInfo({
    /// Information about the gift
    @JsonKey(name: 'gift') required UniqueGift gift,

    /// Origin of the gift. Currently, either "upgrade" for gifts upgraded
    /// from regular gifts, "transfer" for gifts transferred from other users
    /// or channels, or "resale" for gifts bought from other users
    @JsonKey(name: 'origin') required UniqueGiftOrigin origin,

    /// Optional. For gifts bought from other users, the price paid for the gift
    @JsonKey(name: 'last_resale_star_count') int? lastResaleStarCount,

    /// Optional. Unique identifier of the received gift for the bot;
    /// only present for gifts received on behalf of business accounts
    @JsonKey(name: 'owned_gift_id') String? ownedGiftId,

    /// Optional. Number of Telegram Stars that must be paid to transfer the gift;
    /// omitted if the bot cannot transfer the gift
    @JsonKey(name: 'transfer_star_count') int? transferStarCount,

    /// Optional. Point in time (Unix timestamp) when the gift can be transferred.
    /// If it is in the past, then the gift can be transferred now
    @JsonKey(name: 'next_transfer_date') int? nextTransferDate,
  }) = _UniqueGiftInfo;

  /// Creates a new [UniqueGiftInfo] object from a JSON [Map].
  factory UniqueGiftInfo.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftInfoFromJson(json);
}
