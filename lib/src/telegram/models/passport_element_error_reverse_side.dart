part of passport;

/// Represents an issue with the reverse side of a document. The error is considered resolved when the file with reverse side of the document changes.
class PassportElementErrorReverseSide extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded hash of the file with the reverse side of the document
  final String fileHash;

  /// Constructs a [PassportElementErrorReverseSide] object
  const PassportElementErrorReverseSide({
    required String source,
    required PassportType type,
    required this.message,
    required this.fileHash,
  }) : super(
          source: source,
          type: type,
        );

  /// Converts a [PassportElementErrorReverseSide] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a [PassportElementErrorReverseSide] object from JSON object
  factory PassportElementErrorReverseSide.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorReverseSide(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}
