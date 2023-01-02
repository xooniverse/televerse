part of types;

enum InputFileType {
  fileId("file_id"),
  file("file"),
  url("url");

  final String value;
  const InputFileType(this.value);
}
