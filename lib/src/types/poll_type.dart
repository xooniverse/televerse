part of types;

/// This object contains information about a poll. Currently supported poll types are `regular` and `quiz`.
enum PollType {
  /// Regular poll
  regular("regular"),

  /// Quiz poll
  quiz("quiz");

  /// The value of this enum.
  final String type;

  /// Constructs a new [PollType].
  const PollType(this.type);

  /// Constructs a new [PollType] from a [String].
  factory PollType.fromJson(String type) {
    return PollType.values.firstWhere((e) => e.type == type);
  }

  /// Converts this [PollType] to a [String].
  String toJson() => type;
}
