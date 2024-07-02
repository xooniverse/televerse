part of '../models.dart';

/// This object describes the paid media to be sent.
/// Currently, it can be one of [InputPaidMediaPhoto] or [InputPaidMediaVideo].
abstract class InputPaidMedia {
  /// Type of the media.
  InputPaidMediaType get type;

  /// File to send.
  /// Pass a file_id to send a file that exists on the Telegram servers (recommended),
  /// pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>”
  /// to upload a new one using multipart/form-data under <file_attach_name> name.
  final InputFile media;

  /// Creates a new [InputPaidMedia] object from JSON.
  const InputPaidMedia(this.media);

  /// Converts an [InputPaidMedia] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
