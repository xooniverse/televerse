part of models;

/// Represents a general file to be sent.
class InputMediaDocument extends InputMedia {
  /// Type of the result, must be document
  @override
  final InputMediaType type = InputMediaType.document;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail's width and height should not exceed 320. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can't be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More information on Sending Files »
  final InputFile? thumbnail;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album.
  final bool? disableContentTypeDetection;

  const InputMediaDocument({
    required super.media,
    this.thumbnail,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.disableContentTypeDetection,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'media': media.toJson(),
      'thumbnail': thumbnail?.toJson(),
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities,
      'disable_content_type_detection': disableContentTypeDetection,
    }..removeWhere((key, value) => value == null);
  }
}
