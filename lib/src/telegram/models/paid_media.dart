// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:televerse/telegram.dart' show PaidMediaType, PhotoSize, Video;

part 'paid_media.freezed.dart';
part 'paid_media.g.dart';

/// Interface to expose the `type` property on `PaidMedia`
abstract interface class _PaidMediaImpl {
  /// Type of the paid media
  PaidMediaType get type;
}

/// This object describes paid media. It can be one of
/// - [PaidMediaPreview]
/// - [PaidMediaPhoto]
/// - [PaidMediaVideo]
@Freezed(
  unionKey: 'type',
  unionValueCase: FreezedUnionCase.snake,
)
sealed class PaidMedia with _$PaidMedia implements _PaidMediaImpl {
  /// Preview of paid media
  @Assert(
    'type == PaidMediaType.preview',
    'type must be PaidMediaType.preview',
  )
  const factory PaidMedia.preview({
    /// Type of the paid media, must be "preview"
    @Default(PaidMediaType.preview) @JsonKey(name: 'type') PaidMediaType type,

    /// Optional. Media width as defined by the sender.
    @JsonKey(name: 'width') final int? width,

    /// Optional. Media height as defined by the sender.
    @JsonKey(name: 'height') final int? height,

    /// Optional. Duration of the media in seconds as defined by the sender.
    @JsonKey(name: 'duration') final int? duration,
  }) = PaidMediaPreview;

  /// Photo paid media
  @Assert(
    'type == PaidMediaType.photo',
    'type must be PaidMediaType.photo',
  )
  const factory PaidMedia.photo({
    /// Type of the paid media, must be "photo"
    @Default(PaidMediaType.photo) @JsonKey(name: 'type') PaidMediaType type,

    /// The photo.
    @JsonKey(name: 'photo') required final List<PhotoSize> photo,
  }) = PaidMediaPhoto;

  /// Video paid media
  @Assert(
    'type == PaidMediaType.video',
    'type must be PaidMediaType.video',
  )
  const factory PaidMedia.video({
    /// Type of the paid media, must be "video"
    @Default(PaidMediaType.video) @JsonKey(name: 'type') PaidMediaType type,

    /// The video.
    @JsonKey(name: 'video') required final Video video,
  }) = PaidMediaVideo;

  /// Creates Paid Media from JSON
  factory PaidMedia.fromJson(Map<String, dynamic> json) =>
      _$PaidMediaFromJson(json);
}
