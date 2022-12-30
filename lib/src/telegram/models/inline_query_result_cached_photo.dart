import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';
import 'package:televerse/src/types/parse_mode.dart';

import 'abstracts/input_message_content.dart';
import 'inline_keyboard_markup.dart';
import 'message_entity.dart';

/// Represents a link to a photo stored on the Telegram servers. By default, this photo will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the photo.
class InlineQueryResultCachedPhoto extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.photo;

  /// A valid file identifier of the photo
  String photoFileId;

  /// Optional. Title for the result
  String? title;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the photo
  InputMessageContent? inputMessageContent;

  InlineQueryResultCachedPhoto({
    required this.photoFileId,
    required String id,
    this.title,
    this.description,
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
      'photo_file_id': photoFileId,
      'title': title,
      'description': description,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    };
  }

  factory InlineQueryResultCachedPhoto.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedPhoto(
      id: json['id'] as String,
      photoFileId: json['photo_file_id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: json['caption_entities'] == null
          ? null
          : (json['caption_entities'] as List<dynamic>)
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
