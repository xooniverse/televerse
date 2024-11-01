part of 'models.dart';

/// This object represents an inline keyboard button that copies specified text to the clipboard.
class CopyTextButton {
  /// The text to be copied to the clipboard; 1-256 characters
  final String text;

  /// This object represents an inline keyboard button that copies specified text to the clipboard.
  const CopyTextButton({
    required this.text,
  });

  /// Converts the instance to JSON parsable map
  Map<String, dynamic> toJson() {
    return {'text': text};
  }

  /// Creates the [CopyTextButton] from JSON map
  factory CopyTextButton.fromJson(Map<String, dynamic> map) {
    return CopyTextButton(text: map['text']);
  }
}
