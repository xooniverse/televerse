part of models;

/// Represents a [ReplyMarkup] that can be used to send a message with custom keyboard, instructions to hide keyboard or to force a reply from the user.
abstract class ReplyMarkup {
  /// Creates a new [ReplyMarkup] object.
  const ReplyMarkup();

  /// Converts a [ReplyMarkup] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
