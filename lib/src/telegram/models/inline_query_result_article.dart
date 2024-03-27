part of 'models.dart';

/// Represents a link to an article or web page.
class InlineQueryResultArticle extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.article]
  @override
  InlineQueryResultType get type => InlineQueryResultType.article;

  /// Title of the result
  final String title;

  /// Content of the message to be sent
  final InputMessageContent inputMessageContent;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. URL of the result
  final String? url;

  /// Optional. Pass True if you don't want the URL to be shown in the message
  final bool? hideUrl;

  /// Optional. Short description of the result
  final String? description;

  /// Optional. Url of the thumbnail for the result
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  final int? thumbnailHeight;

  /// This object represents a link to an article or web page.A
  const InlineQueryResultArticle({
    required super.id,
    required this.title,
    required this.inputMessageContent,
    this.replyMarkup,
    this.url,
    this.hideUrl,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultArticle] object to a JSON map
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
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
    }..removeWhere(_nullFilter);
  }

  /// De-serializes a [InlineQueryResultArticle] object from a JSON map
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultArticle(
      title: json['title'] as String,
      inputMessageContent: InputMessageContent.fromJson(
        json['input_message_content'] as Map<String, dynamic>,
      ),
      id: json['id'] as String,
      replyMarkup: json['reply_markup'] == null
          ? null
          : InlineKeyboardMarkup.fromJson(
              json['reply_markup'] as Map<String, dynamic>,
            ),
      url: json['url'] as String?,
      hideUrl: json['hide_url'] as bool?,
      description: json['description'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}
