part of 'types.dart';

/// This object describes a sticker to be added to a sticker set.
enum InputStickerFormat {
  /// For a .WEBP or .PNG image
  static._('static'),

  /// HTML
  animated._('animated'),

  /// MarkdownV2
  video._('video');

  /// The value of this enum.
  final String value;

  /// Constructs a new [InputStickerFormat].
  const InputStickerFormat._(this.value);

  /// Constructs a new [InputStickerFormat] from a [String].
  factory InputStickerFormat.fromJson(String value) {
    switch (value) {
      case 'static':
        return static;
      case 'animated':
        return animated;
      case 'video':
        return video;
      default:
        throw TeleverseException(
          'Invalid InputStickerFormat value: $value',
          description: 'The given value does not match any InputStickerFormat.',
          type: TeleverseExceptionType.invalidParameter,
        );
    }
  }
}
