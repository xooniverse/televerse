part of 'models.dart';

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

  /// Mime Type of the File
  final String? mimeType;

  /// Additional headers
  final Map<String, List<String>>? headers;

  /// Private constructor for [InputFile].
  const InputFile._({
    this.fileId,
    this.url,
    this.bytes,
    this.name,
    this.headers,
    this.mimeType,
  });

  /// Creates a new [InputFile] using a local file.
  factory InputFile.fromFile(
    io.File file, {
    String? name,
    String? mimeType,
    Map<String, List<String>>? headers,
  }) {
    if (!file.existsSync()) {
      throw TeleverseException.fileDoesNotExist(file.path);
    }
    return InputFile._(
      bytes: file.readAsBytesSync(),
      name: name ?? file.filename,
      mimeType: mimeType,
      headers: headers,
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
  factory InputFile.fromBytes(
    Uint8List bytes, {
    String? name,
    String? mimeType,
    Map<String, List<String>>? headers,
  }) =>
      InputFile._(
        bytes: bytes,
        name: name,
        mimeType: mimeType,
        headers: headers,
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
      throw TeleverseException(
        'InputFile must have a value',
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }

  /// Returns the file name of the [InputFile].
  String getValue() {
    switch (type) {
      case InputFileType.fileId:
        return fileId!;
      case InputFileType.url:
        return url!.toString();
      case InputFileType.bytes:
        return "attach://file$hashCode";
    }
  }

  /// Returns the file attach name
  String getAttachName() {
    return "file$hashCode";
  }

  /// Get bytes of either the file or the bytes itself.
  Uint8List getBytes() {
    if (bytes != null) {
      return bytes!;
    } else {
      throw TeleverseException(
        'InputFile must be created with either [InputFile.fromBytes] or [InputFile.fromFile]',
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }

  @override
  bool operator ==(covariant InputFile other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other.name == name &&
        other.fileId == fileId &&
        other.url == url &&
        other.bytes == bytes &&
        other.mimeType == mimeType &&
        mapEquals(other.headers, headers);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        fileId.hashCode ^
        url.hashCode ^
        bytes.hashCode ^
        mimeType.hashCode ^
        headers.hashCode;
  }
}

/// Converter for InputFile
class InputFileConverter implements JsonConverter<InputFile, String> {
  /// Constructs the InputFile converter
  const InputFileConverter();

  /// Placeholder - do not use.
  @override
  InputFile fromJson(String json) {
    throw Exception("Can't do fromJson on InputFile");
  }

  /// Gets the value of the InputFile
  @override
  String toJson(InputFile data) {
    return data.getValue();
  }
}
