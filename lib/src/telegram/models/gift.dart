// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/chat.dart';
import 'gift_background.dart';
import 'sticker.dart';

part 'gift.freezed.dart';
part 'gift.g.dart';

/// Represents a gift that can be sent by the bot.
@freezed
abstract class Gift with _$Gift {
  /// Creates a [Gift] object.
  const factory Gift({
    /// Unique identifier of the gift.
    @JsonKey(name: 'id') required String id,

    /// The sticker that represents the gift.
    @JsonKey(name: 'sticker') required Sticker sticker,

    /// The number of Telegram Stars that must be paid to send the sticker.
    @JsonKey(name: 'star_count') required int starCount,

    /// Optional. The total number of gifts of this type that can be sent; for
    /// limited gifts only.
    @JsonKey(name: 'total_count') int? totalCount,

    /// Optional. The number of remaining gifts of this type that can be sent;
    /// for limited gifts only.
    @JsonKey(name: 'remaining_count') int? remainingCount,

    /// Optional. The number of Telegram Stars that must be paid to upgrade the
    /// gift to a unique one.
    @JsonKey(name: 'upgrade_star_count') int? upgradeStarCount,

    /// Optional. Information about the chat that published the gift
    @JsonKey(name: 'publisher_chat') Chat? publisherChat,

    /// Optional. The number of remaining gifts of this type that can be sent by the bot; for limited gifts only
    @JsonKey(name: 'personal_remaining_count') int? personalRemainingCount,

    /// Optional. The total number of gifts of this type that can be sent by the bot; for limited gifts only
    @JsonKey(name: 'personal_total_count') int? personalTotalCount,

    /// Optional. True, if the gift can only be purchased by Telegram Premium subscribers
    @JsonKey(name: 'is_premium') bool? isPremium,

    /// Optional. True, if the gift can be used (after being upgraded) to customize a user's appearance
    @JsonKey(name: 'has_colors') bool? hasColors,

    /// Optional. Background of the gift
    @JsonKey(name: 'background') GiftBackground? background,

    /// Optional. The total number of different unique gifts that can be obtained by upgrading the gift
    @JsonKey(name: 'unique_gift_variant_count') int? uniqueGiftVariantCount,
  }) = _Gift;

  /// Creates a [Gift] object from a JSON map.
  factory Gift.fromJson(Map<String, dynamic> json) => _$GiftFromJson(json);
}
