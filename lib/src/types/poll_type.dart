part of types;

/// This object contains information about a poll. Currently supported poll types are `regular` and `quiz`.
enum PollType {
  /// Regular poll
  regular("regular"),

  /// Quiz poll
  quiz("quiz");

  final String type;
  const PollType(this.type);

  factory PollType.fromJson(String type) {
    return PollType.values.firstWhere((e) => e.type == type);
  }

  String toJson() => type;
}
