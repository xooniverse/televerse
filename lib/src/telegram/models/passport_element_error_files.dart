part of 'models.dart';

/// Represents an issue with a list of scans. The error is considered resolved when the list of files containing the scans changes.
class PassportElementErrorFiles extends PassportElementError {
  /// Error message
  final String message;

  /// List of base64-encoded file hashes
  final List<String> fileHashes;

  /// Constructs a [PassportElementErrorFiles] object
  const PassportElementErrorFiles({
    required super.source,
    required super.type,
    required this.message,
    required this.fileHashes,
  });

  /// Converts a [PassportElementErrorFiles] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
      'message': message,
      'file_hashes': fileHashes,
    }..removeWhere(_nullFilter);
  }

  /// Creates a [PassportElementErrorFiles] object from JSON object
  factory PassportElementErrorFiles.fromJson(Map<String, dynamic> json) {
    return PassportElementErrorFiles(
      source: json['source']!,
      type: PassportType.fromJson(json['type']!),
      message: json['message']!,
      fileHashes: List<String>.from(json['file_hashes']! as List<dynamic>),
    );
  }
}