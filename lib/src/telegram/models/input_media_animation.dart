part of 'models.dart';

/// Represents an animation file (GIF or H.264/MPEG-4 AVC video without sound) to be sent.
class InputMediaAnimation extends InputMedia {
  /// Type of the result, must be [InputMediaType.animation]
  @override
  InputMediaType get type => InputMediaType.animation;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumbnail;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Animation width
  final int? width;

  /// Optional. Animation height
  final int? height;

  /// Optional. Animation duration in seconds
  final int? duration;

  /// Optional. Pass True if the animation needs to be covered with a spoiler animation
  final bool? hasSpoiler;

  /// Constructs an [InputMediaAnimation] object
  InputMediaAnimation({
    required super.media,
    this.thumbnail,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.width,
    this.height,
    this.duration,
    this.hasSpoiler,
  });

  /// Converts an [InputMediaAnimation] object to a JSON object
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'thumbnail': thumbnail?.getValue(thumb),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'width': width,
      'height': height,
      'duration': duration,
      'has_spoiler': hasSpoiler,
    }..removeWhere((key, value) => value == null);
  }
}
