import 'package:televerse/src/telegram/models/abstracts/inline_query_result.dart';
import 'package:televerse/src/types/inline_query_result_type.dart';

import 'inline_keyboard_markup.dart';

/// Represents a link to an article or web page.
class InlineQueryResultArticle extends InlineQueryResult {
  @override
  InlineQueryResultType get type => InlineQueryResultType.article;

  /// Title of the result
  String title;

  /// Content of the message to be sent
  InputMessageContent inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  InlineKeyboardMarkup? replyMarkup;

  /// Optional. URL of the result
  String? url;

  /// Optional. Pass True if you don't want the URL to be shown in the message
  bool? hideUrl;

  /// Optional. Short description of the result
  String? description;

  /// Optional. Url of the thumbnail for the result
  String? thumbUrl;

  /// Optional. Thumbnail width
  int? thumbWidth;

  /// Optional. Thumbnail height
  int? thumbHeight;

  InlineQueryResultArticle({
    required this.title,
    required this.inputMessageContent,
    required String id,
    this.replyMarkup,
    this.url,
    this.hideUrl,
    this.description,
    this.thumbUrl,
    this.thumbWidth,
    this.thumbHeight,
  }) : super(id: id);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toString(),
      'id': id,
      'title': title,
      'input_message_content': inputMessageContent.toJson(),
      'reply_markup': replyMarkup?.toJson(),
      'url': url,
      'hide_url': hideUrl,
      'description': description,
      'thumb_url': thumbUrl,
      'thumb_width': thumbWidth,
      'thumb_height': thumbHeight,
    };
  }

  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultArticle(
      title: json['title'] as String,
      inputMessageContent: InputMessageContent.fromJson(
          json['input_message_content'] as Map<String, dynamic>),
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>),
      url: json['url'] as String?,
      hideUrl: json['hide_url'] as bool?,
      description: json['description'] as String?,
      thumbUrl: json['thumb_url'] as String?,
      thumbWidth: json['thumb_width'] as int?,
      thumbHeight: json['thumb_height'] as int?,
    );
  }
}
