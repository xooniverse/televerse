part of models;

/// This object represents a video message (available in Telegram apps as of v.4.0).
class VideoNote {
  /// Identifier for this file, which can be used to download or reuse the file
  String fileId;

  /// Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
  String fileUniqueId;

  /// Video width and height (diameter of the video message) as defined by sender
  int length;

  /// Duration of the video in seconds as defined by sender
  ///
  /// A handy [Duration] getter is available as [durationTime]
  int duration;

  /// Optional. Animation thumbnail as defined by sender
  PhotoSize? thumb;

  /// Optional. File size in bytes. It can be bigger than 2^31 and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this value.
  int? fileSize;

  VideoNote({
    required this.fileId,
    required this.fileUniqueId,
    required this.length,
    required this.duration,
    this.thumb,
    this.fileSize,
  });

  factory VideoNote.fromJson(Map<String, dynamic> json) {
    return VideoNote(
      fileId: json['file_id']!,
      fileUniqueId: json['file_unique_id']!,
      length: json['length']!,
      duration: json['duration']!,
      thumb: json['thumb'] != null ? PhotoSize.fromJson(json['thumb']!) : null,
      fileSize: json['file_size'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'file_id': fileId,
      'file_unique_id': fileUniqueId,
      'length': length,
      'duration': duration,
      'thumb': thumb?.toJson(),
      'file_size': fileSize,
    }..removeWhere((key, value) => value == null);
  }

  /// Duration of the video as [Duration] object.
  Duration get durationTime => Duration(seconds: duration);
}
