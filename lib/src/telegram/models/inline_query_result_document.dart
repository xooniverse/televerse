// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart' show InlineQueryResultType, ParseMode;

part 'inline_query_result_document.freezed.dart';
part 'inline_query_result_document.g.dart';

/// Represents a link to a file. By default, this file will be sent by the user
/// with an optional caption. Alternatively, you can use input_message_content
/// to send a message with the specified content instead of the file. Currently,
/// only .PDF and .ZIP files can be sent using this method.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
abstract class InlineQueryResultDocument
    with _$InlineQueryResultDocument
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultDocument] object
  const factory InlineQueryResultDocument({
    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// Type of the result, always [InlineQueryResultType.document]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.document)
    InlineQueryResultType type,

    /// Title for the result
    @JsonKey(name: 'title') required String title,

    /// A valid URL for the file
    @JsonKey(name: 'document_url') required String documentUrl,

    /// MIME type of the content of the file, either "application/pdf" or
    /// "application/zip"
    @JsonKey(name: 'mime_type') required String mimeType,

    /// Optional. Caption of the document to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the document caption. See
    /// formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Short description of the result
    @JsonKey(name: 'description') String? description,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the file
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. URL of the thumbnail (JPEG only) for the file
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,

    /// Optional. Thumbnail width
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,

    /// Optional. Thumbnail height
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,
  }) = _InlineQueryResultDocument;

  /// Constructs an [InlineQueryResultDocument] object from a JSON map
  factory InlineQueryResultDocument.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultDocumentFromJson(json);
}
