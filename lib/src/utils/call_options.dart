part of '../../televerse.dart';

/// Configuration options for API method calls.
///
/// This class provides additional configuration that can be passed to RawAPI
/// methods to customize their behavior. Currently, it supports specifying
/// transformers that should be applied to the API call in addition to any
/// globally configured transformers.
///
/// ## Usage
///
/// ```dart
/// final options = CallOptions(
///   transformers: [MyCustomTransformer(), AnotherTransformer()],
/// );
///
/// await api.sendMessage(
///   chatId,
///   "Hello!",
///   callOptions: options,
/// );
/// ```
///
/// ## Context Integration
///
/// When using context-aware methods, the Context class automatically creates
/// CallOptions with its own transformers and passes them to the underlying
/// RawAPI calls. This ensures that any transformers added to a specific context
/// (via `ctx.use()`) are applied to all API calls made through that context.
///
/// ```dart
/// ctx.use(MyTransformer()); // Adds transformer to context
/// await ctx.reply("Hello!"); // MyTransformer is automatically applied
/// ```
class CallOptions {
  /// List of transformers to apply to the API call.
  ///
  /// These transformers are applied in addition to any globally configured
  /// transformers on the RawAPI instance. The transformers are executed in
  /// reverse order (last transformer is applied first) to create a chain
  /// of transformations.
  ///
  /// Transformers can modify the payload, intercept responses, add logging,
  /// implement retry logic, or perform any other cross-cutting concerns.
  ///
  /// Example:
  /// ```dart
  /// final options = CallOptions(
  ///   transformers: [
  ///     LoggingTransformer(),
  ///     RetryTransformer(maxRetries: 3),
  ///     AuthTransformer(),
  ///   ],
  /// );
  /// ```
  final List<Transformer> transformers;

  /// Creates a new [CallOptions] instance.
  ///
  /// ## Parameters
  ///
  /// - [transformers]: A list of [Transformer] instances that will be applied
  ///   to the API call. These are applied in addition to any global transformers
  ///   configured on the RawAPI instance.
  ///
  /// ## Example
  ///
  /// ```dart
  /// final options = CallOptions(
  ///   transformers: [MyCustomTransformer()],
  /// );
  ///
  /// // Use with any RawAPI method
  /// final message = await api.sendMessage(
  ///   ChatID(12345),
  ///   "Hello, World!",
  ///   callOptions: options,
  /// );
  /// ```
  const CallOptions({required this.transformers});
}
