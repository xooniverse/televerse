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

  /// Global error handler.
  ErrorHandler<CTX>? _globalErrorHandler;

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

  /// Sets a global error handler that catches all unhandled errors.
  ///
  /// This handler will be called for any unhandled errors that occur
  /// during middleware execution and are not caught by error boundaries.
  ///
  /// Parameters:
  /// - [handler]: The error handler function
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// composer.onError((error) async {
  ///   print('Error occurred: ${error.error}');
  ///   if (error.hasContext) {
  ///     await error.ctx!.reply('Sorry, something went wrong!');
  ///   }
  /// });
  /// ```
  Composer<CTX> onError(ErrorHandler<CTX> handler) {
    _globalErrorHandler = handler;
    return this;
  }

  /// Creates an error boundary that catches errors from specific middleware.
  ///
  /// This is the correct implementation following grammY's pattern.
  /// The error boundary:
  /// 1. Accepts an error handler and middleware to protect
  /// 2. If an error occurs in the protected middleware, calls the error handler
  /// 3. If the error handler calls `next()`, continues execution after the boundary
  /// 4. If the error handler doesn't call `next()`, stops execution (error contained)
  ///
  /// Parameters:
  /// - [errorHandler]: Error handler that gets error and next function
  /// - [protectedMiddleware]: List of middleware to protect with this boundary
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// bot.errorBoundary(
  ///   (error, next) async {
  ///     print('Error caught: ${error.error}');
  ///
  ///     if (error.error is ValidationException) {
  ///       await error.ctx?.reply('Please check your input');
  ///       await next(); // Continue after boundary
  ///     } else {
  ///       await error.ctx?.reply('Something went wrong');
  ///       // Don't call next() - contain the error
  ///     }
  ///   },
  ///   riskyMiddleware1,
  ///   riskyMiddleware2,
  /// );
  /// ```
  Composer<CTX> errorBoundary(
    ErrorBoundaryHandler<CTX> errorHandler, [
    List<Middleware<CTX>> protectedMiddleware = const [],
  ]) {
    // Add the error boundary middleware to the current composer
    return use((ctx, next) async {
      try {
        // Execute all protected middleware first
        for (final middleware in protectedMiddleware) {
          await middleware(ctx, () async {});
        }

        // If all protected middleware completed successfully, continue with next
        await next();
      } catch (error, stackTrace) {
        // Create bot error
        final botError = BotError<CTX>.fromMiddleware(
          error,
          stackTrace,
          ctx,
        );

        // Call the error boundary handler with the error and next function
        // The handler decides whether to call next() to continue execution
        await errorHandler(botError, next);
      }
    });
  }

  /// Alternative error boundary method that accepts middleware as varargs.
  ///
  /// This matches grammY's exact API signature.
  ///
  /// Parameters:
  /// - [errorHandler]: Error handler that gets error and next function
  /// - [...]: Variable number of middleware to protect
  ///
  /// Returns this composer for method chaining.
  ///
  /// Example:
  /// ```dart
  /// bot.errorBoundaryVarArgs(
  ///   (error, next) async {
  ///     print('Error in boundary: ${error.error}');
  ///     // Decide whether to call next() or not
  ///   },
  ///   middleware1,
  ///   middleware2,
  ///   middleware3,
  /// );
  /// ```
  Composer<CTX> errorBoundaryVarArgs(
    ErrorBoundaryHandler<CTX> errorHandler,
    Middleware<CTX> middleware1, [
    Middleware<CTX>? middleware2,
    Middleware<CTX>? middleware3,
    Middleware<CTX>? middleware4,
    Middleware<CTX>? middleware5,
  ]) {
    final middlewareList = <Middleware<CTX>>[middleware1];
    if (middleware2 != null) middlewareList.add(middleware2);
    if (middleware3 != null) middlewareList.add(middleware3);
    if (middleware4 != null) middlewareList.add(middleware4);
    if (middleware5 != null) middlewareList.add(middleware5);

    return errorBoundary(errorHandler, middlewareList);
  }

  // ===============================
  // Execution
  // ===============================

  /// Processes a context through the middleware chain.
  ///
  /// This method executes all middleware in order, handling errors
  /// appropriately.
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

    try {
      await _executeMiddleware(ctx, 0);
    } catch (error, stackTrace) {
      // Handle any unhandled errors with the global error handler
      await _handleUnhandledError(error, stackTrace, ctx);
    }
  }

  /// Executes middleware starting from a specific index.
  ///
  /// This is the core method that handles the middleware chain execution,
  /// including error handling and concurrent execution.
  Future<void> _executeMiddleware(CTX ctx, int index) async {
    if (index >= _middleware.length) return;

    final entry = _middleware[index];

    // Check if middleware should run
    if (!entry.shouldRun(ctx)) {
      // Skip this middleware and continue to next
      return _executeMiddleware(ctx, index + 1);
    }

    // Handle concurrent (fork) middleware
    if (entry.concurrent) {
      // Start concurrent execution but don't wait for it
      unawaited(_executeSingleMiddleware(ctx, entry, () async {})
          .catchError((error, stackTrace) async {
        // For forked middleware, we handle errors separately
        // to avoid crashing the main middleware chain
        await _handleForkedMiddlewareError(error, stackTrace, ctx);
      }));

      // Continue to next middleware immediately
      return _executeMiddleware(ctx, index + 1);
    }

    // Execute middleware and wait for completion
    await _executeSingleMiddleware(ctx, entry, () async {
      // Next function - continue to next middleware
      await _executeMiddleware(ctx, index + 1);
    });
  }

  /// Executes a single middleware entry.
  Future<void> _executeSingleMiddleware(
    CTX ctx,
    MiddlewareEntry<CTX> entry,
    NextFunction next,
  ) async {
    await entry.middleware(ctx, next);
  }

  /// Handles unhandled errors (errors that escape error boundaries).
  ///
  /// This method deals with errors that occur in middleware that isn't
  /// protected by error boundaries, or errors that bubble up from
  /// error boundary handlers themselves.
  Future<void> _handleUnhandledError(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
  ) async {
    final botError = BotError<CTX>.fromMiddleware(
      error,
      stackTrace,
      ctx,
    );

    // Try global error handler
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

    // No handler available or handler failed - rethrow original error
    throw botError;
  }

  /// Handles errors in forked (concurrent) middleware.
  ///
  /// Forked middleware errors are handled separately to prevent them
  /// from crashing the main middleware chain.
  Future<void> _handleForkedMiddlewareError(
    Object error,
    StackTrace stackTrace,
    CTX? ctx,
  ) async {
    final botError = BotError<CTX>.fromMiddleware(
      error,
      stackTrace,
      ctx,
    );

    // Try global error handler
    if (_globalErrorHandler != null) {
      try {
        await _globalErrorHandler!(botError);
      } catch (handlerError, handlerStackTrace) {
        // Error in global handler - just log, don't rethrow for forked middleware
        print(
          'Error in global error handler for forked middleware: $handlerError',
        );
        print('Handler stack trace: $handlerStackTrace');
        print('Original forked error: $error');
      }
    } else {
      // No global handler - just log the forked middleware error
      print('Unhandled error in forked middleware: $error');
      print('Stack trace: $stackTrace');
    }
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
    newComposer._globalErrorHandler = _globalErrorHandler;
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
  bool get hasErrorHandling => _globalErrorHandler != null;

  /// Removes all middleware from this composer.
  ///
  /// This clears all middleware and error handlers.
  ///
  /// Returns this composer for method chaining.
  Composer<CTX> clear() {
    _middleware.clear();
    _globalErrorHandler = null;
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
        'hasGlobalErrorHandler: ${_globalErrorHandler != null})';
  }
}
