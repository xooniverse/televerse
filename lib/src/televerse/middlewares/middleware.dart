part of '../../../televerse.dart';

/// Represents a Middlware that can be used to process requests
/// before they reach the main handler.
///
/// This class should be implemented by any middleware that needs to perform
/// operations on the [Context] object or decide whether to pass control to
/// the next middleware or the main handler.
///
/// Example usage:
/// ```dart
/// class Logger implements Middleware {
///   @override
///   FutureOr<void> handle(Context ctx, NextFunction next) async {
///     print('Request received: ${ctx.update}');
///     await next(); // Pass control to the next middleware or handler
///     print('Response sent');
///   }
/// }
/// ```
///
/// By using the `Middleware` class, you can create reusable components that
/// can be attached to the bot and executed in sequence.
abstract interface class Middleware implements MiddlewareBase {
  /// The middleware function that processes the [Context] and optionally
  /// passes control to the next middleware or main handler.
  ///
  /// The [handle] function should call the [next] function to pass control
  /// to the next middleware in the stack or to the main handler if there are
  /// no more middlewares. If [next] is not called, the subsequent middlewares
  /// and the main handler will not be executed.
  ///
  /// Example usage:
  /// ```dart
  /// @override
  /// FutureOr<void> handle(Context ctx, NextFunction next) async {
  ///   // Perform some pre-processing
  ///   print('Before main handler');
  ///
  ///   // Pass control to the next middleware or the main handler
  ///   await next();
  ///
  ///   // Perform some post-processing
  ///   print('After main handler');
  /// }
  /// ```
  FutureOr<void> handle(
    Context ctx,
    NextFunction next,
  );

  /// Constructs a [Middleware] instance.
  const Middleware();
}
