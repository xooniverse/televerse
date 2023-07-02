part of types;

/// A class that represents the type of a sticker.
///
/// Currently, there are three types of stickers:
/// - Regular stickers
/// - Mask stickers
/// - Custom emoji stickers
enum StickerType {
  /// A regular sticker.
  regular("regular"),

  /// A sticker that is meant to be used as a mask.
  mask("mask"),

  /// A sticker that is meant to be used as a custom emoji.
  customEmoji("custom_emoji");

  /// The value of this enum.
  final String type;

  /// Constructs a new [StickerType].
  const StickerType(this.type);

  /// Constructs a new [StickerType] from a [String].
  static StickerType fromJson(String type) {
    switch (type) {
      case "regular":
        return StickerType.regular;
      case "mask":
        return StickerType.mask;
      case "custom_emoji":
        return StickerType.customEmoji;
      default:
        throw TeleverseException("Unknown StickerType: $type");
    }
  }

  /// Converts this [StickerType] to a [String].
  String toJson() {
    return type;
  }
}
