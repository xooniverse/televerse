/// This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
class File {
  /// Unique identifier for this file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// File size, if known
  int fileSize;

  /// File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
  String filePath;

  File(
      {required this.fileId,
      required this.fileUniqueId,
      required this.fileSize,
      required this.filePath});

  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      fileSize: json['file_size'],
      filePath: json['file_path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'file_size': fileSize,
      'file_path': filePath,
    };
  }
}
