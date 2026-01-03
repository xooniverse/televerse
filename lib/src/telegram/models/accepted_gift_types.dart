// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accepted_gift_types.freezed.dart';
part 'accepted_gift_types.g.dart';

/// This object describes the types of gifts that can be gifted to a user or a chat.
@freezed
abstract class AcceptedGiftTypes with _$AcceptedGiftTypes {
  /// Creates a new [AcceptedGiftTypes] object.
  const factory AcceptedGiftTypes({
    /// Optional. True, if unlimited regular gifts are accepted
    @JsonKey(name: 'unlimited_gifts') bool? unlimitedGifts,

    /// Optional. True, if limited regular gifts are accepted
    @JsonKey(name: 'limited_gifts') bool? limitedGifts,

    /// Optional. True, if unique gifts or gifts that can be upgraded to unique for free are accepted
    @JsonKey(name: 'unique_gifts') bool? uniqueGifts,

    /// Optional. True, if a Telegram Premium subscription is accepted
    @JsonKey(name: 'premium_subscription') bool? premiumSubscription,

    /// Optional. True, if transfers of unique gifts from channels are accepted
    @JsonKey(name: 'gifts_from_channels') bool? giftsFromChannels,
  }) = _AcceptedGiftTypes;

  /// Creates a new [AcceptedGiftTypes] object from a JSON [Map].
  factory AcceptedGiftTypes.fromJson(Map<String, dynamic> json) =>
      _$AcceptedGiftTypesFromJson(json);
}
