part of 'models.dart';

/// This object represents a file uploaded to Telegram Passport. Currently all Telegram Passport files are in JPEG format when decrypted and don't exceed 10MB.
class PassportFile {
  /// Unique identifier for this file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// File size
  final int fileSize;

  /// Unix time when the file was uploaded
  ///
  /// You can get the [DateTime] object as [fileDateTime] getter.
  final int fileDate;

  /// Constructs a [PassportFile] object
  const PassportFile({
    required this.fileId,
    required this.fileUniqueId,
    required this.fileSize,
    required this.fileDate,
  });

  /// Creates a [PassportFile] object from JSON object
  factory PassportFile.fromJson(Map<String, dynamic> json) {
    return PassportFile(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      fileSize: json['file_size']!,
      fileDate: json['file_date']!,
    );
  }

  /// Converts a [PassportFile] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'file_size': fileSize,
      'file_date': fileDate,
    }..removeWhere(_nullFilter);
  }

  /// Returns the [DateTime] object of [fileDate].
  /// [DateTime] object of [fileDate].
  DateTime get fileDateTime => fileDate.toDateTime();
}
