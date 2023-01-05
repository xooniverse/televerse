part of models;

/// This object contains information about one answer option in a poll.
class PollOption {
  /// Option text, 1-100 characters
  String text;

  /// Number of users that voted for this option
  int voterCount;

  PollOption({
    required this.text,
    required this.voterCount,
  });

  factory PollOption.fromJson(Map<String, dynamic> json) {
    return PollOption(
      text: json['text']!,
      voterCount: json['voter_count']!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'voter_count': voterCount,
    };
  }
}
