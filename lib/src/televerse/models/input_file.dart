part of televerse.models;

class InputFile {
  /// Unique identifier for this file
  final String? fileId;

  /// File path. Use either this field or fileId to specify a file.
  final io.File? file;

  /// URL of the file to be sent. Use either this field or fileId to specify a file.
  final Uri? url;

  InputFile({
    this.fileId,
    this.file,
    this.url,
  }) {
    if (fileId == null && file == null && url == null) {
      throw Exception(
        'InputFile must have a value. Use either fileId, file, or url.\n\nYou can use [InputFile.fromFileId], [InputFile.fromFile], or [InputFile.fromUrl] to create an InputFile.',
      );
    }
  }

  factory InputFile.fromFile(io.File file) => InputFile(file: file);

  factory InputFile.fromUrl(String url) => InputFile(url: Uri.parse(url));

  factory InputFile.fromFileId(String fileId) => InputFile(fileId: fileId);

  InputFileType get type {
    if (fileId != null) {
      return InputFileType.fileId;
    } else if (file != null) {
      return InputFileType.file;
    } else if (url != null) {
      return InputFileType.url;
    } else {
      throw Exception('InputFile must have a value');
    }
  }

  String toJson() {
    switch (type) {
      case InputFileType.fileId:
        return fileId!;
      case InputFileType.file:
        return file!.path;
      case InputFileType.url:
        return url!.toString();
    }
  }
}
