part of passport;

/// This object represents an error in the Telegram Passport element which was submitted that should be resolved by the user.
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
    }..removeWhere((key, value) => value == null);
  }
}
