import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart' show InlineQueryResultType, ParseMode;

part 'inline_query_result_cached_document.freezed.dart';
part 'inline_query_result_cached_document.g.dart';

/// Represents a link to a file stored on the Telegram servers. By default, this
/// file will be sent by the user with an optional caption. Alternatively, you
/// can use input_message_content to send a message with the specified content
/// instead of the file.
///
/// Note: This will only work in Telegram versions released after 9 April, 2016.
/// Older clients will ignore them.
@freezed
class InlineQueryResultCachedDocument
    with _$InlineQueryResultCachedDocument
    implements InlineQueryResult {
  /// Constructs an [InlineQueryResultCachedDocument] object
  const factory InlineQueryResultCachedDocument({
    /// Unique identifier for this result, 1-64 Bytes
    required String id,

    /// Type of the result, always [InlineQueryResultType.document]
    @Default(InlineQueryResultType.document) InlineQueryResultType type,

    /// A valid file identifier for the file
    @JsonKey(name: 'document_file_id') required String documentFileId,

    /// Title for the result
    required String title,

    /// Optional. Short description of the result
    String? description,

    /// Optional. Caption of the document to be sent, 0-1024 characters after
    /// entities parsing
    String? caption,

    /// Optional. Mode for parsing entities in the document caption. See
    /// formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the file
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,
  }) = _InlineQueryResultCachedDocument;

  /// Constructs an [InlineQueryResultCachedDocument] object from a JSON map
  factory InlineQueryResultCachedDocument.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultCachedDocumentFromJson(json);
}
