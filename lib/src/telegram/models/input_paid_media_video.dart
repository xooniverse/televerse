part of 'models.dart';

/// The paid media to send is a video.
class InputPaidMediaVideo implements InputPaidMedia {
  @override
  InputPaidMediaType get type => InputPaidMediaType.video;

  /// File to send.
  /// Pass a file_id to send a file that exists on the Telegram servers (recommended),
  /// pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>”
  /// to upload a new one using multipart/form-data under <file_attach_name> name.
  @override
  final InputFile media;

  /// Optional. Thumbnail of the file sent; can be ignored if thumbnail generation for the file is supported server-side.
  final InputFile? thumbnail;

  /// Optional. Video width.
  final int? width;

  /// Optional. Video height.
  final int? height;

  /// Optional. Video duration in seconds.
  final int? duration;

  /// Optional. Pass True if the uploaded video is suitable for streaming.
  final bool? supportsStreaming;

  /// Optional. Timestamp in seconds from which the video will play in the message
  final int? startTimestamp;

  /// Optional. Cover for the video in the message.
  final InputFile? cover;

  /// Constructs a [InputPaidMediaVideo] object.
  const InputPaidMediaVideo({
    required this.media,
    this.thumbnail,
    this.width,
    this.height,
    this.duration,
    this.supportsStreaming,
    this.startTimestamp,
    this.cover,
  });

  /// Converts a [InputPaidMediaVideo] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'media': media.getValue('media'),
      'thumbnail': thumbnail?.getValue('thumbnail'),
      'width': width,
      'height': height,
      'duration': duration,
      'supports_streaming': supportsStreaming,
      'start_timestamp': startTimestamp,
      'cover': cover?.getValue('cover'),
    }..removeWhere(_nullFilter);
  }

  /// Converts a [InputPaidMediaVideo] object to JSON.
  @override
  Map<String, dynamic> getValue([String? field, String? thumb]) {
    return {
      'type': type.value,
      'media': media.getValue(field),
      'thumbnail': thumbnail?.getValue(thumb),
      'width': width,
      'height': height,
      'duration': duration,
      'supports_streaming': supportsStreaming,
      'start_timestamp': startTimestamp,
      'cover': cover?.getValue('${field}_cover'),
    }..removeWhere(_nullFilter);
  }
}
