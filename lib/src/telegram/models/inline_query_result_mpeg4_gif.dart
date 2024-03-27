part of 'models.dart';

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultMpeg4Gif extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.mpeg4Gif;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  final String mpeg4Url;

  /// Optional. Video width
  final int? mpeg4Width;

  /// Optional. Video height
  final int? mpeg4Height;

  /// Optional. Video duration
  final int? mpeg4Duration;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  final String thumbnailUrl;

  /// Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
  final String? thumbnailMimeType;

  /// Optional. Title for the result
  final String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  final InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultMpeg4Gif] object
  const InlineQueryResultMpeg4Gif({
    required this.mpeg4Url,
    required this.thumbnailUrl,
    required super.id,
    this.mpeg4Width,
    this.mpeg4Height,
    this.mpeg4Duration,
    this.thumbnailMimeType,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  });

  /// Converts an [InlineQueryResultMpeg4Gif] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'mpeg4_url': mpeg4Url,
      'thumbnail_url': thumbnailUrl,
      'id': id,
      'mpeg4_width': mpeg4Width,
      'mpeg4_height': mpeg4Height,
      'mpeg4_duration': mpeg4Duration,
      'thumbnail_mime_type': thumbnailMimeType,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultMpeg4Gif] object from a JSON object
  factory InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultMpeg4Gif(
      mpeg4Url: json['mpeg4_url'] as String,
      thumbnailUrl: json['thumbnail_url'] as String,
      id: json['id'] as String,
      mpeg4Width: json['mpeg4_width'] as int?,
      mpeg4Height: json['mpeg4_height'] as int?,
      mpeg4Duration: json['mpeg4_duration'] as int?,
      thumbnailMimeType: json['thumbnail_mime_type'] as String?,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>,
            ),
    );
  }
}
