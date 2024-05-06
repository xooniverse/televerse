part of 'models.dart';

/// This object contains information about one answer option in a poll.
class PollOption {
  /// Option text, 1-100 characters
  final String text;

  /// Number of users that voted for this option
  final int voterCount;

  /// Optional. Special entities that appear in the option text. Currently, only custom emoji entities are allowed in poll option texts
  final List<MessageEntity>? textEntities;

  /// Constructs a [PollOption] object
  const PollOption({
    required this.text,
    required this.voterCount,
    this.textEntities,
  });

  /// Creates a [PollOption] object from JSON object
  factory PollOption.fromJson(Map<String, dynamic> json) {
    return PollOption(
      text: json['text']!,
      voterCount: json['voter_count']!,
      textEntities: (json['text_entities'] as List<dynamic>?)
          ?.map((x) => MessageEntity.fromJson(x as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Converts a [PollOption] object to a JSON object
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'voter_count': voterCount,
      'text_entities': textEntities?.map((e) => e.toJson()).toList(),
    }..removeWhere(_nullFilter);
  }
}
