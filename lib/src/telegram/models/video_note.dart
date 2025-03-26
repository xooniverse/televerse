// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/photo_size.dart';

part 'video_note.freezed.dart';
part 'video_note.g.dart';

/// This object represents a video message (available in Telegram apps as of
/// v.4.0).
@freezed
abstract class VideoNote with _$VideoNote {
  /// Constructs a [VideoNote] object
  const factory VideoNote({
    /// Identifier for this file, which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Video width and height (diameter of the video message) as defined by
    /// sender
    @JsonKey(name: 'length') required int length,

    /// Duration of the video in seconds as defined by sender
    ///
    /// A handy [Duration] getter is available as [durationTime]
    @JsonKey(name: 'duration') required int duration,

    /// Optional. Animation thumbnail as defined by sender
    @JsonKey(name: 'thumb') PhotoSize? thumbnail,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed 64-bit integer
    /// or double-precision float type are safe for storing this value.
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _VideoNote;

  /// Creates a [VideoNote] object from JSON object
  factory VideoNote.fromJson(Map<String, dynamic> json) =>
      _$VideoNoteFromJson(json);
}

/// Extension to add duration getter
extension VideoNoteExt on VideoNote {
  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
