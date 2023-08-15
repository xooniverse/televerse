part of televerse.models;

/// This object will be passed to the error handler.
/// It contains the error and the stack trace.
///
/// Optionally, it can contain the context of the error.
class BotError implements Exception {
  /// The error.
  ///
  /// This can possibly be a [TelegramException] or [TeleverseException] or [LongPollingException] or [DioException]
  final Object error;

  /// The stack trace.
  final StackTrace stackTrace;

  /// The context of the error.
  final Context? ctx;

  /// Creates a new BotError.
  const BotError(
    this.error,
    this.stackTrace, {
    this.ctx,
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
        "StackTrace: $stackTrace";
  }
}
