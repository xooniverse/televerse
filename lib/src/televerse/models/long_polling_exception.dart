part of televerse.models;

/// HttpException is thrown when the long polling fails. This exception is thrown when the limit is invalid or the timeout is invalid.
class LongPollingException implements Exception {
  /// The error message.
  final String message;

  /// Constructs a new [LongPollingException].
  LongPollingException(this.message);

  /// Returns a string representation of the exception.
  @override
  String toString() => message;

  /// Returns a list of invalid limit exceptions.
  static LongPollingException get invalidLimit => LongPollingException(
        'Invalid limit. Limit must be between 1 and 100',
      );

  /// Returns a list of invalid timeout exceptions.
  static LongPollingException get invalidTimeout => LongPollingException(
        'Invalid timeout. Timeout cannot be greater than ${LongPolling.maxTimeout}',
      );

  /// Returns a list of already polling exceptions.
  static LongPollingException get alreadyPolling => LongPollingException(
        'Already polling. You cannot start another polling when another polling is working.',
      );
}
