// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'passport_file.freezed.dart';
part 'passport_file.g.dart';

/// This object represents a file uploaded to Telegram Passport. Currently, all
/// Telegram Passport files are in JPEG format when decrypted and don't exceed
/// 10MB.
@freezed
abstract class PassportFile with _$PassportFile {
  /// Constructs a [PassportFile] object
  const factory PassportFile({
    /// Unique identifier for this file
    @JsonKey(name: 'file_id') required String fileId,

    /// Unique identifier for this file, which is supposed to be the same over
    /// time and for different bots. Can't be used to download or reuse the
    /// file.
    @JsonKey(name: 'file_unique_id') required String fileUniqueId,

    /// File size
    @JsonKey(name: 'file_size') required int fileSize,

    /// Unix time when the file was uploaded
    ///
    /// You can get the [DateTime] object as `fileDateTime` getter.
    @JsonKey(name: 'file_date') required int fileDate,
  }) = _PassportFile;

  /// Creates a [PassportFile] object from JSON object
  factory PassportFile.fromJson(Map<String, dynamic> json) =>
      _$PassportFileFromJson(json);
}

/// Extension on `PassportFile`
extension PassportFileExt on PassportFile {
  /// Returns the [DateTime] object of [fileDate].
  DateTime get fileDateTime => fileDate.toDateTime();
}
