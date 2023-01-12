part of passport;

/// Represents an issue with the translated version of a document. The error is considered resolved when a file with the document translation change.
class PassportElementErrorTranslationFiles extends PassportElementError {
  /// Error message
  final String message;

  /// List of base64-encoded file hashes
  final List<String> fileHashes;

  const PassportElementErrorTranslationFiles({
    required String source,
    required PassportType type,
    required this.message,
    required this.fileHashes,
  }) : super(
          source: source,
          type: type,
        );

  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hashes': fileHashes,
    }..removeWhere((key, value) => value == null);
  }

  factory PassportElementErrorTranslationFiles.fromJson(
      Map<String, dynamic> json) {
    return PassportElementErrorTranslationFiles(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHashes: List<String>.from(json['file_hashes']!),
    );
  }
}
