enum StickerType {
  /// A regular sticker.
  regular("regular"),

  /// A sticker that is meant to be used as a mask.
  mask("mask"),

  /// A sticker that is meant to be used as a custom emoji.
  customEmoji("custom_emoji");

  final String type;
  const StickerType(this.type);

  static StickerType fromJson(String type) {
    switch (type) {
      case "regular":
        return StickerType.regular;
      case "mask":
        return StickerType.mask;
      case "custom_emoji":
        return StickerType.customEmoji;
      default:
        throw Exception("Unknown StickerType: $type");
    }
  }

  String toJson() {
    return type;
  }
}
