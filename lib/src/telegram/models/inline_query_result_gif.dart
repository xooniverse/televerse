part of 'models.dart';

/// Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultGif implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.gif;

  /// A valid URL for the GIF file. File size must not exceed 1MB
  final String gifUrl;

  /// Optional. Width of the GIF
  final int? gifWidth;

  /// Optional. Height of the GIF
  final int? gifHeight;

  /// Optional. Duration of the GIF in seconds
  final int? gifDuration;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  final String thumbnailUrl;

  /// Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
  final String? thumbnailMimeType;

  /// Optional. Title for the result
  final String? title;

  /// Optional. Caption of the GIF file to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the GIF animation
  final InputMessageContent? inputMessageContent;

  /// Optional. True, if the caption must be shown above the message media
  final bool? showCaptionAboveMedia;

  /// Constructs an [InlineQueryResultGif] object
  const InlineQueryResultGif({
    required this.gifUrl,
    required this.thumbnailUrl,
    required this.id,
    this.gifWidth,
    this.gifHeight,
    this.gifDuration,
    this.thumbnailMimeType,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
    this.showCaptionAboveMedia,
  });

  /// Converts an [InlineQueryResultGif] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'gif_url': gifUrl,
      'gif_width': gifWidth,
      'gif_height': gifHeight,
      'gif_duration': gifDuration,
      'thumbnail_url': thumbnailUrl,
      'thumbnail_mime_type': thumbnailMimeType,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode,
      'caption_entities': captionEntities,
      'reply_markup': replyMarkup,
      'input_message_content': inputMessageContent,
      'show_caption_above_media': showCaptionAboveMedia,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultGif] object from a JSON map
  factory InlineQueryResultGif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultGif(
      gifUrl: json['gif_url'],
      thumbnailUrl: json['thumbnail_url'],
      id: json['id'],
      gifWidth: json['gif_width'],
      gifHeight: json['gif_height'],
      gifDuration: json['gif_duration'],
      thumbnailMimeType: json['thumbnail_mime_type'],
      title: json['title'],
      caption: json['caption'],
      parseMode: json['parse_mode'] != null
          ? ParseMode.fromJson(json['parse_mode'])
          : null,
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e))
          .toList(),
      replyMarkup: json['reply_markup'] != null
          ? InlineKeyboardMarkup.fromJson(json['reply_markup'])
          : null,
      inputMessageContent: json['input_message_content'] != null
          ? InputMessageContent.fromJson(json['input_message_content'])
          : null,
      showCaptionAboveMedia: json['show_caption_above_media'],
    );
  }

  /// Copy method
  InlineQueryResultGif copyWith({
    String? id,
    String? gifUrl,
    int? gifWidth,
    int? gifHeight,
    int? gifDuration,
    String? thumbnailUrl,
    String? thumbnailMimeType,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
    bool? showCaptionAboveMedia,
  }) {
    return InlineQueryResultGif(
      id: id ?? this.id,
      gifUrl: gifUrl ?? this.gifUrl,
      gifWidth: gifWidth ?? this.gifWidth,
      gifHeight: gifHeight ?? this.gifHeight,
      gifDuration: gifDuration ?? this.gifDuration,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      thumbnailMimeType: thumbnailMimeType ?? this.thumbnailMimeType,
      title: title ?? this.title,
      caption: caption ?? this.caption,
      parseMode: parseMode ?? this.parseMode,
      captionEntities: captionEntities ?? this.captionEntities,
      replyMarkup: replyMarkup ?? this.replyMarkup,
      inputMessageContent: inputMessageContent ?? this.inputMessageContent,
      showCaptionAboveMedia:
          showCaptionAboveMedia ?? this.showCaptionAboveMedia,
    );
  }
}
