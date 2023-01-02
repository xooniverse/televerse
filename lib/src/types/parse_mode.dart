part of types;

enum ParseMode {
  markdown._('Markdown'),
  html._('HTML'),
  markdownV2._('MarkdownV2');

  final String value;
  const ParseMode._(this.value);

  factory ParseMode.fromJson(String value) {
    switch (value) {
      case 'Markdown':
        return markdown;
      case 'HTML':
        return html;
      case 'MarkdownV2':
        return markdownV2;
      default:
        throw Exception('Invalid ParseMode value: $value');
    }
  }
}
