// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/chat.dart';

import 'unique_gift_colors.dart';
import 'unique_gift_model.dart';
import 'unique_gift_symbol.dart';
import 'unique_gift_backdrop.dart';

part 'unique_gift.freezed.dart';
part 'unique_gift.g.dart';

/// This object describes a unique gift that was upgraded from a regular gift.
@freezed
abstract class UniqueGift with _$UniqueGift {
  /// Creates a new [UniqueGift] object.
  const factory UniqueGift({
    ///  Identifier of the regular gift from which the gift was upgraded
    @JsonKey(name: 'gift_id') required String giftId,

    /// Human-readable name of the regular gift from which this unique gift was upgraded
    @JsonKey(name: 'base_name') required String baseName,

    /// Unique name of the gift. This name can be used in `https://t.me/nft/...` links and story areas
    @JsonKey(name: 'name') required String name,

    /// Unique number of the upgraded gift among gifts upgraded from the same regular gift
    @JsonKey(name: 'number') required int number,

    /// Model of the gift
    @JsonKey(name: 'model') required UniqueGiftModel model,

    /// Symbol of the gift
    @JsonKey(name: 'symbol') required UniqueGiftSymbol symbol,

    /// Backdrop of the gift
    @JsonKey(name: 'backdrop') required UniqueGiftBackdrop backdrop,

    /// Optional. Information about the chat that published the gift
    @JsonKey(name: 'publisher_chat') Chat? publisherChat,

    /// Optional. True, if the gift is assigned from the TON blockchain and can't be resold or transferred in Telegram
    @JsonKey(name: 'is_from_blockchain') bool? isFromBlockchain,

    /// Optional. True, if the gift can only be purchased by Telegram Premium subscribers
    @JsonKey(name: 'is_premium') bool? isPremium,

    /// Optional. The color scheme that can be used by the gift's owner for the chat's name, replies to messages and link previews; for business account gifts and gifts that are currently on sale only
    @JsonKey(name: 'colors') UniqueGiftColors? colors,
  }) = _UniqueGift;

  /// Creates a new [UniqueGift] object from a JSON [Map].
  factory UniqueGift.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftFromJson(json);
}
