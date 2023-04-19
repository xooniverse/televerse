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

  /// Optional. Pass True if the photo needs to be covered with a spoiler animation
  final bool? hasSpoiler;

  /// Constructs an [InputMediaPhoto] object
  InputMediaPhoto({
    required super.media,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.hasSpoiler,
  });

  /// Converts an [InputMediaPhoto] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'media': media.toJson(),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'has_spoiler': hasSpoiler,
    }..removeWhere((key, value) => value == null);
  }
}
