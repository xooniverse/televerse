part of televerse.models;

/// HttpException is thrown when the long polling fails. This exception is thrown when the limit is invalid or the timeout is invalid.
class LongPollingException implements Exception {
  /// The error code
  final int? code;

  /// The error message.
  final String message;

  /// Stack trace of the exception.
  final StackTrace stackTrace;

  /// Constructs a new [LongPollingException].
  LongPollingException(
    this.message, {
    this.code,
    this.parameters,
    StackTrace? stackTrace,
  }) : stackTrace = stackTrace ?? StackTrace.current;

  /// Returns a string representation of the exception.
  @override
  String toString() => "LongPollingException [$code]: $message";

  /// Returns invalid limit exceptions.
  static LongPollingException get invalidLimit => LongPollingException(
        'Invalid limit. Limit must be between 1 and 100',
      );

  /// Returns invalid timeout exception.
  static LongPollingException get invalidTimeout => LongPollingException(
        'Invalid timeout. Timeout cannot be greater than ${LongPolling.maxTimeout}',
      );

  /// Returns already polling exception.
  static LongPollingException get alreadyPolling => LongPollingException(
        'Already polling. You cannot start another polling when another polling is working.',
      );

  /// Returns stream closed exception.
  static LongPollingException get streamClosed => LongPollingException(
        'Stream is closed. You cannot add events to a closed stream.',
      );

  /// Response Parameters
  ResponseParameters? parameters;
}
