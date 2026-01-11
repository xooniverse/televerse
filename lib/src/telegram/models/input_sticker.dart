// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/file_provider/file_provider.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile, InputFileConverter;

part 'input_sticker.freezed.dart';
part 'input_sticker.g.dart';

/// This object describes a sticker to be added to a sticker set.
@Freezed(fromJson: false, toJson: true)
abstract class InputSticker with _$InputSticker implements InputFileProvider {
  const InputSticker._();

  @override
  Iterable<InputFile> getInputFiles() {
    return [sticker];
  }

  /// Creates the Input Sticker object.
  const factory InputSticker({
    /// The added sticker. Pass a file_id as a String to send a file that
    /// already exists on the Telegram servers, pass an HTTP URL as a String for
    /// Telegram to get a file from the Internet, or upload a new one using
    /// multipart/form-data. Animated and video stickers can't be uploaded via
    /// HTTP URL. More information on Sending Files »
    @JsonKey(name: 'sticker') @InputFileConverter() required InputFile sticker,

    /// Format of the added sticker, must be one of "static" for a .WEBP or .PNG
    /// image, "animated" for a .TGS animation, "video" for a WEBM video
    @JsonKey(name: 'format') required InputStickerFormat format,

    /// List of 1-20 emoji associated with the sticker
    @JsonKey(name: 'emoji_list') required List<String> emojiList,

    /// Optional. Position where the mask should be placed on faces. For "mask"
    /// stickers only.
    @JsonKey(name: 'mask_position') MaskPosition? maskPosition,

    /// Optional. List of 0-20 search keywords for the sticker with total length
    /// of up to 64 characters. For "regular" and "custom_emoji" stickers only.
    @JsonKey(name: 'keywords') List<String>? keywords,
  }) = _InputSticker;

  /// Placeholder. Do not use.
  factory InputSticker.fromJson(String json) {
    throw Exception("Can't do fromJson on InputSticker");
  }
}
