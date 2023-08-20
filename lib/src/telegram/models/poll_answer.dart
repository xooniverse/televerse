part of models;

/// This object represents an answer of a user in a non-anonymous poll.
class PollAnswer {
  /// Unique poll identifier
  final String pollId;

  /// The user, who changed the answer to the poll
  final User? user;

  /// 0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.
  final List<int> optionIds;

  /// Optional. The chat that changed the answer to the poll, if the voter is anonymous
  final Chat? voterChat;

  /// Constructs a [PollAnswer] object
  const PollAnswer({
    required this.pollId,
    required this.user,
    required this.optionIds,
    this.voterChat,
  });

  /// Creates a [PollAnswer] object from JSON object
  factory PollAnswer.fromJson(Map<String, dynamic> json) {
    return PollAnswer(
      pollId: json['poll_id']!,
      user: User.fromJson(json['user']!),
      optionIds: List<int>.from(json['option_ids']! as List<dynamic>),
      voterChat: json['voter_chat'] == null
          ? null
          : Chat.fromJson(json['voter_chat']!),
    );
  }

  /// Converts a [PollAnswer] object to JSON object
  Map<String, dynamic> toJson() {
    return {
      'poll_id': pollId,
      'user': user?.toJson(),
      'option_ids': optionIds,
      'voter_chat': voterChat?.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
