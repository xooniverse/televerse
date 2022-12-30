import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';
import 'package:televerse/src/types/parse_mode.dart';

import 'abstracts/input_message_content.dart';
import 'inline_keyboard_markup.dart';
import 'message_entity.dart';

/// Represents a link to a voice recording in an .OGG container encoded with OPUS. By default, this voice recording will be sent by the user. Alternatively, you can use input_message_content to send a message with the specified content instead of the the voice message.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultVoice extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.voice;

  /// A valid URL for the voice recording
  String voiceUrl;

  /// Recording title
  String title;

  /// Optional. Caption, 0-1024 characters after entities parsing
  String? caption;

  /// Optional. Mode for parsing entities in the voice message caption. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  List<MessageEntity>? captionEntities;

  /// Optional. Recording duration in seconds
  int? voiceDuration;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the voice recording
  InputMessageContent? inputMessageContent;

  InlineQueryResultVoice({
    required this.voiceUrl,
    required this.title,
    required String id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.voiceDuration,
    this.replyMarkup,
    this.inputMessageContent,
  }) : super(id: id);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'voice_url': voiceUrl,
      'title': title,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'voice_duration': voiceDuration,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
    };
  }
}
