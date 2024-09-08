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
