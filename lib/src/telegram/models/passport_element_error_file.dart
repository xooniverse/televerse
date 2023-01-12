part of passport;

/// Represents an issue with a document scan. The error is considered resolved when the file with the document scan changes.
class PassportElementErrorFile extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded file hash
  final String fileHash;

  const PassportElementErrorFile({
    required String source,
    required PassportType type,
    required this.message,
    required this.fileHash,
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
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFile(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}
