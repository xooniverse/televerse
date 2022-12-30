import 'package:televerse/src/telegram/models/abstracts/input_message_content.dart';
import 'package:televerse/src/types/parse_mode.dart';

import 'message_entity.dart';

/// Represents the content of a text message to be sent as the result of an inline query.
class InputTextMessageContent extends InputMessageContent {
  /// Text of the message to be sent, 1-4096 characters
  String messageText;

  /// Optional. Mode for parsing entities in the message text. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in message text, which can be specified instead of parse_mode
  List<MessageEntity>? entities;

  /// Optional. Disables link previews for links in the sent message
  bool? disableWebPagePreview;

  InputTextMessageContent({
    required this.messageText,
    this.parseMode,
    this.entities,
    this.disableWebPagePreview,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'message_text': messageText,
      'parse_mode': parseMode?.value,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'disable_web_page_preview': disableWebPagePreview,
    };
  }

  factory InputTextMessageContent.fromJson(Map<String, dynamic> json) {
    return InputTextMessageContent(
      messageText: json['message_text'] as String,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      entities: json['entities'] == null
          ? null
          : (json['entities'] as List)
              .map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
      disableWebPagePreview: json['disable_web_page_preview'] as bool?,
    );
  }
}
