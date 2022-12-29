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
}
