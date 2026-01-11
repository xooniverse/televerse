import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents the type of a media to send.
/// Currently, the following 5 types are supported:
/// - [InputMediaType.animation] :For an animation file (GIF or H.264/MPEG-4 AVC video without sound) to send.
/// - [InputMediaType.audio] : For an audio file to send.
/// - [InputMediaType.document] :  For a general file to send.
/// - [InputMediaType.photo] : For a photo to send.
/// - [InputMediaType.video] : For a video file to send.
@JsonEnum()
enum InputMediaType {
  /// For an animation file (GIF or H.264/MPEG-4 AVC video without sound) to send.
  animation,

  /// For an audio file to send.
  audio,

  /// For a general file to send.
  document,

  /// For a photo to send.
  photo,

  /// For a video file to send.
  video,
}
