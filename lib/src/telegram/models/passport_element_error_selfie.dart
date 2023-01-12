part of passport;

/// Represents an issue with the selfie with a document. The error is considered resolved when the file with the selfie changes.
class PassportElementErrorSelfie extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded hash of the file with the selfie
  final String fileHash;

  const PassportElementErrorSelfie({
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

  factory PassportElementErrorSelfie.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorSelfie(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}
