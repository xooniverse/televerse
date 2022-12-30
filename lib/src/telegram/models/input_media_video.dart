part of models;

/// Represents a video to be sent.
class InputMediaVideo extends InputMedia {
  /// Type of the result, must be video
  @override
  InputMediaType get type => InputMediaType.video;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumb;

  /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Video width
  final int? width;

  /// Optional. Video height
  final int? height;

  /// Optional. Video duration in seconds
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming
  bool? supportsStreaming;

  InputMediaVideo({
    required super.media,
    this.thumb,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.width,
    this.height,
    this.duration,
    this.supportsStreaming,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'media': media,
      'thumb': thumb?.toJson(),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'width': width,
      'height': height,
      'duration': duration,
      'supports_streaming': supportsStreaming,
    };
  }

  factory InputMediaVideo.fromJson(Map<String, dynamic> json) {
    return InputMediaVideo(
      media: json['media'],
      caption: json['caption'],
      parseMode: json['parse_mode'] != null
          ? ParseMode.fromJson(json['parse_mode'])
          : null,
      captionEntities: json['caption_entities'] != null
          ? (json['caption_entities'] as List)
              .map((e) => MessageEntity.fromJson(e))
              .toList()
          : null,
      width: json['width'],
      height: json['height'],
      duration: json['duration'],
      supportsStreaming: json['supports_streaming'],
    );
  }
}
