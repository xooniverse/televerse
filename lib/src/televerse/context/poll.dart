part of televerse.context;

/// This context is used when a [UpdateType.poll] event occurs.
class PollContext extends Context {
  /// The [Poll] instance.
  ///
  /// This represents the poll for which the context is created.
  Poll get poll => update.poll!;

  /// Creates a new [PollContext] instance.
  PollContext(super._bot, {required Update update}) : super(update: update);

  /// (DO NOT USE) - The Chat ID getter.
  @Deprecated("Poll Updates does not have a chat.")
  @override
  ID get id => throw TeleverseException(
        "Poll Updates does not have a chat.",
      );

  /// The poll type
  PollType get type => poll.type;

  /// The poll question
  String get question => poll.question;

  /// The poll options
  List<PollOption> get options => poll.options;

  /// The total voter count
  int get totalVoterCount => poll.totalVoterCount;

  /// Whether the poll is closed
  bool get isClosed => poll.isClosed;

  /// Whether the poll is anonymous
  bool get isAnonymous => poll.isAnonymous;

  /// The poll's correct option ID
  ///
  /// This is only available for [PollType.quiz] polls.
  /// For other polls, this will be `null`.
  int? get correctOptionID => poll.correctOptionId;

  /// The poll's explanation
  ///
  /// This is only available for [PollType.quiz] polls.
  /// For other polls, this will be `null`.
  String? get explanation => poll.explanation;

  /// Closing date of the poll
  DateTime? get closeDateTime => poll.closeDateTime;

  /// The poll's open period duration
  Duration? get openPeriod => poll.openPeriodDuration;
}
