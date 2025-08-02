// File: lib/src/bot/middleware.dart

part of '../../televerse.dart';

/// The next function type that continues the middleware chain.
///
/// When called, it proceeds to the next middleware in the chain.
/// If this is the last middleware, the function completes without doing anything.
typedef NextFunction = FutureOr<void> Function();

/// Middleware function signature.
///
/// A middleware function receives the current context and a next function.
/// It can perform operations before calling next(), after calling next(),
/// or both (wrapping the next call).
///
/// Example:
/// ```dart
/// // Logging middleware
/// Middleware<Context> loggingMiddleware = (ctx, next) async {
///   print('Processing update ${ctx.update.updateId}');
///   await next(); // Continue to next middleware
///   print('Finished processing update ${ctx.update.updateId}');
/// };
/// ```
typedef Middleware<CTX extends Context> = FutureOr<void> Function(
  CTX ctx,
  NextFunction next,
);

/// Predicate function type for conditional middleware.
///
/// Returns true if the middleware should be executed, false otherwise.
typedef MiddlewarePredicate<CTX extends Context> = bool Function(CTX ctx);

/// Error handler function type.
///
/// This function is called when an error occurs during middleware execution.
typedef ErrorHandler<CTX extends Context> = FutureOr<void> Function(
  BotError<CTX> error,
);

/// Middleware filter function type.
///
/// This function determines if a middleware should run based on the context.
/// Similar to predicate but can be used for more complex filtering logic.
typedef MiddlewareFilter<CTX extends Context> = bool Function(CTX ctx);

/// Middleware factory function type.
///
/// This function creates middleware dynamically based on the context.
/// Useful for lazy initialization or context-dependent middleware creation.
typedef MiddlewareFactory<CTX extends Context> = Middleware<CTX> Function(
  CTX ctx,
);

/// Entry in the middleware chain.
///
/// This class wraps a middleware function along with metadata about it,
/// such as its name and any conditions for execution.
class MiddlewareEntry<CTX extends Context> {
  /// The middleware function.
  final Middleware<CTX> middleware;

  /// Optional name for the middleware (useful for debugging).
  final String? name;

  /// Optional predicate that determines if this middleware should run.
  final MiddlewarePredicate<CTX>? predicate;

  /// Whether this middleware should catch and handle errors.
  final bool catchErrors;

  /// Whether this middleware should run concurrently (fork).
  final bool concurrent;

  /// Creates a new middleware entry.
  ///
  /// Parameters:
  /// - [middleware]: The middleware function
  /// - [name]: Optional name for debugging purposes
  /// - [predicate]: Optional condition for running this middleware
  /// - [catchErrors]: Whether this middleware handles errors
  /// - [concurrent]: Whether this middleware runs concurrently
  const MiddlewareEntry(
    this.middleware, {
    this.name,
    this.predicate,
    this.catchErrors = false,
    this.concurrent = false,
  });

  /// Creates a named middleware entry.
  factory MiddlewareEntry.named(
    String name,
    Middleware<CTX> middleware,
  ) {
    return MiddlewareEntry(middleware, name: name);
  }

  /// Creates a conditional middleware entry.
  factory MiddlewareEntry.when(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> middleware, {
    String? name,
  }) {
    return MiddlewareEntry(
      middleware,
      name: name,
      predicate: predicate,
    );
  }

  /// Creates an error-catching middleware entry.
  factory MiddlewareEntry.errorCatcher(
    Middleware<CTX> middleware, {
    String? name,
  }) {
    return MiddlewareEntry(
      middleware,
      name: name,
      catchErrors: true,
    );
  }

  /// Creates a concurrent (fork) middleware entry.
  factory MiddlewareEntry.fork(
    Middleware<CTX> middleware, {
    String? name,
  }) {
    return MiddlewareEntry(
      middleware,
      name: name,
      concurrent: true,
    );
  }

  /// Checks if this middleware should run for the given context.
  bool shouldRun(CTX ctx) {
    return predicate?.call(ctx) ?? true;
  }

  @override
  String toString() {
    final nameStr = name != null ? ' "$name"' : '';
    final flags = <String>[];
    if (catchErrors) flags.add('error-catcher');
    if (concurrent) flags.add('concurrent');
    final flagsStr = flags.isNotEmpty ? ' [${flags.join(', ')}]' : '';
    return 'MiddlewareEntry$nameStr$flagsStr';
  }
}

/// Middleware execution statistics.
///
/// This class provides information about middleware execution,
/// useful for debugging and performance monitoring.
class MiddlewareStats {
  /// Total number of middleware entries.
  final int totalMiddleware;

  /// Number of middleware that were executed.
  final int executedMiddleware;

  /// Number of middleware that were skipped.
  final int skippedMiddleware;

  /// Total execution time in microseconds.
  final int executionTimeMicroseconds;

  /// Execution time for each middleware.
  final List<MiddlewareExecutionInfo> middlewareExecutions;

  /// Creates middleware execution statistics.
  const MiddlewareStats({
    required this.totalMiddleware,
    required this.executedMiddleware,
    required this.skippedMiddleware,
    required this.executionTimeMicroseconds,
    required this.middlewareExecutions,
  });

  /// Total execution time as Duration.
  Duration get executionTime =>
      Duration(microseconds: executionTimeMicroseconds);

  /// Average execution time per middleware.
  Duration get averageExecutionTime {
    if (executedMiddleware == 0) return Duration.zero;
    return Duration(
      microseconds: executionTimeMicroseconds ~/ executedMiddleware,
    );
  }

  @override
  String toString() {
    return 'MiddlewareStats('
        'total: $totalMiddleware, '
        'executed: $executedMiddleware, '
        'skipped: $skippedMiddleware, '
        'time: ${executionTime.inMilliseconds}ms'
        ')';
  }
}

/// Information about a single middleware execution.
class MiddlewareExecutionInfo {
  /// The middleware entry that was executed.
  final MiddlewareEntry entry;

  /// Execution time in microseconds.
  final int executionTimeMicroseconds;

  /// Whether the middleware completed successfully.
  final bool successful;

  /// Error that occurred during execution (if any).
  final Object? error;

  /// Creates middleware execution information.
  const MiddlewareExecutionInfo({
    required this.entry,
    required this.executionTimeMicroseconds,
    required this.successful,
    this.error,
  });

  /// Execution time as Duration.
  Duration get executionTime =>
      Duration(microseconds: executionTimeMicroseconds);

  @override
  String toString() {
    final nameStr = entry.name ?? 'unnamed';
    final successStr = successful ? 'success' : 'failed';
    return 'MiddlewareExecution($nameStr, $successStr, ${executionTime.inMilliseconds}ms)';
  }
}
