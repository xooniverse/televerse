// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show
        InlineKeyboardMarkup,
        InlineQueryResult,
        InlineQueryResultPhoto,
        InlineQueryResultType,
        InputMessageContent,
        InputMessageContentConverter,
        MessageEntity,
        ParseMode;

part 'inline_query_result_photo.freezed.dart';
part 'inline_query_result_photo.g.dart';

/// Represents a link to a photo. By default, this photo will be sent by the
/// user with optional caption. Alternatively, you can use input_message_content
/// to send a message with the specified content instead of the photo.
@freezed
abstract class InlineQueryResultPhoto
    with _$InlineQueryResultPhoto
    implements InlineQueryResult {
  /// Creates an [InlineQueryResultPhoto] object
  const factory InlineQueryResultPhoto({
    /// Type of the result, always [InlineQueryResultType.photo]
    @JsonKey(name: 'type')
    @Default(InlineQueryResultType.photo)
    InlineQueryResultType type,

    /// Unique identifier for this result, 1-64 Bytes
    @JsonKey(name: 'id') required String id,

    /// A valid URL of the photo. Photo must be in JPEG format. Photo size must not exceed 5MB
    @JsonKey(name: 'photo_url') required String photoUrl,

    /// URL of the thumbnail for the photo
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,

    /// Optional. Width of the photo
    @JsonKey(name: 'photo_width') int? photoWidth,

    /// Optional. Height of the photo
    @JsonKey(name: 'photo_height') int? photoHeight,

    /// Optional. Title for the result
    @JsonKey(name: 'title') String? title,

    /// Optional. Short description of the result
    @JsonKey(name: 'description') String? description,

    /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
    @JsonKey(name: 'caption') String? caption,

    /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities') List<MessageEntity>? captionEntities,

    /// Optional. Inline keyboard attached to the message
    @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup,

    /// Optional. Content of the message to be sent instead of the photo
    @JsonKey(name: 'input_message_content')
    @InputMessageContentConverter()
    InputMessageContent? inputMessageContent,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media') bool? showCaptionAboveMedia,
  }) = _InlineQueryResultPhoto;

  /// Creates an [InlineQueryResultPhoto] object from JSON
  factory InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultPhotoFromJson(json);
}
