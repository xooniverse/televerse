// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message_entity.dart';
import 'package:televerse/src/telegram/models/poll_option.dart';
import 'package:televerse/televerse.dart';

part 'poll.freezed.dart';
part 'poll.g.dart';

/// This object contains information about a poll.
@freezed
class Poll with _$Poll {
  /// Constructs a [Poll] object
  const factory Poll({
    /// Unique poll identifier
    @JsonKey(name: 'id') required String id,

    /// Poll question, 1-300 characters
    @JsonKey(name: 'question') required String question,

    /// List of poll options
    @JsonKey(name: 'options') required List<PollOption> options,

    /// Total number of users that voted in the poll
    @JsonKey(name: 'total_voter_count') required int totalVoterCount,

    /// True, if the poll is closed
    @JsonKey(name: 'is_closed') required bool isClosed,

    /// True, if the poll is anonymous
    @JsonKey(name: 'is_anonymous') required bool isAnonymous,

    /// Poll type, currently can be "regular" or "quiz"
    @JsonKey(name: 'type') required PollType type,

    /// True, if the poll allows multiple answers
    @JsonKey(name: 'allows_multiple_answers')
    required bool allowsMultipleAnswers,

    /// Optional. 0-based identifier of the correct answer option. Available
    /// only for polls in the quiz mode, which are closed, or was sent (not
    /// forwarded) by the bot or to the private chat with the bot.
    @JsonKey(name: 'correct_option_id') int? correctOptionId,

    /// Optional. Text that is shown when a user chooses an incorrect answer or
    /// taps on the lamp icon in a quiz-style poll, 0-200 characters
    @JsonKey(name: 'explanation') String? explanation,

    /// Optional. Special entities like usernames, URLs, bot commands, etc. that
    /// appear in the explanation
    @JsonKey(name: 'explanation_entities')
    List<MessageEntity>? explanationEntities,

    /// Optional. Amount of time in seconds the poll will be active after
    /// creation
    ///
    /// A handy [Duration] object is available as [openPeriodDuration] getter
    @JsonKey(name: 'open_period') int? openPeriod,

    /// Optional. Point in time (Unix timestamp) when the poll will be
    /// automatically closed
    ///
    /// A handy [DateTime] object is available as [closeDateTime] getter
    @JsonKey(name: 'close_date') int? closeDate,

    /// Optional. Special entities that appear in the question. Currently, only
    /// custom emoji entities are allowed in poll questions
    @JsonKey(name: 'question_entities') List<MessageEntity>? questionEntities,
  }) = _Poll;

  /// Creates a [Poll] object from JSON object
  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);
}

/// Extension methods for [Poll]
extension PollExtension on Poll {
  /// The [Duration] object for [openPeriod]
  Duration? get openPeriodDuration =>
      openPeriod == null ? null : Duration(seconds: openPeriod!);

  /// The [DateTime] object for [closeDate]
  DateTime? get closeDateTime => closeDate?.toDateTime();
}
