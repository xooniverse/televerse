part of 'models.dart';

/// Represents an issue with one of the files that constitute the translation of a document. The error is considered resolved when the file changes.
class PassportElementErrorTranslationFile extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded file hash
  final String fileHash;

  /// Constructs a [PassportElementErrorTranslationFile] object
  const PassportElementErrorTranslationFile({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Converts a [PassportElementErrorTranslationFile] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [PassportElementErrorTranslationFile] object from a JSON object
  factory PassportElementErrorTranslationFile.fromJson(
    Map<String, dynamic> json,
  ) {
    return PassportElementErrorTranslationFile(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}
