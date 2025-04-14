// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/unique_gift_backdrop_colors.dart';

part 'unique_gift_backdrop.freezed.dart';
part 'unique_gift_backdrop.g.dart';

/// This object describes the backdrop of a unique gift.
@freezed
abstract class UniqueGiftBackdrop with _$UniqueGiftBackdrop {
  /// Creates a new [UniqueGiftBackdrop] object.
  const factory UniqueGiftBackdrop({
    /// Name of the backdrop
    @JsonKey(name: 'name') required String name,

    /// Colors of the backdrop
    @JsonKey(name: 'colors') required UniqueGiftBackdropColors colors,

    /// The number of unique gifts that receive this backdrop for every 1000 gifts upgraded
    @JsonKey(name: 'rarity_per_mille') required int rarityPerMille,
  }) = _UniqueGiftBackdrop;

  /// Creates a new [UniqueGiftBackdrop] object from a JSON [Map].
  factory UniqueGiftBackdrop.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftBackdropFromJson(json);
}
