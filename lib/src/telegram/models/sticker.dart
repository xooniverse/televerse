part of models;

/// This object represents a sticker.
class Sticker {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Type of the sticker, currently one of “regular”, “mask”, “custom_emoji”. The type of the sticker is independent from its format, which is determined by the fields is_animated and is_video.
  StickerType type;

  /// Sticker width
  int width;

  /// Sticker height
  int height;

  /// True, if the sticker is animated
  bool isAnimated;

  /// True, if the sticker is a video sticker
  bool isVideo;

  /// Optional. Sticker thumbnail in the .WEBP or .JPG format
  PhotoSize? thumb;

  /// Optional. Emoji associated with the sticker
  String? emoji;

  /// Optional. Name of the sticker set to which the sticker belongs
  String? setName;

  /// Optional. For premium regular stickers, premium animation for the sticker
  File? premiumAnimation;

  /// Optional. For mask stickers, the position where the mask should be placed
  MaskPosition? maskPosition;

  /// Optional. For custom emoji stickers, unique identifier of the custom emoji
  String? customEmojiId;

  /// Optional. File size in bytes
  int? fileSize;

  Sticker({
    required this.fileId,
    required this.fileUniqueId,
    required this.type,
    required this.width,
    required this.height,
    required this.isAnimated,
    required this.isVideo,
    this.thumb,
    this.emoji,
    this.setName,
    this.premiumAnimation,
    this.maskPosition,
    this.customEmojiId,
    this.fileSize,
  });

  factory Sticker.fromJson(Map<String, dynamic> json) {
    return Sticker(
      fileId: json['file_id'] as String,
      fileUniqueId: json['file_unique_id'] as String,
      type: StickerType.fromJson(json['type'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
      isAnimated: json['is_animated'] as bool,
      isVideo: json['is_video'] as bool,
      thumb: json['thumb'] == null
          ? null
          : PhotoSize.fromJson(json['thumb'] as Map<String, dynamic>),
      emoji: json['emoji'] as String?,
      setName: json['set_name'] as String?,
      premiumAnimation: json['premium_animation'] == null
          ? null
          : File.fromJson(json['premium_animation'] as Map<String, dynamic>),
      maskPosition: json['mask_position'] == null
          ? null
          : MaskPosition.fromJson(
              json['mask_position'] as Map<String, dynamic>),
      customEmojiId: json['custom_emoji_id'] as String?,
      fileSize: json['file_size'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'type': type.toJson(),
      'width': width,
      'height': height,
      'is_animated': isAnimated,
      'is_video': isVideo,
      'thumb': thumb?.toJson(),
      'emoji': emoji,
      'set_name': setName,
      'premium_animation': premiumAnimation?.toJson(),
      'mask_position': maskPosition?.toJson(),
      'custom_emoji_id': customEmojiId,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }
}
