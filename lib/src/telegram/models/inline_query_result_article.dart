import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/inline_query_result.dart';
import 'package:televerse/src/telegram/models/input_message_content.dart';
import 'package:televerse/src/telegram/models/reply_markup.dart';
import 'package:televerse/televerse.dart';

part 'inline_query_result_article.freezed.dart';
part 'inline_query_result_article.g.dart';

/// Represents a link to an article or web page.
@freezed
class InlineQueryResultArticle
    with _$InlineQueryResultArticle
    implements InlineQueryResult {
  /// This object represents a link to an article or web page.
  const factory InlineQueryResultArticle({
    /// Unique identifier for this result
    required String id,

    /// Title of the result
    required String title,

    /// Content of the message to be sent
    @InputMessageContentConverter()
    required InputMessageContent inputMessageContent,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. URL of the result
    String? url,

    /// Optional. Short description of the result
    String? description,

    /// Optional. Url of the thumbnail for the result
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,

    /// Optional. Thumbnail width
    @JsonKey(name: 'thumbnail_width') int? thumbnailWidth,

    /// Optional. Thumbnail height
    @JsonKey(name: 'thumbnail_height') int? thumbnailHeight,

    /// Type of the result, always [InlineQueryResultType.article]
    @Default(InlineQueryResultType.article) InlineQueryResultType type,
  }) = _InlineQueryResultArticle;

  /// Creates an instance of [InlineQueryResultArticle] from JSON data
  factory InlineQueryResultArticle.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultArticleFromJson(json);
}
