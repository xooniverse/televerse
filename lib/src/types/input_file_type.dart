part of 'types.dart';

/// This object represents the type of a file to send.
/// Currently, the following 3 types are supported:
/// - [InputFileType.fileId] : For a file sent as a file_id
/// - [InputFileType.bytes] : For a file sent as a local file / bytes
/// - [InputFileType.url] : For a file sent as a url
///
/// Check out the [InputFile] class for more information.
enum InputFileType {
  /// For a file sent as a file_id
  fileId("file_id"),

  /// For a file sent as a url
  url("url"),

  /// For a file sent as bytes
  bytes("bytes");

  /// The value of this enum.
  final String value;

  /// Constructs a new [InputFileType].
  const InputFileType(this.value);
}
