import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/televerse.dart';

part 'input_media.freezed.dart';
part 'input_media.g.dart';

/// Interface to expose the `type` and `media` on the InputMedia class
abstract interface class _InputMediaImp {
  /// Type of input media.
  InputMediaType get type;

  /// The file to send.
  InputFile get media;
}

/// This object represents the content of a media message to be sent. It should be one of
@Freezed(fromJson: false, toJson: true)
sealed class InputMedia with _$InputMedia implements _InputMediaImp {
  @Assert("type == InputMediaType.photo", "`type` must be InputMedia.photo")
  const factory InputMedia.photo({
    /// Type of input media.
    @Default(InputMediaType.photo) final InputMediaType type,

    /// The file to send
    @InputFileConverter() required final InputFile media,

    /// Optional. Caption of the photo to be sent, 0-1024 characters after entities parsing
    final String? caption,

    /// Optional. Mode for parsing entities in the photo caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Pass True if the photo needs to be covered with a spoiler animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,
  }) = InputMediaPhoto;

  @Assert("type != InputMediaType.document", "`type` must be InputMedia.photo")
  const factory InputMedia.document({
    /// Type of input media.
    @Default(InputMediaType.document) final InputMediaType type,

    /// The file to send
    @InputFileConverter() required final InputFile media,

    /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side.
    @InputFileConverter() final InputFile? thumbnail,

    /// Optional. Caption of the document to be sent, 0-1024 characters after entities parsing
    final String? caption,

    /// Optional. Mode for parsing entities in the document caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Disables automatic server-side content type detection for files uploaded using multipart/form-data. Always True, if the document is sent as part of an album.
    @JsonKey(name: 'disable_content_type_detection')
    final bool? disableContentTypeDetection,
  }) = InputMediaDocument;

  @Assert(
    "type == InputMediaType.animation",
    "`type` must be InputMedia.animation",
  )
  const factory InputMedia.animation({
    /// Type of input media.
    @Default(InputMediaType.animation) final InputMediaType type,

    /// The file to send
    @InputFileConverter() required final InputFile media,

    /// Optional. Thumbnail of the file sent.
    @InputFileConverter() final InputFile? thumbnail,

    /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
    final String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Animation width
    final int? width,

    /// Optional. Animation height
    final int? height,

    /// Optional. Animation duration in seconds
    final int? duration,

    /// Optional. Pass True if the animation needs to be covered with a spoiler animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,
  }) = InputMediaAnimation;

  @Assert("type == InputMediaType.audio", "`type` must be InputMedia.audio")
  const factory InputMedia.audio({
    /// Type of input media.
    @Default(InputMediaType.audio) final InputMediaType type,

    /// The file to send
    @InputFileConverter() required final InputFile media,

    /// Optional. Thumbnail of the file sent.
    @InputFileConverter() final InputFile? thumbnail,

    /// Optional. Caption of the audio to be sent, 0-1024 characters after entities parsing
    final String? caption,

    /// Optional. Mode for parsing entities in the audio caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Duration of the audio in seconds
    final int? duration,

    /// Optional. Performer of the audio
    final String? performer,

    /// Optional. Title of the audio
    final String? title,
  }) = InputMediaAudio;

  @Assert("type == InputMediaType.video", "`type` must be InputMedia.video")
  const factory InputMedia.video({
    /// Type of input media.
    @Default(InputMediaType.video) final InputMediaType type,

    /// The file to send
    @InputFileConverter() required final InputFile media,

    /// Optional. Thumbnail of the file sent.
    @InputFileConverter() final InputFile? thumbnail,

    /// Optional. Caption of the video to be sent, 0-1024 characters after entities parsing
    final String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Video width
    final int? width,

    /// Optional. Video height
    final int? height,

    /// Optional. Video duration in seconds
    final int? duration,

    /// Optional. Pass True if the uploaded video is suitable for streaming
    @JsonKey(name: 'supports_streaming') final bool? supportsStreaming,

    /// Optional. Pass True if the video needs to be covered with a spoiler animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,

    /// Optional. Timestamp in seconds from which the video will play in the message
    @JsonKey(name: 'start_timestamp') final int? startTimestamp,

    /// Optional. Cover for the video in the message.
    @InputFileConverter() final InputFile? cover,
  }) = InputMediaVideo;

  factory InputMedia.fromJson(Map<String, Object?> json) =>
      throw Exception("Can't create InputMedia from JSON");
}
