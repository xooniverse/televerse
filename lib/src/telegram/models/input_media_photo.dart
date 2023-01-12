part of models;

/// Represents a photo to be sent.
class InputMediaPhoto extends InputMedia {
  /// Type of the result, must be photo
  @override
  final InputMediaType type = InputMediaType.photo;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  InputMediaPhoto({
    required super.media,
    this.caption,
    this.parseMode,
    this.captionEntities,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'media': media.toJson(),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
    }..removeWhere((key, value) => value == null);
  }
}
