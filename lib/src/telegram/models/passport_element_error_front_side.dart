part of passport;

/// Represents an issue with the front side of a document. The error is considered resolved when the file with the front side of the document changes.
class PassportElementErrorFrontSide extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded hash of the file with the front side of the document
  final String fileHash;

  /// Constructs a [PassportElementErrorFrontSide] object
  const PassportElementErrorFrontSide({
    required String source,
    required PassportType type,
    required this.message,
    required this.fileHash,
  }) : super(
          source: source,
          type: type,
        );

  /// Converts a [PassportElementErrorFrontSide] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorFrontSide] object from JSON object
  factory PassportElementErrorFrontSide.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFrontSide(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}
