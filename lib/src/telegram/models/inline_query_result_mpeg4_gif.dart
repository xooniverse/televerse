import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';
import 'package:televerse/src/types/parse_mode.dart';

import 'abstracts/input_message_content.dart';
import 'inline_keyboard_markup.dart';
import 'message_entity.dart';

/// Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
class InlineQueryResultMpeg4Gif extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.mpeg4Gif;

  /// A valid URL for the MPEG4 file. File size must not exceed 1MB
  String mpeg4Url;

  /// Optional. Video width
  int? mpeg4Width;

  /// Optional. Video height
  int? mpeg4Height;

  /// Optional. Video duration
  int? mpeg4Duration;

  /// URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
  String thumbUrl;

  /// Optional. MIME type of the thumbnail, must be one of “image/jpeg”, “image/gif”, or “video/mp4”. Defaults to “image/jpeg”
  String? thumbMimeType;

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

  InlineQueryResultMpeg4Gif({
    required this.mpeg4Url,
    required this.thumbUrl,
    required String id,
    this.mpeg4Width,
    this.mpeg4Height,
    this.mpeg4Duration,
    this.thumbMimeType,
    this.title,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.replyMarkup,
    this.inputMessageContent,
  }) : super(id: id);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'mpeg4_url': mpeg4Url,
      'thumb_url': thumbUrl,
      'id': id,
      'mpeg4_width': mpeg4Width,
      'mpeg4_height': mpeg4Height,
      'mpeg4_duration': mpeg4Duration,
      'thumb_mime_type': thumbMimeType,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    };
  }

  factory InlineQueryResultMpeg4Gif.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultMpeg4Gif(
      mpeg4Url: json['mpeg4_url'] as String,
      thumbUrl: json['thumb_url'] as String,
      id: json['id'] as String,
      mpeg4Width: json['mpeg4_width'] as int?,
      mpeg4Height: json['mpeg4_height'] as int?,
      mpeg4Duration: json['mpeg4_duration'] as int?,
      thumbMimeType: json['thumb_mime_type'] as String?,
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: json['caption_entities'] == null
          ? null
          : (json['caption_entities'] as List)
              .map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>),
    );
  }
}
