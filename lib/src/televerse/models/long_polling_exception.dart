part of televerse.models;

/// HttpException is thrown when the long polling fails. This exception is thrown when the limit is invalid or the timeout is invalid.
class LongPollingException implements Exception {
  final String message;

  LongPollingException(this.message);

  @override
  String toString() => message;

  static LongPollingException get invalidLimit => LongPollingException(
        'Invalid limit. Limit must be between 1 and 100',
      );

  static LongPollingException get invalidTimeout => LongPollingException(
        'Invalid timeout. Timeout cannot be greater than ${LongPolling.maxTimeout}',
      );

  static LongPollingException get alreadyPolling => LongPollingException(
        'Already polling. You cannot start another polling when another polling is working.',
      );
}
