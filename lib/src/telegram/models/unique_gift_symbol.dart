// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/sticker.dart';

part 'unique_gift_symbol.freezed.dart';
part 'unique_gift_symbol.g.dart';

/// This object describes the symbol shown on the pattern of a unique gift.
@freezed
abstract class UniqueGiftSymbol with _$UniqueGiftSymbol {
  /// Creates a new [UniqueGiftSymbol] object.
  const factory UniqueGiftSymbol({
    /// Name of the symbol
    @JsonKey(name: 'name') required String name,

    /// The sticker that represents the unique gift
    @JsonKey(name: 'sticker') required Sticker sticker,

    /// The number of unique gifts that receive this model for every 1000 gifts upgraded
    @JsonKey(name: 'rarity_per_mille') required int rarityPerMille,
  }) = _UniqueGiftSymbol;

  /// Creates a new [UniqueGiftSymbol] object from a JSON [Map].
  factory UniqueGiftSymbol.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftSymbolFromJson(json);
}
