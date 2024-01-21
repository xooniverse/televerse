part of 'models.dart';

/// This class is used to represent a file to be sent.
///
/// Currently we have three ways to send a file:
/// 1. Use the file id.
/// 2. Use the file path.
/// 3. Use the file url.
///
/// The [InputFile] class has three separate constructors for each of these methods.
/// - [InputFile.fromFileId]
/// - [InputFile.fromFile]
/// - [InputFile.fromUrl]
///
/// For example, if you want to send a file using the file id, you can use the [InputFile.fromFileId] constructor.
/// ```dart
/// // Simply create an InputFile using the file id.
/// var photo = InputFile.fromFileId('file_id');
///
/// // Then pass the InputFile to the method that requires a file.
/// bot.sendPhoto(chatId, photo);
/// ```
class InputFile {
  /// The name of the file to be sent.
  ///
  /// Include the file extension for the file name.
  final String? name;

  /// Unique identifier for this file
  final String? fileId;

  /// URL of the file to be sent. Use either this field or fileId to specify a file.
  final Uri? url;

  /// The bytes of the file.
  final Uint8List? bytes;

  /// Private constructor for [InputFile].
  const InputFile._({
    this.fileId,
    this.url,
    this.bytes,
    this.name,
  });

  /// Creates a new [InputFile] using a local file.
  factory InputFile.fromFile(
    io.File file, {
    String? name,
  }) {
    if (!file.existsSync()) {
      throw TeleverseException.fileDoesNotExist(file.path);
    }
    return InputFile._(
      bytes: file.readAsBytesSync(),
      name: name ?? file.filename,
    );
  }

  /// Creates a new [InputFile] using the file url.
  factory InputFile.fromUrl(String url, {String? name}) => InputFile._(
        url: Uri.parse(url),
        name: name,
      );

  /// Creates a new [InputFile] using the File ID on the Telegram Servers.
  factory InputFile.fromFileId(String fileId, {String? name}) => InputFile._(
        fileId: fileId,
        name: name,
      );

  /// Creates a new [InputFile] using the bytes of the file.
  factory InputFile.fromBytes(Uint8List bytes, {String? name}) => InputFile._(
        bytes: bytes,
        name: name,
      );

  /// Returns the type of the [InputFile].
  InputFileType get type {
    if (fileId != null) {
      return InputFileType.fileId;
    } else if (url != null) {
      return InputFileType.url;
    } else if (bytes != null) {
      return InputFileType.bytes;
    } else {
      throw TeleverseException('InputFile must have a value');
    }
  }

  /// Returns the file name of the [InputFile].
  String getValue([String? field]) {
    switch (type) {
      case InputFileType.fileId:
        return fileId!;
      case InputFileType.url:
        return url!.toString();
      case InputFileType.bytes:
        return "attach://${field ?? 'file'}";
    }
  }

  /// Get bytes of either the file or the bytes itself.
  Uint8List getBytes() {
    if (bytes != null) {
      return bytes!;
    } else {
      throw TeleverseException(
        'InputFile must be created with either [InputFile.fromBytes] or [InputFile.fromFile]',
      );
    }
  }
}
