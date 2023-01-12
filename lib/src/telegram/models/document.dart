part of models;

/// This object represents a general file (as opposed to photos, voice messages and audio files).
class Document {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Optional. Thumbnail of the album cover to which the music file belongs
  PhotoSize? thumb;

  /// Optional. Original filename as defined by sender
  String? fileName;

  /// Optional. MIME type of the file as defined by sender
  String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  Document({
    required this.fileId,
    required this.fileUniqueId,
    this.thumb,
    this.fileName,
    this.mimeType,
    this.fileSize,
  });

  factory Document.fromJson(Map<String, dynamic> json) {
    return Document(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      thumb: json['thumb'] != null ? PhotoSize.fromJson(json['thumb']!) : null,
      fileName: json['file_name'],
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'thumb': thumb?.toJson(),
      'file_name': fileName,
      'mime_type': mimeType,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }
}
