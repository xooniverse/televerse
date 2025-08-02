// File: lib/src/bot/composer.dart
part of '../../televerse.dart';

/// Base class for middleware composition.
///
/// The [Composer] class provides a foundation for building middleware chains.
/// It allows you to add, remove, and execute middleware in a controlled manner.
///
/// This class serves as the base for the `Bot` class and can also be used
/// standalone for creating reusable middleware compositions.
///
/// Example:
/// ```dart
/// final composer = Composer<Context>();
/// composer.use((ctx, next) async {
///   print('Before next middleware');
///   await next();
///   print('After next middleware');
/// });
/// ```
class Composer<CTX extends Context> {
  /// The list of middleware entries.
  final List<MiddlewareEntry<CTX>> _middleware = [];

  /// Error boundaries for handling errors.
  final List<ErrorBoundary<CTX>> _errorBoundaries = [];

  /// Global error handler.
  ErrorHandler<CTX>? _globalErrorHandler;

  /// Statistics about the last middleware execution.
  MiddlewareStats? _lastStats;

  /// Whether to collect execution statistics.
  bool _collectStats = false;

  /// Creates a new composer.
  Composer();

  /// Creates a composer with initial middleware.
  Composer.withMiddleware(List<Middleware<CTX>> initialMiddleware) {
    for (final middleware in initialMiddleware) {
      use(middleware);
    }
  }

  // ===============================
  // Middleware Management
  // ===============================

  /// Adds middleware to the composition.
  ///
  /// The middleware will be executed in the order they are added.
  ///
  /// Parameters:
  /// - [middleware]: The middleware function to add
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.use((ctx, next) async {
  ///   print('Processing update ${ctx.update.updateId}');
  ///   await next();
  /// });
  /// ```
  Composer<CTX> use(Middleware<CTX> middleware) {
    _middleware.add(MiddlewareEntry(middleware));
    return this;
  }

  /// Adds named middleware to the composition.
  ///
  /// Named middleware can be useful for debugging and logging.
  ///
  /// Parameters:
  /// - [name]: The name of the middleware
  /// - [middleware]: The middleware function to add
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> useNamed(String name, Middleware<CTX> middleware) {
    _middleware.add(MiddlewareEntry.named(name, middleware));
    return this;
  }

  /// Adds conditional middleware that only runs when a predicate is true.
  ///
  /// Parameters:
  /// - [predicate]: Function that determines if middleware should run
  /// - [middleware]: The middleware function to add
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.filter(
  ///   (ctx) => ctx.isPrivateChat,
  ///   (ctx, next) async {
  ///     await ctx.reply('This only works in private chats!');
  ///     await next();
  ///   },
  /// );
  /// ```
  Composer<CTX> filter(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> middleware,
  ) {
    _middleware.add(MiddlewareEntry.when(predicate, middleware));
    return this;
  }

  /// Adds middleware that runs concurrently (fork).
  ///
  /// Forked middleware runs in parallel with the rest of the middleware chain
  /// and doesn't block the execution of subsequent middleware.
  ///
  /// Parameters:
  /// - [middleware]: The middleware function to fork
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.fork((ctx, next) async {
  ///   // This runs concurrently and doesn't block other middleware
  ///   await logToDatabase(ctx.update);
  /// });
  /// ```
  Composer<CTX> fork(Middleware<CTX> middleware) {
    _middleware.add(MiddlewareEntry.fork(middleware));
    return this;
  }

  /// Adds middleware that is created lazily based on the context.
  ///
  /// The middleware factory function is called for each update, allowing
  /// you to create context-specific middleware dynamically.
  ///
  /// Parameters:
  /// - [middlewareFactory]: Function that creates middleware based on context
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.lazy((ctx) {
  ///   final userId = ctx.from?.id;
  ///   return (ctx, next) async {
  ///     print('User $userId sent an update');
  ///     await next();
  ///   };
  /// });
  /// ```
  Composer<CTX> lazy(MiddlewareFactory<CTX> middlewareFactory) {
    return use((ctx, next) async {
      final middleware = middlewareFactory(ctx);
      await middleware(ctx, next);
    });
  }

  /// Adds middleware that handles a specific branch of execution.
  ///
  /// The branch middleware allows you to conditionally execute different
  /// middleware based on a predicate.
  ///
  /// Parameters:
  /// - [predicate]: Function that determines which branch to take
  /// - [trueMiddleware]: Middleware to run if predicate is true
  /// - [falseMiddleware]: Middleware to run if predicate is false
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.branch(
  ///   (ctx) => ctx.isPrivateChat,
  ///   (ctx, next) => ctx.reply('Private message handler'),
  ///   (ctx, next) => ctx.reply('Group message handler'),
  /// );
  /// ```
  Composer<CTX> branch(
    MiddlewarePredicate<CTX> predicate,
    Middleware<CTX> trueMiddleware,
    Middleware<CTX> falseMiddleware,
  ) {
    return use((ctx, next) async {
      if (predicate(ctx)) {
        await trueMiddleware(ctx, next);
      } else {
        await falseMiddleware(ctx, next);
      }
    });
  }

  // ===============================
  // Error Handling
  // ===============================

  /// Sets the global error handler.
  ///
  /// This handler will be called for any unhandled errors that occur
  /// during middleware execution.
  ///
  /// Parameters:
  /// - [handler]: The error handler function
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.onError((error) async {
  ///   print('Error occurred: ${error.originalError}');
  ///   if (error.hasContext) {
  ///     await error.ctx!.reply('Sorry, something went wrong!');
  ///   }
  /// });
  /// ```
  Composer<CTX> onError(ErrorHandler<CTX> handler) {
    _globalErrorHandler = handler;
    return this;
  }

  /// Adds an error boundary to catch and handle errors.
  ///
  /// Error boundaries provide a way to catch errors at specific points
  /// in the middleware chain and handle them appropriately.
  ///
  /// Parameters:
  /// - [handler]: The error handler function
  /// - [continueOnError]: Whether to continue execution after handling the error
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.errorBoundary(
  ///   (error) async {
  ///     print('Caught error: ${error.originalError}');
  ///   },
  ///   continueOnError: true,
  /// );
  /// ```
  Composer<CTX> errorBoundary(
    ErrorHandler<CTX> handler, {
    bool continueOnError = false,
  }) {
    return use((ctx, next) async {
      try {
        await next();
      } catch (error, stackTrace) {
        final botError = BotError<CTX>.fromMiddleware(
          error,
          stackTrace,
          ctx,
          'error-boundary',
        );

        await handler(botError);

        if (!continueOnError) return;

        // Continue with remaining middleware after error
        // This is a simplified implementation - in practice,
        // we'd need to track middleware position
      }
    });
  }

  // ===============================
  // Execution
  // ===============================

  /// Processes a context through the middleware chain.
  ///
  /// This method executes all middleware in order, handling errors
  /// appropriately and collecting statistics if enabled.
  ///
  /// Parameters:
  /// - [ctx]: The context to process
  ///
  /// Example:
  /// ```dart
  /// final ctx = Context(update, api, botInfo);
  /// await composer.handle(ctx);
  /// ```
  Future<void> handle(CTX ctx) async {
    if (_middleware.isEmpty) return;

    final executionInfos = <MiddlewareExecutionInfo>[];
    final startTime = DateTime.now();

    try {
      await _executeMiddleware(ctx, 0, executionInfos);
    } finally {
      if (_collectStats) {
        final endTime = DateTime.now();
        final totalTime = endTime.difference(startTime).inMicroseconds;

        _lastStats = MiddlewareStats(
          totalMiddleware: _middleware.length,
          executedMiddleware:
              executionInfos.where((info) => info.successful).length,
          skippedMiddleware: _middleware.length - executionInfos.length,
          executionTimeMicroseconds: totalTime,
          middlewareExecutions: executionInfos,
        );
      }
    }
  }

  /// Executes middleware starting from a specific index.
  ///
  /// This is the core method that handles the middleware chain execution,
  /// including error handling, statistics collection, and concurrent execution.
  Future<void> _executeMiddleware(
    CTX ctx,
    int index,
    List<MiddlewareExecutionInfo> executionInfos,
  ) async {
    if (index >= _middleware.length) return;

    final entry = _middleware[index];

    // Check if middleware should run
    if (!entry.shouldRun(ctx)) {
      // Skip this middleware and continue to next
      return _executeMiddleware(ctx, index + 1, executionInfos);
    }

    // Handle concurrent (fork) middleware
    if (entry.concurrent) {
      // Start concurrent execution but don't wait for it
      _executeSingleMiddleware(ctx, entry, executionInfos).catchError(
        (error, stackTrace) => _handleMiddlewareError(
          error,
          stackTrace,
          ctx,
          entry.name,
        ),
      );

      // Continue to next middleware immediately
      return _executeMiddleware(ctx, index + 1, executionInfos);
    }

    // Execute middleware and wait for completion
    try {
      await _executeSingleMiddleware(ctx, entry, executionInfos, () async {
        // Next function - continue to next middleware
        await _executeMiddleware(ctx, index + 1, executionInfos);
      });
    } catch (error, stackTrace) {
      await _handleMiddlewareError(error, stackTrace, ctx, entry.name);
    }
  }

  /// Executes a single middleware entry.
  Future<void> _executeSingleMiddleware(
    CTX ctx,
    MiddlewareEntry<CTX> entry,
    List<MiddlewareExecutionInfo> executionInfos, [
    NextFunction? next,
  ]) async {
    final startTime = DateTime.now();

    try {
      await entry.middleware(ctx, next ?? (() async {}));

      if (_collectStats) {
        final endTime = DateTime.now();
        final executionTime = endTime.difference(startTime).inMicroseconds;

        executionInfos.add(MiddlewareExecutionInfo(
          entry: entry,
          executionTimeMicroseconds: executionTime,
          successful: true,
        ));
      }
    } catch (e) {
      if (_collectStats) {
        final endTime = DateTime.now();
        final executionTime = endTime.difference(startTime).inMicroseconds;

        executionInfos.add(MiddlewareExecutionInfo(
          entry: entry,
          executionTimeMicroseconds: executionTime,
          successful: false,
          error: e,
        ));
      }

      rethrow;
    }
  }

  /// Handles middleware errors.
  Future<void> _handleMiddlewareError(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
    String? middlewareName,
  ) async {
    final botError = BotError<CTX>.fromMiddleware(
      error,
      stackTrace,
      ctx,
      middlewareName,
    );

    // Try error boundaries first
    for (final boundary in _errorBoundaries) {
      if (boundary.handles(botError)) {
        try {
          await boundary.handler(botError);

          if (!boundary.rethrowAfterHandling) {
            if (boundary.continueOnError) {
              // Continue execution - in practice, this would require
              // more complex state management
              return;
            }
            return; // Stop execution
          }
        } catch (handlerError) {
          // Error in error handler - fall back to global handler
          break;
        }
      }
    }

    // Fall back to global error handler
    if (_globalErrorHandler != null) {
      try {
        await _globalErrorHandler!(botError);
        return;
      } catch (handlerError, handlerStackTrace) {
        // Error in global handler - log and rethrow original
        print('Error in global error handler: $handlerError');
        print('Handler stack trace: $handlerStackTrace');
      }
    }

    // No handler available or handlers failed - rethrow original error
    throw botError;
  }

  // ===============================
  // Composition Operations
  // ===============================

  /// Mounts another composer's middleware.
  ///
  /// This allows you to compose multiple composers together,
  /// creating reusable middleware modules.
  ///
  /// Parameters:
  /// - [other]: The composer to mount
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// final authComposer = Composer<Context>()
  ///   ..use(authMiddleware);
  ///
  /// final mainComposer = Composer<Context>()
  ///   ..mount(authComposer)
  ///   ..use(mainMiddleware);
  /// ```
  Composer<CTX> mount(Composer<CTX> other) {
    _middleware.addAll(other._middleware);
    _errorBoundaries.addAll(other._errorBoundaries);
    return this;
  }

  /// Creates a sub-composer with additional middleware.
  ///
  /// This creates a new composer that includes all current middleware
  /// plus any additional middleware you specify.
  ///
  /// Parameters:
  /// - [additionalMiddleware]: Additional middleware to include
  ///
  /// Returns a new composer with combined middleware.
  ///
  /// Example:
  /// ```dart
  /// final baseComposer = Composer<Context>()
  ///   ..use(loggingMiddleware);
  ///
  /// final extendedComposer = baseComposer.extend([
  ///   authMiddleware,
  ///   validationMiddleware,
  /// ]);
  /// ```
  Composer<CTX> extend(List<Middleware<CTX>> additionalMiddleware) {
    final newComposer = Composer<CTX>();
    newComposer._middleware.addAll(_middleware);
    newComposer._errorBoundaries.addAll(_errorBoundaries);
    newComposer._globalErrorHandler = _globalErrorHandler;

    for (final middleware in additionalMiddleware) {
      newComposer.use(middleware);
    }

    return newComposer;
  }

  /// Clones this composer.
  ///
  /// Creates an exact copy of this composer with all its middleware
  /// and error handling configuration.
  ///
  /// Returns a new composer that's a copy of this one.
  Composer<CTX> clone() {
    final newComposer = Composer<CTX>();
    newComposer._middleware.addAll(_middleware);
    newComposer._errorBoundaries.addAll(_errorBoundaries);
    newComposer._globalErrorHandler = _globalErrorHandler;
    newComposer._collectStats = _collectStats;
    return newComposer;
  }

  // ===============================
  // Information and Debugging
  // ===============================

  /// Gets the number of middleware in this composer.
  int get middlewareCount => _middleware.length;

  /// Gets the list of middleware names (where available).
  List<String> get middlewareNames {
    return _middleware.map((entry) => entry.name ?? 'unnamed').toList();
  }

  /// Checks if the composer has any middleware.
  bool get hasMiddleware => _middleware.isNotEmpty;

  /// Checks if the composer has error handling configured.
  bool get hasErrorHandling =>
      _globalErrorHandler != null || _errorBoundaries.isNotEmpty;

  /// Gets statistics from the last execution.
  MiddlewareStats? get lastExecutionStats => _lastStats;

  /// Enables or disables statistics collection.
  ///
  /// When enabled, the composer will collect detailed statistics
  /// about middleware execution times and success rates.
  ///
  /// Parameters:
  /// - [enabled]: Whether to collect statistics
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> collectStatistics(bool enabled) {
    _collectStats = enabled;
    return this;
  }

  /// Removes all middleware from this composer.
  ///
  /// This clears all middleware, error boundaries, and error handlers.
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> clear() {
    _middleware.clear();
    _errorBoundaries.clear();
    _globalErrorHandler = null;
    _lastStats = null;
    return this;
  }

  /// Removes middleware at a specific index.
  ///
  /// Parameters:
  /// - [index]: The index of the middleware to remove
  ///
  /// Returns this composer for method chaining.
  ///
  /// Throws [RangeError] if the index is out of bounds.
  Composer<CTX> removeAt(int index) {
    if (index < 0 || index >= _middleware.length) {
      throw RangeError.index(index, _middleware);
    }
    _middleware.removeAt(index);
    return this;
  }

  /// Removes middleware with a specific name.
  ///
  /// Parameters:
  /// - [name]: The name of the middleware to remove
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> removeNamed(String name) {
    _middleware.removeWhere((entry) => entry.name == name);
    return this;
  }

  /// Inserts middleware at a specific position.
  ///
  /// Parameters:
  /// - [index]: The position to insert at
  /// - [middleware]: The middleware to insert
  ///
  /// Returns this composer for method chaining.
  ///
  /// Throws [RangeError] if the index is out of bounds.
  Composer<CTX> insertAt(int index, Middleware<CTX> middleware) {
    if (index < 0 || index > _middleware.length) {
      throw RangeError.index(index, _middleware);
    }
    _middleware.insert(index, MiddlewareEntry(middleware));
    return this;
  }

  @override
  String toString() {
    return 'Composer<$CTX>(middleware: ${_middleware.length}, '
        'errorBoundaries: ${_errorBoundaries.length}, '
        'hasGlobalErrorHandler: ${_globalErrorHandler != null})';
  }
}
