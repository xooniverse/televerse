part of '../../../televerse.dart';

/// A typedef for the next function used in middleware.
///
/// This function should be called within a middleware to pass control to the
/// next middleware in the stack. If it's not called, the subsequent middlewares
/// and the main handler won't be executed.
typedef NextFunction = FutureOr<void> Function();

/// A function type that represents a callable API method.
///
/// The [APICaller] typedef defines a function that takes an [APIMethod] and a
/// [Payload] as parameters and returns a [Future] containing the result of
/// the API call.
///
/// This function is used within transformers to invoke the actual API method
/// with the transformed payload.
///
/// ## Parameters
/// - `method` (`APIMethod`): The API method to be called.
/// - `payload` (`Payload`): The payload of the API request, containing the
///   parameters and files to be sent. (Check official [Telegram Bot API documentation](https://core.telegram.org/bots/api)
///   for infomration on what parameters can be sent.)
///
/// ## Returns
/// - `Future<Map<String, dynamic>>`: A future that completes with the result
///   of the API call.
typedef APICaller = Future<Map<String, dynamic>> Function(
  APIMethod method, [
  Payload? payload,
]);

/// A function that processes an update before it reaches the handler.
///
/// [ctx] The context object containing information about the current update.
/// [next] A function that should be called to continue to the next middleware
/// or the final handler.
///
/// Middleware functions can:
/// - Modify the context before it reaches the handler
/// - Perform checks and validations
/// - Stop the middleware chain by not calling [next]
/// - Execute code before and after the handler by placing code before/after the [next] call
///
/// Example usage:
/// ```dart
/// MiddlewareFunction<Context> loggerMiddleware = (ctx, next) async {
///   print('Received update: ${ctx.update.updateId}');
///   await next();
///   print('Finished processing update: ${ctx.update.updateId}');
/// };
///
/// MiddlewareFunction<Context> adminCheck = (ctx, next) async {
///   if (ctx.from?.id == ADMIN_ID) {
///     await next();
///   } else {
///     await ctx.reply('Only admins can use this command!');
///   }
/// };
/// ```
typedef MiddlewareFunction<CTX extends Context> = FutureOr<void> Function(
  CTX ctx,
  NextFunction next,
);
