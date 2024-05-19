part of 'models.dart';

/// Represents an issue with a document scan. The error is considered resolved when the file with the document scan changes.
class PassportElementErrorFile extends PassportElementError {
  /// Error message
  final String message;

  /// Base64-encoded file hash
  final String fileHash;

  /// Constructs a [PassportElementErrorFile] object
  const PassportElementErrorFile({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHash,
  });

  /// Creates a [PassportElementErrorFile] object from JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hash': fileHash,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [PassportElementErrorFile] object from JSON object
  factory PassportElementErrorFile.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFile(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHash: json['file_hash']!,
    );
  }
}