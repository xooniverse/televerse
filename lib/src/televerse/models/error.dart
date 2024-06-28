part of 'models.dart';

/// This object will be passed to the error handler.
/// It contains the error and the stack trace.
///
/// Optionally, it can contain the context of the error.
class BotError<CTX extends Context> implements Exception {
  /// The error.
  ///
  /// This can possibly be a [TelegramException] or [TeleverseException] or [LongPollingException] or [DioException]
  final Object error;

  /// The stack trace.
  final StackTrace stackTrace;

  /// The context of the error.
  final CTX? ctx;

  /// A flag that indicates whether the error occurred at a Middleware
  final bool sourceIsMiddleware;

  /// Creates a new BotError.
  const BotError(
    this.error,
    this.stackTrace, {
    this.ctx,
    this.sourceIsMiddleware = false,
  });

  /// A flag to simplify checking if the error has a context
  bool get hasContext => ctx?.update != null;

  /// The associated update.
  Update? get update => ctx?.update;

  /// The Context Type
  Type get contextType => ctx?.runtimeType ?? Context;

  /// Returns a string representation of the error.
  @override
  String toString() {
    return "BotError: $error\n"
        "StackTrace:\n$stackTrace";
  }
}
