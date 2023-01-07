part of types;

/// This object represents the type of a file to send.
/// Currently, the following 3 types are supported:
/// - [InputFileType.fileId]: For a file sent as a file_id
/// - [InputFileType.file]: For a file sent as a file
/// - [InputFileType.url]: For a file sent as a url
///
/// Check out the [InputFile] class for more information.
enum InputFileType {
  fileId("file_id"),
  file("file"),
  url("url");

  final String value;
  const InputFileType(this.value);
}
