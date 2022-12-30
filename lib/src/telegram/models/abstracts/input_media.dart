part of models;

/// This object represents the content of a media message to be sent. It should be one of
/// - InputMediaAnimation
/// - InputMediaDocument
/// - InputMediaAudio
/// - InputMediaPhoto
/// - InputMediaVideo.
abstract class InputMedia {
  /// Type of the result.
  InputMediaType get type;

  /// File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended),
  /// pass an HTTP URL for Telegram to get a file from the Internet, or pass "attach://<file_attach_name>"
  /// to upload a new one using multipart/form-data under <file_attach_name> name.
  ///
  /// [More info on Sending Files »](https://core.telegram.org/bots/api#sending-files).
  final String media;

  const InputMedia({
    required this.media,
  });

  Map<String, dynamic> toJson();
}
