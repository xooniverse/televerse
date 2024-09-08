part of '../../../televerse.dart';

/// Represents an API interceptor that can modify the payload of API requests.
///
/// Transformers are used to process the payload of an API request before it is
/// sent to the server. This allows developers to modify the payload, add
/// additional parameters, or perform other transformations as needed.
///
/// Implementations of this class should override the [transform] method to
/// define the transformation logic.
///
/// ## Example
/// Here's an example implementation of a transformer that adds a `ForceReply`
/// markup to all send methods:
///
/// ```dart
/// class AutoReplyEnforcer implements Transformer {
///   @override
///   FutureOr<Map<String, dynamic>> transform(
///     APICaller call,
///     APIMethod method,
///     Payload payload,
///   ) async {
///     final isSendMethod = APIMethod.sendMethods.contains(method);
///     final isNotChatAction = method != APIMethod.sendChatAction;
///
///     if (isSendMethod && isNotChatAction) {
///       payload.params["reply_markup"] = ForceReply().toJson();
///     }
///
///     return await call(method, payload);
///   }
/// }
/// ```
///
/// In this example, the `AutoReplyEnforcer` transformer adds a `ForceReply`
/// markup to all send methods except for `sendChatAction`.
abstract interface class Transformer implements MiddlewareBase {
  /// Transforms the payload before the API call.
  ///
  /// The `transform` method processes the given [payload] and optionally modifies
  /// it before the API call is made. The transformed payload is then passed to
  /// the [call] function, which invokes the actual API method.
  ///
  /// ## Parameters
  /// - `call` (`APICaller`): A function that can be used to invoke the
  ///   API method calls with the payload.
  /// - `method` (`APIMethod`): The actual API method being called.
  /// - `payload` (`Payload`): The payload of the API request, containing the
  ///   parameters and files to be sent.
  ///
  /// ## Returns
  /// - `FutureOr<Map<String, dynamic>>`: A future that completes with the result
  ///   of the API call, or the result directly if the transformation is
  ///   synchronous.
  ///
  /// ## Example
  /// Here's an example implementation of the `transform` method:
  ///
  /// ```dart
  /// class AutoReplyEnforcer implements Transformer {
  ///   @override
  ///   FutureOr<Map<String, dynamic>> transform(
  ///     APICaller call,
  ///     APIMethod method,
  ///     Payload payload,
  ///   ) async {
  ///     final isSendMethod = APIMethod.sendMethods.contains(method);
  ///     final isNotChatAction = method != APIMethod.sendChatAction;
  ///
  ///     if (isSendMethod && isNotChatAction) {
  ///       payload.params["reply_markup"] = ForceReply().toJson();
  ///     }
  ///
  ///     return await call(method, payload);
  ///   }
  /// }
  /// ```
  ///
  /// In this example, the `AutoReplyEnforcer` transformer adds a `ForceReply`
  /// markup to all send methods except for `sendChatAction`, and then invokes the
  /// actual API method with the modified payload.
  Future<Map<String, dynamic>> transform(
    APICaller call,
    APIMethod method, [
    Payload? payload,
  ]);

  /// Constructs a `Transformer` instance.
  const Transformer();
}
