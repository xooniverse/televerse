part of 'models.dart';

/// Contains information about the quoted part of a message that is replied to by the given message.
class TextQuote {
  /// Text of the quoted part of a message that is replied to by the given message.
  final String text;

  /// Special entities that appear in the quote. Currently, only bold, italic, underline, strikethrough, spoiler, and custom_emoji entities are kept in quotes.
  final List<MessageEntity>? entities;

  /// Approximate quote position in the original message in UTF-16 code units as specified by the sender.
  final int position;

  /// True, if the quote was chosen manually by the message sender. Otherwise, the quote was added automatically by the server.
  final bool? isManual;

  /// Constructs a `TextQuote`.
  const TextQuote({
    required this.text,
    this.entities,
    required this.position,
    this.isManual,
  });

  /// Converts the `TextQuote` object to a JSON object.
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'entities': entities?.map((e) => e.toJson()).toList(),
      'position': position,
      'is_manual': isManual,
    }..removeWhere(_nullFilter);
  }

  /// Creates a `TextQuote` object from a JSON object.
  factory TextQuote.fromJson(Map<String, dynamic> json) {
    return TextQuote(
      text: json['text'],
      entities: json['entities'] != null
          ? (json['entities'] as List)
              .map((e) => MessageEntity.fromJson(e))
              .toList()
          : null,
      position: json['position'],
      isManual: json['is_manual'],
    );
  }
}
