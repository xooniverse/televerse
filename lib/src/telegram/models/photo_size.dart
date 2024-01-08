part of 'models.dart';

/// This object represents one size of a photo or a file / sticker thumbnail.
class PhotoSize {
  /// Identifier for this file, which can be used to download or reuse the file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// Photo width
  final int width;

  /// Photo height
  final int height;

  /// Optional. File size in bytes
  final int? fileSize;

  /// Constructs a [PhotoSize] object
  const PhotoSize({
    required this.fileId,
    required this.fileUniqueId,
    required this.width,
    required this.height,
    this.fileSize,
  });

  /// Creates a [PhotoSize] object from JSON object
  factory PhotoSize.fromJson(Map<String, dynamic> json) {
    return PhotoSize(
      fileId: json['file_id'],
      fileUniqueId: json['file_unique_id'],
      width: json['width'],
      height: json['height'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [PhotoSize] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'width': width,
      'height': height,
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }
}
