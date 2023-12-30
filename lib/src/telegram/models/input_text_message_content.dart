part of 'models.dart';

/// Represents the content of a text message to be sent as the result of an inline query.
class InputTextMessageContent extends InputMessageContent {
  /// Text of the message to be sent, 1-4096 characters
  String messageText;

  /// Optional. Mode for parsing entities in the message text. See formatting options for more details.
  ParseMode? parseMode;

  /// Optional. List of special entities that appear in message text, which can be specified instead of parse_mode
  List<MessageEntity>? entities;

  /// Optional. Disables link previews for links in the sent message
  LinkPreviewOptions? linkPreviewOptions;

  /// Constructs an [InputTextMessageContent] object
  InputTextMessageContent({
    required this.messageText,
    this.parseMode,
    this.entities,
    this.linkPreviewOptions,
  });

  /// Converts an [InputTextMessageContent] object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'message_text': messageText,
      'parse_mode': parseMode?.value,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'link_preview_options': linkPreviewOptions?.toJson(),
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InputTextMessageContent] object from a JSON object
  factory InputTextMessageContent.fromJson(Map<String, dynamic> json) {
    return InputTextMessageContent(
      messageText: json['message_text'] as String,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      linkPreviewOptions: json['disable_web_page_preview'] == null
          ? null
          : LinkPreviewOptions.fromJson(
              json['disable_web_page_preview'] as Map<String, dynamic>,
            ),
    );
  }
}
