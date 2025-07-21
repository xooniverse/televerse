// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart' show InputPaidMediaType;
import 'package:televerse/televerse.dart' show InputFile, InputFileConverter;

part 'input_paid_media.freezed.dart';
part 'input_paid_media.g.dart';

/// Interface to expose the `media` and `type` properties on `InputPaidMedia`
abstract interface class _InputPaidMediaImpl {
  /// Type of the media.
  InputPaidMediaType get type;

  /// File to send.
  InputFile get media;
}

/// This object describes the paid media to be sent. Currently, it can be one of
/// [InputPaidMediaPhoto] or [InputPaidMediaVideo].
@Freezed(fromJson: false, toJson: true)
sealed class InputPaidMedia
    with _$InputPaidMedia
    implements _InputPaidMediaImpl {
  /// The paid media to send is a photo.
  @Assert(
    'type == InputPaidMediaType.photo',
    'type must be InputPaidMediaType.photo',
  )
  const factory InputPaidMedia.photo({
    /// Type of the media, must be "photo"
    @Default(InputPaidMediaType.photo) final InputPaidMediaType type,

    /// File to send.
    @InputFileConverter() required final InputFile media,
  }) = InputPaidMediaPhoto;

  /// The paid media to send is a video.
  @Assert(
    'type == InputPaidMediaType.video',
    'type must be InputPaidMediaType.video',
  )
  const factory InputPaidMedia.video({
    /// Type of the media, must be "video".
    @Default(InputPaidMediaType.video)
    @JsonKey(name: 'type')
    final InputPaidMediaType type,

    /// File to send.
    @InputFileConverter()
    @JsonKey(name: 'media')
    required final InputFile media,

    /// Optional. Thumbnail of the file sent; can be ignored if thumbnail
    /// generation for the file is supported server-side.
    @InputFileConverter()
    @JsonKey(name: 'thumbnail')
    final InputFile? thumbnail,

    /// Optional. Video width.
    @JsonKey(name: 'width') final int? width,

    /// Optional. Video height.
    @JsonKey(name: 'height') final int? height,

    /// Optional. Video duration in seconds.
    @JsonKey(name: 'duration') final int? duration,

    /// Optional. Pass True if the uploaded video is suitable for streaming.
    @JsonKey(name: 'supports_streaming') final bool? supportsStreaming,

    /// Optional. Timestamp in seconds from which the video will play in the
    /// message
    @JsonKey(name: 'start_timestamp') final int? startTimestamp,

    /// Optional. Cover for the video in the message.
    @InputFileConverter() @JsonKey(name: 'cover') final InputFile? cover,
  }) = InputPaidMediaVideo;
}
