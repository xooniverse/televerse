// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/file_provider/file_provider.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' show InputFile, InputFileConverter;

part 'input_media.freezed.dart';
part 'input_media.g.dart';

/// Interface to expose the `type` and `media` on the InputMedia class
abstract interface class _InputMediaImp {
  /// Type of input media.
  InputMediaType get type;

  /// The file to send.
  InputFile get media;
}

/// This object represents the content of a media message to be sent. It should
/// be one of
@Freezed(fromJson: false, toJson: true, unionKey: "type")
sealed class InputMedia
    with _$InputMedia
    implements _InputMediaImp, InputFileProvider {
  const InputMedia._();

  @override
  Iterable<InputFile?> getInputFiles() {
    switch (this) {
      case InputMediaPhoto(media: final media):
        return [media];
      case InputMediaDocument(media: final media, thumbnail: final thumbnail):
        return [media, thumbnail];
      case InputMediaAnimation(media: final media, thumbnail: final thumbnail):
        return [media, thumbnail];
      case InputMediaAudio(media: final media, thumbnail: final thumbnail):
        return [media, thumbnail];
      case InputMediaVideo(
        media: final media,
        thumbnail: final thumbnail,
        cover: final cover,
      ):
        return [media, thumbnail, cover];
    }
  }

  /// Represents a photo to be sent.
  const factory InputMedia.photo({
    /// Type of input media.
    @JsonKey(name: 'type')
    @Default(InputMediaType.photo)
    final InputMediaType type,

    /// The file to send
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// Optional. Caption of the photo to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') final String? caption,

    /// Optional. Mode for parsing entities in the photo caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Pass True if the photo needs to be covered with a spoiler
    /// animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,
  }) = InputMediaPhoto;

  /// Represents a document to be sent.
  const factory InputMedia.document({
    /// Type of input media.
    @JsonKey(name: 'type')
    @Default(InputMediaType.document)
    final InputMediaType type,

    /// The file to send
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// Optional. Thumbnail of the file sent; can be ignored if thumbnail
    /// generation for the file is supported server-side.
    @JsonKey(name: 'thumbnail')
    @InputFileConverter()
    final InputFile? thumbnail,

    /// Optional. Caption of the document to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') final String? caption,

    /// Optional. Mode for parsing entities in the document caption. See
    /// formatting options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Disables automatic server-side content type detection for
    /// files uploaded using multipart/form-data. Always True, if the document
    /// is sent as part of an album.
    @JsonKey(name: 'disable_content_type_detection')
    final bool? disableContentTypeDetection,
  }) = InputMediaDocument;

  /// Represents an animation to be sent
  const factory InputMedia.animation({
    /// Type of input media.
    @JsonKey(name: 'type')
    @Default(InputMediaType.animation)
    final InputMediaType type,

    /// The file to send
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// Optional. Thumbnail of the file sent.
    @JsonKey(name: 'thumbnail')
    @InputFileConverter()
    final InputFile? thumbnail,

    /// Optional. Caption of the video to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') final String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Animation width
    @JsonKey(name: 'width') final int? width,

    /// Optional. Animation height
    @JsonKey(name: 'height') final int? height,

    /// Optional. Animation duration in seconds
    @JsonKey(name: 'duration') final int? duration,

    /// Optional. Pass True if the animation needs to be covered with a spoiler
    /// animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,
  }) = InputMediaAnimation;

  /// Represents an audio file to be treated as music to be sent.
  const factory InputMedia.audio({
    /// Type of input media.
    @JsonKey(name: 'type')
    @Default(InputMediaType.audio)
    final InputMediaType type,

    /// The file to send
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// Optional. Thumbnail of the file sent.
    @JsonKey(name: 'thumbnail')
    @InputFileConverter()
    final InputFile? thumbnail,

    /// Optional. Caption of the audio to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') final String? caption,

    /// Optional. Mode for parsing entities in the audio caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Duration of the audio in seconds
    @JsonKey(name: 'duration') final int? duration,

    /// Optional. Performer of the audio
    @JsonKey(name: 'performer') final String? performer,

    /// Optional. Title of the audio
    @JsonKey(name: 'title') final String? title,
  }) = InputMediaAudio;

  /// Represents a video to be sent.
  const factory InputMedia.video({
    /// Type of input media.
    @JsonKey(name: 'type')
    @Default(InputMediaType.video)
    final InputMediaType type,

    /// The file to send
    @JsonKey(name: 'media')
    @InputFileConverter()
    required final InputFile media,

    /// Optional. Thumbnail of the file sent.
    @JsonKey(name: 'thumbnail')
    @InputFileConverter()
    final InputFile? thumbnail,

    /// Optional. Caption of the video to be sent, 0-1024 characters after
    /// entities parsing
    @JsonKey(name: 'caption') final String? caption,

    /// Optional. Mode for parsing entities in the video caption. See formatting
    /// options for more details.
    @JsonKey(name: 'parse_mode') final ParseMode? parseMode,

    /// Optional. List of special entities that appear in the caption, which can
    /// be specified instead of parse_mode
    @JsonKey(name: 'caption_entities')
    final List<MessageEntity>? captionEntities,

    /// Optional. Video width
    @JsonKey(name: 'width') final int? width,

    /// Optional. Video height
    @JsonKey(name: 'height') final int? height,

    /// Optional. Video duration in seconds
    @JsonKey(name: 'duration') final int? duration,

    /// Optional. Pass True if the uploaded video is suitable for streaming
    @JsonKey(name: 'supports_streaming') final bool? supportsStreaming,

    /// Optional. Pass True if the video needs to be covered with a spoiler
    /// animation
    @JsonKey(name: 'has_spoiler') final bool? hasSpoiler,

    /// Optional. True, if the caption must be shown above the message media
    @JsonKey(name: 'show_caption_above_media')
    final bool? showCaptionAboveMedia,

    /// Optional. Timestamp in seconds from which the video will play in the
    /// message
    @JsonKey(name: 'start_timestamp') final int? startTimestamp,

    /// Optional. Cover for the video in the message.
    @JsonKey(name: 'cover') @InputFileConverter() final InputFile? cover,
  }) = InputMediaVideo;

  factory InputMedia.fromJson(Map<String, Object?> json) =>
      throw Exception("Can't create InputMedia from JSON");
}
