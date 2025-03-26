// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo_size.dart';

part 'document.freezed.dart';
part 'document.g.dart';

/// This object represents a general file (as opposed to photos, voice messages
/// and audio files).
@freezed
abstract class Document with _$Document {
  /// Creates a general file
  ///
  /// [fileId] Identifier for this file, which can be used to download or reuse
  /// the file [fileUniqueId] Unique identifier for this file [thumbnail]
  /// Thumbnail of the album cover to which the music file belongs [fileName]
  /// Original filename as defined by sender [mimeType] MIME type of the file as
  /// defined by sender [fileSize] File size in bytes
  const factory Document({
    /// Identifier for this file, which can be used to download or reuse the
    /// file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// Optional. Thumbnail of the album cover to which the music file belongs
    @JsonKey(name: 'thumbnail') PhotoSize? thumbnail,

    /// Optional. Original filename as defined by sender
    @JsonKey(name: 'file_name') String? fileName,

    /// Optional. MIME type of the file as defined by sender
    @JsonKey(name: 'mime_type') String? mimeType,

    /// Optional. File size in bytes. It can be bigger than 2^31 and some
    /// programming languages may have difficulty/silent defects in interpreting
    /// it. But it has at most 52 significant bits, so a signed 64-bit integer
    /// or double-precision float type are safe for storing this value.
    @JsonKey(name: 'file_size') int? fileSize,
  }) = _Document;

  /// Creates a [Document] from a JSON map
  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
