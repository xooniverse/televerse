part of 'models.dart';

/// This object describes a sticker to be added to a sticker set.
class InputSticker {
  /// The added sticker. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. Animated and video stickers can't be uploaded via HTTP URL. More information on Sending Files »
  final InputFile sticker;

  /// List of 1-20 emoji associated with the sticker
  final List<String> emojiList;

  /// Optional. Position where the mask should be placed on faces. For “mask” stickers only.
  final MaskPosition? maskPosition;

  /// Optional. List of 0-20 search keywords for the sticker with total length of up to 64 characters. For “regular” and “custom_emoji” stickers only.
  final List<String>? keywords;

  /// Creates the Input Sticker object.
  const InputSticker({
    required this.sticker,
    required this.emojiList,
    this.maskPosition,
    this.keywords,
  });

  /// Creates JSON object from the Input Sticker object.
  Map<String, dynamic> toJson([String? field]) {
    return {
      'sticker': sticker.getValue(field),
      'emoji_list': emojiList,
      'mask_position': maskPosition,
      'keywords': keywords,
    }..removeWhere((_, v) => v == null);
  }
}
