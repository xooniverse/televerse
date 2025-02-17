import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';
import 'chat.dart';

part 'poll_answer.freezed.dart';
part 'poll_answer.g.dart';

/// This object represents an answer of a user in a non-anonymous poll.
@freezed
class PollAnswer with _$PollAnswer {
  /// Constructs a [PollAnswer] object
  const factory PollAnswer({
    /// Unique poll identifier
    @JsonKey(name: 'poll_id') required String pollId,

    /// The user, who changed the answer to the poll
    User? user,

    /// 0-based identifiers of answer options, chosen by the user. May be empty
    /// if the user retracted their vote.
    @JsonKey(name: 'option_ids') required List<int> optionIds,

    /// Optional. The chat that changed the answer to the poll, if the voter is
    /// anonymous
    @JsonKey(name: 'voter_chat') Chat? voterChat,
  }) = _PollAnswer;

  /// Creates a [PollAnswer] object from JSON object
  factory PollAnswer.fromJson(Map<String, dynamic> json) =>
      _$PollAnswerFromJson(json);
}
