// File: lib/src/bot/error.dart
part of '../../televerse.dart';

/// A bot error that occurred during update processing.
///
/// This class wraps errors that occur during middleware execution or
/// update processing, providing additional context information that
/// can be useful for debugging and error handling.
///
/// The error includes the original error, stack trace, and the context
/// in which the error occurred (if available).
class BotError<CTX extends Context> extends TeleverseException {
  /// The original error that occurred.
  final Object error;

  /// The context in which the error occurred, if available.
  final CTX? ctx;

  /// Creates a new bot error.
  ///
  /// Parameters:
  /// - [error]: The original error that occurred
  /// - [stackTrace]: The original stack trace
  /// - [ctx]: The context in which the error occurred
  BotError({
    required this.error,
    required super.stackTrace,
    this.ctx,
  }) : super(
          'Bot error occurred: $error',
          description: _buildDescription(error, ctx),
          type: TeleverseExceptionType.requestFailed,
        );

  /// Builds a description for the error.
  static String _buildDescription(Object originalError, Context? ctx) {
    final buffer = StringBuffer();
    buffer.writeln('Error occurred during bot operation:');

    if (ctx != null) {
      buffer.writeln('  Update ID: ${ctx.update.updateId}');
      if (ctx.chat != null) {
        buffer.writeln('  Chat ID: ${ctx.chat!.id}');
      }
      if (ctx.from != null) {
        buffer.writeln('  User ID: ${ctx.from!.id}');
      }
    }

    buffer.writeln('  Original Error: $originalError');
    return buffer.toString();
  }

  /// Creates a bot error from an exception in middleware.
  factory BotError.fromMiddleware(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
  ) {
    return BotError<CTX>(
      error: error,
      stackTrace: stackTrace,
      ctx: ctx,
    );
  }

  /// Creates a bot error from an exception during update fetching.
  factory BotError.fromFetcher(
    Object error,
    StackTrace stackTrace,
  ) {
    return BotError<CTX>(
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Creates a bot error from an exception during API call.
  factory BotError.fromAPI(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
  ) {
    return BotError<CTX>(
      error: error,
      stackTrace: stackTrace,
      ctx: ctx,
    );
  }

  /// Checks if context is available.
  bool get hasContext => ctx != null;

  /// Gets the update ID if context is available.
  int? get updateId => ctx?.update.updateId;

  /// Gets the chat ID if available.
  ID? get chatId {
    final chat = ctx?.chat;
    return chat != null ? ID.create(chat.id) : null;
  }

  /// Gets the user ID if available.
  int? get userId => ctx?.from?.id;

  /// Gets the message ID if available.
  int? get messageId => ctx?.messageId;

  /// Checks if this error is of a specific type.
  bool isOfType<T>() => error is T;

  /// Gets the original error cast to a specific type.
  T? getOriginalErrorAs<T>() => error is T ? error as T : null;

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('BotError:');
    buffer.writeln('  Original Error: $error');
    if (hasContext) {
      buffer.writeln('  Update ID: ${updateId ?? 'N/A'}');
      buffer.writeln('  Chat ID: ${chatId ?? 'N/A'}');
      buffer.writeln('  User ID: ${userId ?? 'N/A'}');
    }
    return buffer.toString();
  }
}

/// Error handler function type.
///
/// Parameters:
/// - [error]: The error that was caught
typedef ErrorHandler<CTX extends Context> = FutureOr<void> Function(
  BotError<CTX> error,
);

/// Error boundary handler function type.
///
/// This is the handler used within error boundaries. It receives the error
/// and a `next` function that can be used to continue execution after the boundary.
///
/// Parameters:
/// - [error]: The error that was caught
/// - [next]: Function to continue execution with middleware after the boundary
typedef ErrorBoundaryHandler<CTX extends Context> = FutureOr<void> Function(
  BotError<CTX> error,
  NextFunction next,
);
