import 'package:freezed_annotation/freezed_annotation.dart';
import 'message_entity.dart';

part 'text_quote.freezed.dart';
part 'text_quote.g.dart';

/// Contains information about the quoted part of a message that is replied to
/// by the given message.
@freezed
class TextQuote with _$TextQuote {
  /// Constructs a `TextQuote`.
  const factory TextQuote({
    /// Text of the quoted part of a message that is replied to by the given
    /// message.
    required String text,

    /// Special entities that appear in the quote. Currently, only bold, italic,
    /// underline, strikethrough, spoiler, and custom_emoji entities are kept in
    /// quotes.
    List<MessageEntity>? entities,

    /// Approximate quote position in the original message in UTF-16 code units
    /// as specified by the sender.
    required int position,

    /// True, if the quote was chosen manually by the message sender. Otherwise,
    /// the quote was added automatically by the server.
    @JsonKey(name: 'is_manual') bool? isManual,
  }) = _TextQuote;

  /// Creates a `TextQuote` object from a JSON object.
  factory TextQuote.fromJson(Map<String, dynamic> json) =>
      _$TextQuoteFromJson(json);
}
