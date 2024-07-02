part of 'models.dart';

/// The paid media to send is a photo.
class InputPaidMediaPhoto implements InputPaidMedia {
  @override
  InputPaidMediaType get type => InputPaidMediaType.photo;

  /// File to send.
  /// Pass a file_id to send a file that exists on the Telegram servers (recommended),
  /// pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>”
  /// to upload a new one using multipart/form-data under <file_attach_name> name.
  @override
  final InputFile media;

  /// Constructs a [InputPaidMediaPhoto] object.
  const InputPaidMediaPhoto({
    required this.media,
  });

  /// Converts a [InputPaidMediaPhoto] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'media': media.getValue('media'),
    };
  }
}
