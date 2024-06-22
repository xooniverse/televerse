part of '../../../televerse.dart';

/// Base class for the middlewares
sealed class MiddlewareBase {}

/// The next handler to be executed.
///
/// Invoking this function basically means, you want the next handler to also run.
typedef NextFunction = FutureOr<void> Function();

/// Represents a Middleware.
///
/// Middlewares are attached to the bot with the `bot.use` method. Middlewares act as an intermediate
/// handler before the actual handler.
///
/// These intermediate functions can be used to process or modify the Context before it reaches the main handler.
abstract interface class Middleware implements MiddlewareBase {
  /// The middleware function
  ///
  /// - [ctx] - The current context where the middleware is operating on
  ///
  /// - [next] - The next handler method. Gives you ability to decide whether to run or skip the next handler.
  FutureOr<void> fn(
    Context ctx,
    NextFunction next,
  );

  /// Constructs a Middleware
  const Middleware();
}

/// Represents a interceptor which can alter the API requests.
abstract interface class Transformer implements MiddlewareBase {
  /// The API interceptor function.
  ///
  /// ## Available Arguments
  /// Here are the different arugments available to the transfomer function.
  ///
  /// ### 1. `APIMethod method`
  ///
  /// This parameter tells which API Method is now being called. Let's you decide whether to
  /// perform or not perform the transfomer on the payload.
  ///
  /// ### 2. `Map<String, dynamic> payload`
  ///
  /// The payload is the actual JSON body object to be posted to the current method.
  /// Check the [Telegram Bot API documentation](https://core.telegram.org/bots/api) to learn about all the possible
  /// parameters that can be passed. In most fo the cases, you will be altering the payload with a transformer. So,
  /// it is important to alter and return the valid JSON after transformation.
  ///
  /// ### 3. `Context? ctx`
  /// The available context object. If the user is invoking RawAPI methods through the context object, such as
  /// `ctx.reply` or `ctx.answerCallbackQuery` the particular context object can be accessed with this argument.
  /// Having access to the Context object primarily lets you take control of the whole incoming update. This lets you
  /// further enhance your transfomrmer.
  ///
  /// Be aware that `ctx` can be `null`, this occurs when user is invoking the method directly through the `RawAPI` instance.
  ///
  ///
  /// ## Example
  /// Here's a simple implementation of the `AutoReplier` transformer. The auto-replier transformer can be used to
  /// automatically require users to reply to the current message the bot sent by passing the `ForceReply` reply markup with all the possible
  /// send methods.
  ///
  /// ```dart
  /// class AutoReplier implements Transformer {
  ///   @override
  ///   FutureOr<Map<String, dynamic>> fn(
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
  /// The above code, simply creates a auto replier transformer. Now users can use it as:
  ///
  /// ```dart
  /// bot.use(AutoReplier());
  /// ```
  ///
  /// That's it. Now whenever user makes a send method request, the force reply markup will be added to it.
  FutureOr<Map<String, dynamic>> fn(
    APIMethod method,
    Map<String, dynamic> payload,
    Context? ctx,
  );

  /// Constructs a API Interceptor middleware
  const Transformer();
}
