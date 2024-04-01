part of 'models.dart';

/// This object represents a voice note.
class Voice {
  /// Identifier for this file, which can be used to download or reuse the file
  final String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  final String fileUniqueId;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  final int duration;

  /// Optional. MIME type of the file as defined by sender
  final String? mimeType;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  final int? fileSize;

  /// Constructs a [Voice] object
  const Voice({
    required this.fileId,
    required this.fileUniqueId,
    required this.duration,
    this.mimeType,
    this.fileSize,
  });

  /// Creates a [Voice] object from JSON object
  factory Voice.fromJson(Map<String, dynamic> json) {
    return Voice(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      duration: json['duration']!,
      mimeType: json['mime_type'],
      fileSize: json['file_size'],
    );
  }

  /// Converts a [Voice] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'duration': duration,
      'mime_type': mimeType,
      'file_size': fileSize,
    }..removeWhere(_nullFilter);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
