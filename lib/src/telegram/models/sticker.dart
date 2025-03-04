import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/file.dart';
import 'package:televerse/src/telegram/models/mask_position.dart';
import 'package:televerse/src/telegram/models/photo_size.dart';
import 'package:televerse/televerse.dart';

part 'sticker.freezed.dart';
part 'sticker.g.dart';

/// This object represents a sticker.
@freezed
class Sticker with _$Sticker {
  /// Constructs a [Sticker] object
  const factory Sticker({
    /// Identifier for this file, which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Type of the sticker, currently one of "regular", "mask", "custom_emoji".
    /// The type of the sticker is independent from its format, which is
    /// determined by the fields is_animated and is_video.
    @JsonKey(name: 'type') required StickerType type,

    /// Sticker width
    @JsonKey(name: 'width') required int width,

    /// Sticker height
    @JsonKey(name: 'height') required int height,

    /// True, if the sticker is animated
    @JsonKey(name: 'is_animated') required bool isAnimated,

    /// True, if the sticker is a video sticker
    @JsonKey(name: 'is_video') required bool isVideo,

    /// Optional. Sticker thumbnail in the .WEBP or .JPG format
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,

    /// Optional. Emoji associated with the sticker
    @JsonKey(name: 'emoji') String? emoji,

    /// Optional. Name of the sticker set to which the sticker belongs
    @JsonKey(name: 'set_name') String? setName,

    /// Optional. For premium regular stickers, premium animation for the
    /// sticker
    @JsonKey(name: 'premium_animation') File? premiumAnimation,

    /// Optional. For mask stickers, the position where the mask should be
    /// placed
    @JsonKey(name: 'mask_position') MaskPosition? maskPosition,

    /// Optional. For custom emoji stickers, unique identifier of the custom
    /// emoji
    @JsonKey(name: 'custom_emoji_id') String? customEmojiId,

    /// Optional. File size in bytes
    @JsonKey(name: 'file_size') int? fileSize,

    /// Optional. True, if the sticker must be repainted to a text color in
    /// messages, the color of the Telegram Premium badge in emoji status, white
    /// color on chat photos, or another appropriate color in other places
    @JsonKey(name: 'needs_repainting') bool? needsRepainting,
  }) = _Sticker;

  /// Creates a [Sticker] object from JSON object
  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);
}
