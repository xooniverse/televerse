// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/types/rarity_type.dart';

import 'sticker.dart';

part 'unique_gift_model.freezed.dart';
part 'unique_gift_model.g.dart';

/// This object describes the model of a unique gift.
@freezed
abstract class UniqueGiftModel with _$UniqueGiftModel {
  /// Creates a new [UniqueGiftModel] object.
  const factory UniqueGiftModel({
    /// Name of the model
    @JsonKey(name: 'name') required String name,

    /// The sticker that represents the unique gift
    @JsonKey(name: 'sticker') required Sticker sticker,

    /// The number of unique gifts that receive this model for every 1000 gifts upgraded
    @JsonKey(name: 'rarity_per_mille') required int rarityPerMille,

    /// Optional. Rarity of the model if it is a crafted model. Currently, can be “uncommon”, “rare”, “epic”, or “legendary”.
    @JsonKey(name: 'rarity') RarityType? rarity,
  }) = _UniqueGiftModel;

  /// Creates a new [UniqueGiftModel] object from a JSON [Map].
  factory UniqueGiftModel.fromJson(Map<String, dynamic> json) =>
      _$UniqueGiftModelFromJson(json);
}
