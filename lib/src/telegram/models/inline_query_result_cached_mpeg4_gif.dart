part of models;

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers. By default, this animated MPEG-4 file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultCachedMpeg4Gif extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.mpeg4Gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.mpeg4Gif;

  /// A valid file identifier for the MPEG4 file
  String mpeg4FileId;

  /// Optional. Title for the result
  String? title;

  /// Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the video animation
  InputMessageContent? inputMessageContent;

  /// Constructs an [InlineQueryResultCachedMpeg4Gif] object
  InlineQueryResultCachedMpeg4Gif({
    required this.mpeg4FileId,
    required String id,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  }) : super(id: id);

  /// Converts an [InlineQueryResultCachedMpeg4Gif] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'mpeg4_file_id': mpeg4FileId,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultCachedMpeg4Gif] object from a JSON map
  factory InlineQueryResultCachedMpeg4Gif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedMpeg4Gif(
      mpeg4FileId: json['mpeg4_file_id'] as String,
      id: json['id'] as String,
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
