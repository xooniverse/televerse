// File: lib/src/core/transformer.dart
part of '../../televerse.dart';

/// Signature for the API caller function passed to transformers.
///
/// This function represents a call to the next transformer in the chain,
/// or to the actual API endpoint if this is the last transformer.
///
/// Parameters:
/// - [method]: The API method to call
/// - [payload]: The payload containing request parameters and files
///
/// Returns the API response as a Map.
typedef APICaller = Future<Map<String, dynamic>> Function(
  APIMethod method, [
  Payload? payload,
]);

/// Abstract base class for API request transformers.
///
/// Transformers allow you to intercept and modify outgoing API requests
/// before they are sent to the Telegram Bot API. This is useful for:
/// - Rate limiting and throttling
/// - Request logging and debugging
/// - Automatic retries with exponential backoff
/// - Request/response caching
/// - Modifying payloads on the fly
/// - Mock responses for testing
///
/// Example implementation:
/// ```dart
/// class LoggingTransformer extends Transformer {
///   @override
///   Future<Map<String, dynamic>> transform(
///     TransformerCaller next,
///     APIMethod method,
///     Payload payload,
///   ) async {
///     print('📤 Calling ${method.name}');
///
///     final startTime = DateTime.now();
///     try {
///       final result = await next(method, payload);
///       final duration = DateTime.now().difference(startTime);
///       print('✅ ${method.name} completed in ${duration.inMilliseconds}ms');
///       return result;
///     } catch (error) {
///       final duration = DateTime.now().difference(startTime);
///       print('❌ ${method.name} failed after ${duration.inMilliseconds}ms: $error');
///       rethrow;
///     }
///   }
/// }
/// ```
abstract class Transformer {
  /// Const Constructor
  const Transformer();

  /// Transforms an API request.
  ///
  /// This method receives the next transformer in the chain (or the actual
  /// API caller if this is the last transformer), the API method to call,
  /// and the payload containing request parameters.
  ///
  /// You can:
  /// - Modify the method or payload before calling `call`
  /// - Perform operations before and/or after calling `call`
  /// - Handle errors from `call`
  /// - Skip calling `next` entirely (though this is rarely useful)
  ///
  /// Parameters:
  /// - [call]: The next transformer in the chain or the API caller
  /// - [method]: The API method being called
  /// - [payload]: The request payload
  ///
  /// Returns the API response, which you can also modify if needed.
  Future<Map<String, dynamic>> transform(
    APICaller call,
    APIMethod method, [
    Payload? payload,
  ]);

  /// Optional name for this transformer (useful for debugging).
  String get name => runtimeType.toString();

  /// Optional description of what this transformer does.
  String? get description => null;

  @override
  String toString() {
    return description != null ? '$name: $description' : name;
  }
}

/// Manages a chain of transformers for API requests.
///
/// This class handles composing multiple transformers into a single
/// callable function that can be used by the RawAPI.
class TransformerManager {
  final List<Transformer> _transformers = [];

  /// Adds a transformer to the chain.
  ///
  /// Transformers are executed in the order they are added.
  /// The first transformer added will be the outermost in the chain.
  void addTransformer(Transformer transformer) {
    _transformers.add(transformer);
  }

  /// Removes a transformer from the chain.
  ///
  /// Returns true if the transformer was found and removed.
  bool removeTransformer(Transformer transformer) {
    return _transformers.remove(transformer);
  }

  /// Removes all transformers of the specified type.
  ///
  /// Returns the number of transformers removed.
  int removeTransformersOfType<T extends Transformer>() {
    final removedCount = _transformers.whereType<T>().length;
    _transformers.removeWhere((t) => t is T);
    return removedCount;
  }

  /// Gets a read-only list of all installed transformers.
  List<Transformer> get transformers => List.unmodifiable(_transformers);

  /// Creates a composed transformer caller that chains all transformers.
  ///
  /// This method builds a function that, when called, will execute all
  /// transformers in order, with the final call going to the provided
  /// [apiCaller].
  ///
  /// If no transformers are installed, returns the original [apiCaller].
  APICaller createCaller(APICaller apiCaller) {
    if (_transformers.isEmpty) {
      return apiCaller;
    }

    // Build the chain from the end (actual API call) to the beginning
    APICaller current = apiCaller;

    // Reverse iteration to build the chain correctly
    for (int i = _transformers.length - 1; i >= 0; i--) {
      final transformer = _transformers[i];
      final next = current; // Capture the current caller

      current = (method, [Payload? payload]) =>
          transformer.transform(next, method, payload);
    }

    return current;
  }

  /// Clears all transformers.
  void clear() {
    _transformers.clear();
  }

  /// Gets the number of installed transformers.
  int get length => _transformers.length;

  /// Checks if any transformers are installed.
  bool get isEmpty => _transformers.isEmpty;

  /// Checks if transformers are installed.
  bool get isNotEmpty => _transformers.isNotEmpty;

  @override
  String toString() {
    if (_transformers.isEmpty) {
      return 'TransformerManager(empty)';
    }

    return 'TransformerManager(${_transformers.length} transformers: '
        '${_transformers.map((t) => t.name).join(', ')})';
  }
}
