// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo_size.dart';

part 'animation.freezed.dart';
part 'animation.g.dart';

/// This object represents an animation file (GIF or H.264/MPEG-4 AVC video
/// without sound).
@freezed
abstract class Animation with _$Animation {
  /// Creates a new [Animation] object.
  const factory Animation({
    /// Identifier for this file, which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Video width as defined by sender
    @JsonKey(name: 'width') required int width,

    /// Video height as defined by sender
    @JsonKey(name: 'height') required int height,

    /// Duration of the video in seconds as defined by sender
    ///
    /// A handy [Duration] getter is available as `durationTime`
    @JsonKey(name: 'duration') required int duration,

    /// Optional. Animation thumbnail as defined by sender
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,

    /// Optional. Original animation filename as defined by sender
    @JsonKey(name: 'file_name') String? fileName,

    /// Optional. MIME type of the file as defined by sender
    @JsonKey(name: 'mime_type') String? mimeType,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed 64-bit integer
    /// or double-precision float type are safe for storing this value.
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _Animation;

  /// Creates a new [Animation] object from a JSON [Map].
  factory Animation.fromJson(Map<String, dynamic> json) =>
      _$AnimationFromJson(json);
}

/// Extension on Animation
extension AnimationExt on Animation {
  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
