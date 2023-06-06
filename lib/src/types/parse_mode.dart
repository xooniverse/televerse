part of types;

/// This object represents the [ParseMode] of a message. See the [Telegram API docs](https://core.telegram.org/bots/api#formatting-options) for more information.
enum ParseMode {
  /// Markdown
  markdown._('Markdown'),

  /// HTML
  html._('HTML'),

  /// MarkdownV2
  markdownV2._('MarkdownV2');

  /// The value of this enum.
  final String value;

  /// Constructs a new [ParseMode].
  const ParseMode._(this.value);

  /// Constructs a new [ParseMode] from a [String].
  factory ParseMode.fromJson(String value) {
    switch (value) {
      case 'Markdown':
        return markdown;
      case 'HTML':
        return html;
      case 'MarkdownV2':
        return markdownV2;
      default:
        throw TeleverseException('Invalid ParseMode value: $value');
    }
  }
}
