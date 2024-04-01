part of 'models.dart';

/// This object represents a sticker set.
class StickerSet {
  /// Sticker set name
  final String name;

  /// Sticker set title
  final String title;

  /// Type of stickers in the set, currently one of “regular”, “mask”, “custom_emoji”
  final StickerType stickerType;

  /// List of all set stickers
  final List<Sticker> stickers;

  /// Optional. Sticker set thumbnail in the .WEBP or .TGS format
  final PhotoSize? thumbnail;

  /// Constructs a [StickerSet] object
  const StickerSet({
    required this.name,
    required this.title,
    required this.stickerType,
    required this.stickers,
    this.thumbnail,
  });

  /// Returns JSON-encodeable map of this object.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'title': title,
      'sticker_type': stickerType.toJson(),
      'stickers': stickers,
      'thumbnail': thumbnail,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [StickerSet] object from JSON object
  factory StickerSet.fromJson(Map<String, dynamic> json) {
    return StickerSet(
      name: json['name'] as String,
      title: json['title'] as String,
      stickerType: StickerType.fromJson(json['sticker_type'] as String),
      stickers: (json['stickers'] as List<dynamic>)
          .map((e) => Sticker.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : PhotoSize.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );
  }
}
