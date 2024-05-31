// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

/// Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with specified content instead of the animation.
class InlineQueryResultCachedGif implements InlineQueryResult {
  /// Unique identifier for this result, 1-64 Bytes
  @override
  final String id;

  /// Type of the result, always [InlineQueryResultType.gif]
  @override
  InlineQueryResultType get type => InlineQueryResultType.gif;

  /// A valid file identifier for the GIF file
  final String gifFileId;

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

  /// Constructs an [InlineQueryResultCachedGif] object
  const InlineQueryResultCachedGif({
    required this.gifFileId,
    required this.id,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
    this.showCaptionAboveMedia,
  });

  /// Converts an [InlineQueryResultCachedGif] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'id': id,
      'gif_file_id': gifFileId,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'show_caption_above_media': showCaptionAboveMedia,
    }..removeWhere(_nullFilter);
  }

  /// Constructs an [InlineQueryResultCachedGif] object from a JSON map
  factory InlineQueryResultCachedGif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedGif(
      gifFileId: json['gif_file_id'] as String,
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
      showCaptionAboveMedia: json['show_caption_above_media'],
    );
  }

  /// Copy method
  InlineQueryResultCachedGif copyWith({
    String? id,
    String? gifFileId,
    String? title,
    String? caption,
    ParseMode? parseMode,
    List<MessageEntity>? captionEntities,
    InlineKeyboardMarkup? replyMarkup,
    InputMessageContent? inputMessageContent,
    bool? showCaptionAboveMedia,
  }) {
    return InlineQueryResultCachedGif(
      id: id ?? this.id,
      gifFileId: gifFileId ?? this.gifFileId,
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
