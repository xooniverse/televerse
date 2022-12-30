import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';
import 'package:televerse/src/types/parse_mode.dart';

import 'abstracts/input_message_content.dart';
import 'inline_keyboard_markup.dart';
import 'message_entity.dart';

/// Represents a link to an MP3 audio file stored on the Telegram servers. By default, this audio file will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the audio.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultCachedAudio extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.audio;

  /// A valid file identifier for the audio file
  String audioFileId;

  /// Optional. Caption, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice message
  InputMessageContent? inputMessageContent;

  InlineQueryResultCachedAudio({
    required this.audioFileId,
    required String id,
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
      'audio_file_id': audioFileId,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'id': id,
    };
  }

  factory InlineQueryResultCachedAudio.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultCachedAudio(
      audioFileId: json['audio_file_id'] as String,
      id: json['id'] as String,
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
              json['reply_markup'] as Map<String, dynamic>),
      inputMessageContent: json['input_message_content'] == null
          ? null
          : InputMessageContent.fromJson(
              json['input_message_content'] as Map<String, dynamic>),
    );
  }
}
