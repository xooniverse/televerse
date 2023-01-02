part of passport;

abstract class PassportElementError {
  /// Error source
  final String source;

  /// The section of the user's Telegram Passport which has the error
  final PassportType type;

  const PassportElementError({
    required this.source,
    required this.type,
  });

  Map<String, dynamic> toJson() {
    return {
      'source': source,
      'type': type,
    };
  }
}
