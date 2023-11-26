part of 'context.dart';

/// This class is used to represent the context of a chosen inline query update.
///
/// This context is created when a user selects an inline query result.
class ChosenInlineResultContext extends Context with MessageMixin {
  /// The [ChosenInlineResult] instance.
  ///
  /// This represents the chosen inline query for which the context is created.
  ChosenInlineResult get chosenInlineResult => update.chosenInlineResult!;

  /// Creates a new [ChosenInlineResultContext] instance.
  ChosenInlineResultContext(super._bot, {required super.update});

  /// The user who chose the inline query.
  User get user => chosenInlineResult.from;

  /// The query of the chosen inline query.
  String get query => chosenInlineResult.query;

  /// The location of the user who chose the inline query.
  Location? get location => chosenInlineResult.location;

  /// The inline message ID of the chosen inline query.
  String? get inlineMessageId => chosenInlineResult.inlineMessageId;

  /// The Chat ID getter. This will actually return the ID of the user who chose the inline query.
  ///
  /// That is all the [MessageMixin] methods such as [reply], [replyWithPhoto], etc. will send
  /// the message to the user who chose the inline query.
  ///
  /// Note that the user has to be initiated the conversation with the bot for the bot to be able
  /// to send messages to the user.
  @override
  ID get id => ChatID(user.id);
}
