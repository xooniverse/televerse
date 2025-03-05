// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo_size.dart';

part 'video.freezed.dart';
part 'video.g.dart';

/// This object represents a video file.
@freezed
class Video with _$Video {
  /// Creates a video file
  ///
  /// - [fileId] Identifier for this file, which can be used to download or
  ///   reuse the file
  /// - [fileUniqueId] Unique identifier for this file
  /// - [width] Video width as defined by sender
  /// - [height] Video height as defined by sender
  /// - [duration] Duration of the video in seconds as defined by sender
  /// - [thumbnail] Animation thumbnail as defined by sender
  /// - [fileName] Original animation filename as defined by sender
  /// - [mimeType] MIME type of the file as defined by sender
  /// - [fileSize] File size in bytes
  /// - [startTimestamp] Timestamp in seconds from which the video will play
  /// - [cover] Available sizes of the cover of the video
  const factory Video({
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
    /// A handy [Duration] getter is available as [durationTime]
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

    /// Optional. Timestamp in seconds from which the video will play in the
    /// message
    @JsonKey(name: 'start_timestamp') int? startTimestamp,

    /// Optional. Available sizes of the cover of the video in the message
    @JsonKey(name: 'cover') List<PhotoSize>? cover,
  }) = _Video;

  /// Creates a [Video] from a JSON map
  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

/// Extension on Video
extension VideoExt on Video {
  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
