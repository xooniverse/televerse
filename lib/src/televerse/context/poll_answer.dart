part of televerse.context;

/// This class is used to represent the context of a poll answer update.
class PollAnswerContext extends Context with MessageMixin {
  /// The [PollAnswer] instance.
  ///
  /// This represents the poll answer for which the context is created.
  PollAnswer get pollAnswer => update.pollAnswer!;

  /// Creates a new [PollAnswerContext] instance.
  PollAnswerContext(super._bot, {required Update update})
      : super(update: update);

  /// The poll ID
  String get pollId => pollAnswer.pollId;

  /// The user who answered the poll
  User get user => pollAnswer.user;

  /// The option IDs chosen by the user
  List<int> get optionIds => pollAnswer.optionIds;

  /// The Chat ID getter. This will actually return the ID of the user who answered the poll.
  ///
  /// That is all the [MessageMixin] methods such as [reply], [replyWithPhoto], etc. will send
  /// the message to the user who answered the poll.
  ///
  /// Note that the user has to be initiated the conversation with the bot for the bot to be able
  /// to send messages to the user.
  @override
  ID get id => ChatID(user.id);
}
