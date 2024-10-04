part of 'models.dart';

/// The File to be uploaded.
class LocalFile {
  /// The file name of the file.
  final String? fileName;

  /// The actual bytes of the file.
  final Uint8List bytes;

  /// MIME content type for the file
  final String? contentType;

  /// Additional headers
  final Map<String, List<String>>? headers;

  /// Constructs the Local File with the given bytes, and file name.
  const LocalFile(
    this.bytes, {
    this.fileName,
    this.contentType,
    this.headers,
  });
}
