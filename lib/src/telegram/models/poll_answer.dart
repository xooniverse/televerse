part of models;

/// This object represents an answer of a user in a non-anonymous poll.
class PollAnswer {
  /// Unique poll identifier
  String pollId;

  /// The user, who changed the answer to the poll
  User user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
  List<int> optionIds;

  /// Constructs a [PollAnswer] object
  PollAnswer({
    required this.pollId,
    required this.user,
    required this.optionIds,
  });

  /// Creates a [PollAnswer] object from JSON object
  factory PollAnswer.fromJson(Map<String, dynamic> json) {
    return PollAnswer(
      pollId: json['poll_id']!,
      user: User.fromJson(json['user']!),
      optionIds: List<int>.from(json['option_ids']!),
    );
  }

  /// Converts a [PollAnswer] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'poll_id': pollId,
      'user': user.toJson(),
      'option_ids': optionIds,
    }..removeWhere((key, value) => value == null);
  }
}
