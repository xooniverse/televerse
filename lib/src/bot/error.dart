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

  /// The name of the middleware where the error occurred, if known.
  final String? middlewareName;

  /// The phase of processing where the error occurred.
  final ErrorPhase phase;

  /// Creates a new bot error.
  ///
  /// Parameters:
  /// - [error]: The original error that occurred
  /// - [stackTrace]: The original stack trace
  /// - [ctx]: The context in which the error occurred
  /// - [middlewareName]: The name of the middleware where the error occurred
  /// - [phase]: The phase of processing where the error occurred
  BotError({
    required this.error,
    required super.stackTrace,
    this.ctx,
    this.middlewareName,
    this.phase = ErrorPhase.middleware,
  }) : super(
          'Bot error occurred during ${phase.name}: $error',
          description: _buildDescription(error, ctx, middlewareName),
          type: TeleverseExceptionType.requestFailed,
        );

  /// Builds a description for the error.
  static String _buildDescription(
    Object originalError,
    Context? ctx,
    String? middlewareName,
  ) {
    final buffer = StringBuffer();
    buffer.writeln('Error occurred during bot operation:');

    if (middlewareName != null) {
      buffer.writeln('  Middleware: $middlewareName');
    }

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
    String? middlewareName,
  ) {
    return BotError<CTX>(
      error: error,
      stackTrace: stackTrace,
      ctx: ctx,
      middlewareName: middlewareName,
      phase: ErrorPhase.middleware,
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
      phase: ErrorPhase.fetching,
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
      phase: ErrorPhase.api,
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

  /// Checks if this error occurred in a specific middleware.
  bool occurredIn(String middlewareName) =>
      this.middlewareName == middlewareName;

  /// Checks if this error is of a specific type.
  bool isOfType<T>() => error is T;

  /// Gets the original error cast to a specific type.
  T? getOriginalErrorAs<T>() => error is T ? error as T : null;

  /// Creates a recovery context with limited functionality.
  ///
  /// This can be useful for error handlers that need to send messages
  /// even when the original context might be partially corrupted.
  RecoveryContext<CTX>? createRecoveryContext() {
    if (!hasContext) return null;
    return RecoveryContext<CTX>._(ctx!);
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('BotError:');
    buffer.writeln('  Phase: ${phase.name}');
    if (middlewareName != null) {
      buffer.writeln('  Middleware: $middlewareName');
    }
    buffer.writeln('  Original Error: $error');
    if (hasContext) {
      buffer.writeln('  Update ID: ${updateId ?? 'N/A'}');
      buffer.writeln('  Chat ID: ${chatId ?? 'N/A'}');
      buffer.writeln('  User ID: ${userId ?? 'N/A'}');
    }
    return buffer.toString();
  }
}

/// The phase of bot processing where an error occurred.
enum ErrorPhase {
  /// Error occurred during update fetching.
  fetching('fetching'),

  /// Error occurred during middleware execution.
  middleware('middleware'),

  /// Error occurred during API call.
  api('api'),

  /// Error occurred during initialization.
  initialization('initialization'),

  /// Error occurred during shutdown.
  shutdown('shutdown');

  /// The name of the phase.
  final String name;

  /// Creates an error phase.
  const ErrorPhase(this.name);
}

/// A recovery context that provides limited functionality after an error.
///
/// This context can be used by error handlers to perform basic operations
/// even when the original context might be partially corrupted or unavailable.
class RecoveryContext<CTX extends Context> {
  /// The original context.
  final CTX _originalContext;

  /// Creates a recovery context.
  RecoveryContext._(this._originalContext);

  /// Gets the API instance for making calls.
  RawAPI get api => _originalContext.api;

  /// Gets the bot info.
  BotInfo get me => _originalContext.me;

  /// Gets the update.
  Update get update => _originalContext.update;

  /// Safely gets the chat ID.
  ID? get chatId {
    try {
      final chat = _originalContext.chat;
      return chat != null ? ID.create(chat.id) : null;
    } catch (_) {
      return null;
    }
  }

  /// Safely gets the user ID.
  int? get userId {
    try {
      return _originalContext.from?.id;
    } catch (_) {
      return null;
    }
  }

  /// Attempts to send a recovery message.
  ///
  /// This method tries to send a message to the chat where the error occurred.
  /// It's designed to be as safe as possible and will not throw exceptions.
  ///
  /// Returns true if the message was sent successfully, false otherwise.
  Future<bool> sendRecoveryMessage(String text) async {
    try {
      final currentChatId = chatId;
      if (currentChatId == null) return false;

      await api.sendMessage(currentChatId, text);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Attempts to reply to the original message with a recovery message.
  ///
  /// This method tries to reply to the message that caused the error.
  /// It's designed to be as safe as possible and will not throw exceptions.
  ///
  /// Returns true if the message was sent successfully, false otherwise.
  Future<bool> replyWithRecoveryMessage(String text) async {
    try {
      final currentChatId = chatId;
      final currentMessageId = _originalContext.messageId;

      if (currentChatId == null) return false;

      ReplyParameters? replyParams;
      if (currentMessageId != null) {
        replyParams = ReplyParameters(messageId: currentMessageId);
      }

      await api.sendMessage(
        currentChatId,
        text,
        replyParameters: replyParams,
      );
      return true;
    } catch (_) {
      return false;
    }
  }
}

/// Error boundary configuration.
///
/// This class defines how errors should be handled within a specific boundary.
class ErrorBoundary<CTX extends Context> {
  /// The error handler function.
  final ErrorHandler<CTX> handler;

  /// Whether to continue processing after handling the error.
  final bool continueOnError;

  /// Whether to rethrow the error after handling it.
  final bool rethrowAfterHandling;

  /// Predicate to determine if this boundary should handle the error.
  final bool Function(BotError<CTX> error)? shouldHandle;

  /// Creates an error boundary.
  ///
  /// Parameters:
  /// - [handler]: The error handler function
  /// - [continueOnError]: Whether to continue middleware chain after error
  /// - [rethrowAfterHandling]: Whether to rethrow after handling
  /// - [shouldHandle]: Predicate to determine if this boundary handles the error
  const ErrorBoundary({
    required this.handler,
    this.continueOnError = false,
    this.rethrowAfterHandling = false,
    this.shouldHandle,
  });

  /// Creates an error boundary that catches all errors.
  factory ErrorBoundary.catchAll(
    ErrorHandler<CTX> handler, {
    bool continueOnError = false,
  }) {
    return ErrorBoundary(
      handler: handler,
      continueOnError: continueOnError,
    );
  }

  // /// Creates an error boundary that only catches specific error types.
  // factory ErrorBoundary.catchType<T>(
  //   ErrorHandler<CTX> handler, {
  //   bool continueOnError = false,
  // }) {
  //   return ErrorBoundary(
  //     handler: handler,
  //     continueOnError: continueOnError,
  //     shouldHandle: (error) => error.isOfType<T>(),
  //   );
  // }

  /// Creates an error boundary for API errors only.
  factory ErrorBoundary.apiErrors(
    ErrorHandler<CTX> handler, {
    bool continueOnError = false,
  }) {
    return ErrorBoundary(
      handler: handler,
      continueOnError: continueOnError,
      shouldHandle: (error) => error.phase == ErrorPhase.api,
    );
  }

  /// Checks if this boundary should handle the given error.
  bool handles(BotError<CTX> error) {
    return shouldHandle?.call(error) ?? true;
  }
}
