part of models;

/// Represents a [ReplyMarkup] that can be used to send a message with custom keyboard, instructions to hide keyboard or to force a reply from the user.
abstract class ReplyMarkup {
  const ReplyMarkup();
  Map<String, dynamic> toJson();
}
