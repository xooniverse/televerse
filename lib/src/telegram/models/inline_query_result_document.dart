part of 'models.dart';

/// Represents a link to a file. By default, this file will be sent by the user with an optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the file. Currently, only .PDF and .ZIP files can be sent using this method.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
class InlineQueryResultDocument extends InlineQueryResult {
  /// Type of the result, always [InlineQueryResultType.document]
  @override
  InlineQueryResultType get type => InlineQueryResultType.document;

  /// Title for the result
  final String title;

  /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
  final String? caption;

  /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
  final ParseMode? parseMode;

  /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
  final List<MessageEntity>? captionEntities;

  /// A valid URL for the file
  final String documentUrl;

  /// MIME type of the content of the file, either “application/pdf” or “application/zip”
  final String mimeType;

  /// Optional. Short description of the result
  final String? description;

  /// Optional. Inline keyboard attached to the message
  final InlineKeyboardMarkup? replyMarkup;

  /// Optional. Content of the message to be sent instead of the file
  final InputMessageContent? inputMessageContent;

  /// Optional. URL of the thumbnail (JPEG only) for the file
  final String? thumbnailUrl;

  /// Optional. Thumbnail width
  final int? thumbnailWidth;

  /// Optional. Thumbnail height
  final int? thumbnailHeight;

  /// Constructs an [InlineQueryResultDocument] object
  const InlineQueryResultDocument({
    required this.title,
    required this.documentUrl,
    required this.mimeType,
    required super.id,
    this.caption,
    this.parseMode,
    this.captionEntities,
    this.description,
    this.replyMarkup,
    this.inputMessageContent,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
  });

  /// Converts an [InlineQueryResultDocument] object to a JSON map
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'title': title,
      'document_url': documentUrl,
      'mime_type': mimeType,
      'caption': caption,
      'parse_mode': parseMode?.value,
      'caption_entities': captionEntities?.map((e) => e.toJson()).toList(),
      'description': description,
      'reply_markup': replyMarkup?.toJson(),
      'input_message_content': inputMessageContent?.toJson(),
      'thumbnail_url': thumbnailUrl,
      'thumbnail_width': thumbnailWidth,
      'thumbnail_height': thumbnailHeight,
      'id': id,
    }..removeWhere((key, value) => value == null);
  }

  /// Constructs an [InlineQueryResultDocument] object from a JSON map
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    return InlineQueryResultDocument(
      title: json['title'] as String,
      documentUrl: json['document_url'] as String,
      mimeType: json['mime_type'] as String,
      id: json['id'] as String,
      caption: json['caption'] as String?,
      parseMode: json['parse_mode'] == null
          ? null
          : ParseMode.fromJson(json['parse_mode'] as String),
      captionEntities: (json['caption_entities'] as List<dynamic>?)
          ?.map((e) => MessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
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
      thumbnailUrl: json['thumbnail_url'] as String?,
      thumbnailWidth: json['thumbnail_width'] as int?,
      thumbnailHeight: json['thumbnail_height'] as int?,
    );
  }
}
