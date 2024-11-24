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

/// A function type representing a middleware in the bot framework.
///
/// A middleware function is invoked as part of a chain of handlers
/// and can perform custom logic, modify the context, or decide whether
/// to allow subsequent middlewares in the chain to execute. If the
/// middleware determines that the chain should proceed, it must invoke
/// the [next] function. If [next] is not called, the chain halts, and
/// subsequent middlewares or the final handler will not be executed.
///
/// Example usage:
/// ```dart
/// Future<void> banCheck(Context ctx, NextFunction next) async {
///   if (ctx.user?.isBanned ?? false) {
///     await ctx.reply("You are banned!");
///     return; // Stops further execution
///   }
///   await next(); // Proceeds to the next middleware
/// }
/// ```
///
/// The final handler in the chain does not need to call [next].
///
/// Example with multiple middlewares:
/// ```dart
/// bot.command("stats", [banCheck, adminCheck], (ctx) async {
///   await ctx.reply("Statistics data...");
/// });
/// ```
///
/// - [CTX]: The type of context passed to the middleware, typically extending
///   the [Context] class.
/// - [ctx]: The context object for the current message or event.
/// - [next]: A function that, when invoked, moves execution to the next
///   middleware in the chain or the final handler.
///
/// If an error occurs in a middleware, it is recommended to handle it
/// gracefully to avoid breaking the chain.
typedef MiddlewareFunction<CTX extends Context> = FutureOr<void> Function(
  CTX ctx,
  NextFunction next,
);
