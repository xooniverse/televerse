// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'accepted_gift_types.freezed.dart';
part 'accepted_gift_types.g.dart';

/// This object describes the types of gifts that can be gifted to a user or a chat.
@freezed
abstract class AcceptedGiftTypes with _$AcceptedGiftTypes {
  /// Creates a new [AcceptedGiftTypes] object.
  const factory AcceptedGiftTypes({
    /// True, if unlimited regular gifts are accepted
    @JsonKey(name: 'unlimited_gifts') required bool unlimitedGifts,

    /// True, if limited regular gifts are accepted
    @JsonKey(name: 'limited_gifts') required bool limitedGifts,

    /// True, if unique gifts or gifts that can be upgraded to unique for free are accepted
    @JsonKey(name: 'unique_gifts') required bool uniqueGifts,

    /// True, if a Telegram Premium subscription is accepted
    @JsonKey(name: 'premium_subscription') required bool premiumSubscription,
  }) = _AcceptedGiftTypes;

  /// Creates a new [AcceptedGiftTypes] object from a JSON [Map].
  factory AcceptedGiftTypes.fromJson(Map<String, dynamic> json) =>
      _$AcceptedGiftTypesFromJson(json);
}
