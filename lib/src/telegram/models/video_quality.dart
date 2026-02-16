// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_quality.freezed.dart';
part 'video_quality.g.dart';

/// This object represents a video file of a specific quality.
@freezed
abstract class VideoQuality with _$VideoQuality {
  /// Creates a new [VideoQuality] instance.
  const factory VideoQuality({
    /// Identifier for this file, which can be used to download or reuse the file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Video width
    required int width,

    /// Video height
    required int height,

    /// Codec that was used to encode the video, for example, “h264”,
    /// “h265”, or “av01”
    required String codec,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in
    /// interpreting it. But it has at most 52 significant bits, so a signed
    /// 64-bit integer or double-precision float type are safe for storing
    /// this value.
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _VideoQuality;

  /// Creates a [VideoQuality] object from JSON object.
  factory VideoQuality.fromJson(Map<String, dynamic> json) =>
      _$VideoQualityFromJson(json);
}
