import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/photo_size.dart';

part 'audio.freezed.dart';
part 'audio.g.dart';

/// This object represents an audio file to be treated as music by the Telegram
/// clients.
@freezed
class Audio with _$Audio {
  /// Creates a new [Audio] object.
  const factory Audio({
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

    /// Optional. Performer of the audio as defined by sender or by audio tags
    @JsonKey(name: 'performer') String? performer,

    /// Optional. Title of the audio as defined by sender or by audio tags
    @JsonKey(name: 'title') String? title,

    /// Optional. Original filename as defined by sender
    @JsonKey(name: 'file_name') String? fileName,

    /// Optional. MIME type of the file as defined by sender
    @JsonKey(name: 'mime_type') String? mimeType,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed 64-bit integer
    /// or double-precision float type are safe for storing this value.
    @JsonKey(name: 'file_size') int? fileSize,

    /// Optional. Thumbnail of the album cover to which the music file belongs
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,
  }) = _Audio;

  /// Creates a new [Audio] object from a JSON [Map].
  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);
}

/// Extension for Audio to add durationTime getter
extension AudioExt on Audio {
  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
