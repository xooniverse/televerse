part of '../../../televerse.dart';

/// Base class for the middlewares
sealed class MiddlewareBase {}

/// A typedef for the next function used in middleware.
///
/// This function should be called within a middleware to pass control to the
/// next middleware in the stack. If it's not called, the subsequent middlewares
/// and the main handler won't be executed.
typedef NextFunction = FutureOr<void> Function();

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

/// Represents a transformer that can alter API requests before they are sent.
///
/// This class should be implemented by any transformer that needs to modify
/// the request payload based on the API method being called, the provided
/// payload, or the context.
///
/// Example usage:
/// ```dart
/// class AutoReplier implements Transformer {
///   @override
///   FutureOr<Map<String, dynamic>> transform(
///     APIMethod method,
///     Map<String, dynamic> payload,
///     Context? ctx,
///   ) {
///     final isSendMethod = APIMethod.sendMethods.contains(method);
///     final isNotChatAction = method != APIMethod.sendChatAction;
///
///     if (isSendMethod && isNotChatAction) {
///       payload["reply_markup"] = ForceReply().toJson();
///     }
///     return payload;
///   }
/// }
/// ```
///
/// By using the `Transformer` class, you can create reusable components that
/// can be attached to the bot to modify the request payload dynamically.
abstract interface class Transformer implements MiddlewareBase {
  /// The function that processes and alters the API request payload.
  ///
  /// ## Parameters
  /// - `APIMethod method`: Indicates which API method is being called. This allows
  /// you to decide whether or not to transform the payload based on the method.
  ///
  /// - `Map<String, dynamic> payload`: The actual JSON body object to be posted
  /// to the current method. This payload can be altered and should be returned
  /// as a valid JSON after transformation. Refer to the [Telegram Bot API documentation](https://core.telegram.org/bots/api)
  /// to understand the possible parameters that can be passed.
  ///
  /// - `Context? ctx`: The context object, if available. This is accessible when
  /// the user invokes `RawAPI` methods through the context object, such as `ctx.reply`
  /// or `ctx.answerCallbackQuery`. Access to the context object allows you to further
  /// enhance your transformer by leveraging the incoming update.
  ///
  /// **Note**: `ctx` can be `null` if the method is invoked directly through the `RawAPI` instance.
  ///
  /// ## Example
  /// Here's a simple implementation of the `AutoReplier` transformer:
  /// ```dart
  /// class AutoReplier implements Transformer {
  ///   @override
  ///   FutureOr<Map<String, dynamic>> transform(
  ///     APIMethod method,
  ///     Map<String, dynamic> payload,
  ///     Context? ctx,
  ///   ) {
  ///     final isSendMethod = APIMethod.sendMethods.contains(method);
  ///     final isNotChatAction = method != APIMethod.sendChatAction;
  ///
  ///     if (isSendMethod && isNotChatAction) {
  ///       payload["reply_markup"] = ForceReply().toJson();
  ///     }
  ///     return payload;
  ///   }
  /// }
  /// ```
  ///
  /// The above code creates an `AutoReplier` transformer. Users can attach it to the bot:
  /// ```dart
  /// bot.use(AutoReplier());
  /// ```
  /// Now, whenever a send method request is made, the force reply markup will be added.
  FutureOr<Map<String, dynamic>> transform(
    APIMethod method,
    Map<String, dynamic> payload,
    Context? ctx,
  );

  /// Constructs a `Transformer` instance.
  const Transformer();
}
