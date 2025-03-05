// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice.freezed.dart';
part 'voice.g.dart';

/// This object represents a voice note.
@freezed
class Voice with _$Voice {
  /// Creates a voice note
  ///
  /// - [fileId] Identifier for this file, which can be used to download or
  ///   reuse the file
  /// - [fileUniqueId] Unique identifier for this file
  /// - [duration] Duration of the video in seconds as defined by sender
  /// - [mimeType] MIME type of the file as defined by sender
  /// - [fileSize] File size in bytes
  const factory Voice({
    /// Identifier for this file, which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Duration of the video in seconds as defined by sender
    ///
    /// A handy [Duration] getter is available as [durationTime]
    @JsonKey(name: 'duration') required int duration,

    /// Optional. MIME type of the file as defined by sender
    @JsonKey(name: 'mime_type') String? mimeType,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed 64-bit integer
    /// or double-precision float type are safe for storing this value.
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _Voice;

  /// Creates a [Voice] from a JSON map
  factory Voice.fromJson(Map<String, dynamic> json) => _$VoiceFromJson(json);
}

/// Extensions for the Voice model.
extension VoiceDurationExt on Voice {
  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
