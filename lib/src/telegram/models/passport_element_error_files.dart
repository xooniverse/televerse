part of passport;

/// Represents an issue with a list of scans. The error is considered resolved when the list of files containing the scans changes.
class PassportElementErrorFiles extends PassportElementError {
  /// Error message
  final String message;

  /// List of base64-encoded file hashes
  final List<String> fileHashes;

  const PassportElementErrorFiles({
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

  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFiles(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHashes: List<String>.from(json['file_hashes']!),
    );
  }
}
