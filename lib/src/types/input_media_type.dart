part of types;

/// This object represents the type of a media to send.
/// Currently, the following 5 types are supported:
/// - [InputMediaType.animation]: For a photo to send.
/// - [InputMediaType.audio]: For an animation file (GIF or H.264/MPEG-4 AVC video without sound) to send.
/// - [InputMediaType.document]: For an audio file to send.
/// - [InputMediaType.photo]: For a general file to send.
/// - [InputMediaType.video]: For a video file to send.
enum InputMediaType {
  animation("animation"),
  audio("audio"),
  document("document"),
  photo("photo"),
  video("video");

  final String value;
  const InputMediaType(this.value);
}
