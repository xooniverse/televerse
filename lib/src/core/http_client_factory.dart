// File: lib/src/core/http_client_factory.dart

import 'package:dio/dio.dart';
import 'package:televerse/src/core/http_client.dart';
import 'package:televerse/src/televerse/models/models.dart';

/// Factory class for creating HTTP client instances.
///
/// This factory provides convenient methods for creating different
/// types of HTTP clients based on the requirements.
class HttpClientFactory {
  /// Creates a default [DioHttpClient] with standard configuration.
  ///
  /// This client is suitable for most use cases with the Telegram Bot API.
  ///
  /// Parameters:
  /// - [timeout]: Connection timeout duration (default: 30 seconds)
  /// - [receiveTimeout]: Response receive timeout (default: 30 seconds)
  static HttpClient createDefault({
    Duration timeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
  }) {
    return DioHttpClient(
      timeout: timeout,
      receiveTimeout: receiveTimeout,
    );
  }

  /// Creates a [DioHttpClient] with a custom Dio instance.
  ///
  /// This allows for advanced configuration of the HTTP client,
  /// such as adding custom interceptors or modifying request/response handling.
  ///
  /// Parameters:
  /// - [dio]: The custom Dio instance to use
  static HttpClient createWithDio(Dio dio) {
    return DioHttpClient(dio: dio);
  }

  /// Creates a [DioHttpClient] configured for local Bot API usage.
  ///
  /// This client is optimized for use with a local Bot API server,
  /// which typically has different timeout requirements.
  ///
  /// Parameters:
  /// - [timeout]: Connection timeout duration (default: 60 seconds for local API)
  /// - [receiveTimeout]: Response receive timeout (default: 60 seconds)
  static HttpClient createForLocalAPI({
    Duration timeout = const Duration(seconds: 60),
    Duration receiveTimeout = const Duration(seconds: 60),
  }) {
    return DioHttpClient(
      timeout: timeout,
      receiveTimeout: receiveTimeout,
    );
  }

  /// Creates a mock HTTP client for testing purposes.
  ///
  /// This client can be used in unit tests to mock HTTP responses
  /// without making actual network requests.
  ///
  /// Parameters:
  /// - [responses]: A map of URL patterns to mock responses
  static HttpClient createMock({
    Map<String, Map<String, dynamic>>? responses,
  }) {
    return MockHttpClient(responses ?? {});
  }
}

/// Mock HTTP client implementation for testing purposes.
///
/// This client allows you to define mock responses for specific URLs,
/// making it easy to test your bot logic without making real HTTP requests.
class MockHttpClient implements HttpClient {
  /// Map of URL patterns to mock responses.
  final Map<String, Map<String, dynamic>> _responses;

  /// Request history for verification in tests.
  final List<MockRequest> _requestHistory = [];

  /// Creates a new [MockHttpClient] with the given mock responses.
  ///
  /// The responses map should contain URL patterns as keys and
  /// the expected response data as values.
  MockHttpClient(this._responses);

  @override
  Future<Map<String, dynamic>> post(String url, Payload payload) async {
    // Record the request for testing verification
    _requestHistory.add(MockRequest(
      url: url,
      payload: payload,
      timestamp: DateTime.now(),
    ));

    // Find matching response
    final response = _findResponse(url);

    if (response == null) {
      throw TeleverseException(
        'No mock response configured for URL: $url',
        description: 'Available URLs: ${_responses.keys.join(', ')}',
        type: TeleverseExceptionType.requestFailed,
      );
    }

    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 10));

    return Map<String, dynamic>.from(response);
  }

  /// Finds a mock response for the given URL.
  Map<String, dynamic>? _findResponse(String url) {
    // Exact match first
    if (_responses.containsKey(url)) {
      return _responses[url];
    }

    // Pattern matching (simple contains check)
    for (final pattern in _responses.keys) {
      if (url.contains(pattern) || pattern.contains('*')) {
        return _responses[pattern];
      }
    }

    return null;
  }

  @override
  Future<void> close() async {
    // Nothing to close in mock client
  }

  /// Adds a mock response for the specified URL pattern.
  ///
  /// This method can be used to dynamically add responses during testing.
  void addResponse(String urlPattern, Map<String, dynamic> response) {
    _responses[urlPattern] = response;
  }

  /// Gets the request history for testing verification.
  ///
  /// This allows tests to verify that the expected requests were made.
  List<MockRequest> get requestHistory => List.unmodifiable(_requestHistory);

  /// Clears the request history.
  ///
  /// This can be useful between test cases to start with a clean slate.
  void clearHistory() {
    _requestHistory.clear();
  }

  /// Gets the last request made to this client.
  ///
  /// Returns null if no requests have been made.
  MockRequest? get lastRequest =>
      _requestHistory.isEmpty ? null : _requestHistory.last;
}

/// Represents a recorded HTTP request for testing purposes.
class MockRequest {
  /// The URL that was requested.
  final String url;

  /// The payload that was sent with the request.
  final Payload payload;

  /// The timestamp when the request was made.
  final DateTime timestamp;

  /// Creates a new [MockRequest] instance.
  const MockRequest({
    required this.url,
    required this.payload,
    required this.timestamp,
  });

  /// Checks if this request was made to the specified URL pattern.
  bool matchesUrl(String pattern) {
    return url.contains(pattern) || pattern.contains('*');
  }

  /// Gets the value of a parameter from the request payload.
  dynamic getParam(String key) => payload.params[key];

  /// Checks if the request contained files.
  bool get hasFiles => payload.files != null && payload.files!.isNotEmpty;

  @override
  String toString() {
    return 'MockRequest(url: $url, hasFiles: $hasFiles, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MockRequest &&
        other.url == url &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode => url.hashCode ^ timestamp.hashCode;
}
