part of 'types.dart';

/// StickerFormat to specify the type of sticker used with [RawAPI.createNewStickerSet]
enum StickerFormat {
  /// Represents a static sticker.
  static("static"),

  /// Represents an animated sticker.
  animated("animated"),

  /// Represents a video sticker.
  video("video"),
  ;

  /// The value of the enum.
  final String value;

  /// Creates the StickerFormat object.
  const StickerFormat(this.value);
}
