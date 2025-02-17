import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/photo_size.dart';
import 'package:televerse/src/telegram/models/sticker.dart';
import 'package:televerse/televerse.dart';

part 'sticker_set.freezed.dart';
part 'sticker_set.g.dart';

/// This object represents a sticker set.
@freezed
class StickerSet with _$StickerSet {
  /// Constructs a [StickerSet] object
  const factory StickerSet({
    /// Sticker set name
    @JsonKey(name: 'name') required String name,

    /// Sticker set title
    @JsonKey(name: 'title') required String title,

    /// Type of stickers in the set, currently one of "regular", "mask",
    /// "custom_emoji"
    @JsonKey(name: 'sticker_type') required StickerType stickerType,

    /// List of all set stickers
    @JsonKey(name: 'stickers') required List<Sticker> stickers,

    /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
  }) = _StickerSet;

  /// Creates a [StickerSet] object from JSON object
  factory StickerSet.fromJson(Map<String, dynamic> json) =>
      _$StickerSetFromJson(json);
}
