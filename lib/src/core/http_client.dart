// File: lib/src/core/http_client.dart

part of '../../televerse.dart';

/// Abstract HTTP client interface for making API requests.
///
/// This interface provides methods for making both regular POST requests
/// and multipart POST requests for file uploads to the Telegram Bot API.
abstract class HttpClient {
  /// Makes a POST request to the specified [url] with the given [payload].
  ///
  /// If the [payload] contains files, this method should automatically
  /// handle the request as a multipart request. Otherwise, it should
  /// send the parameters as JSON.
  ///
  /// Returns the response data as a [Map<String, dynamic>].
  ///
  /// Throws [TeleverseException] if the request fails.
  Future<Map<String, dynamic>> post(String url, Payload payload);

  /// Closes the HTTP client and releases any resources.
  Future<void> close();
}

/// Dio-based implementation of [HttpClient].
///
/// This implementation uses the Dio package to make HTTP requests to the
/// Telegram Bot API. It automatically handles both regular JSON requests
/// and multipart file upload requests based on the payload content.
class DioHttpClient implements HttpClient {
  /// The underlying Dio instance used for making HTTP requests.
  final Dio _dio;

  /// Whether this client owns the Dio instance and should dispose it.
  final bool _ownsInstance;

  /// Creates a new [DioHttpClient] with an optional custom [Dio] instance.
  ///
  /// If [dio] is not provided, a new Dio instance will be created with
  /// default configuration suitable for Telegram Bot API requests.
  ///
  /// Parameters:
  /// - [dio]: Optional custom Dio instance to use for requests
  /// - [timeout]: Connection timeout duration (default: 30 seconds)
  /// - [receiveTimeout]: Response receive timeout (default: 30 seconds)
  DioHttpClient({
    Dio? dio,
    Duration? timeout,
    Duration? receiveTimeout,
  })  : _dio = dio ?? _createDefaultDio(timeout, receiveTimeout),
        _ownsInstance = dio == null;

  /// Creates a default Dio instance with appropriate configuration.
  static Dio _createDefaultDio(Duration? timeout, Duration? receiveTimeout) {
    final dio = Dio();

    dio.options = BaseOptions(
      connectTimeout: timeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: timeout,
      headers: {
        'Content-Type': 'application/json',
        'User-Agent': 'Televerse/1.0',
      },
      validateStatus: (status) => status != null && status < 500,
    );

    // Add interceptors for better error handling
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException error, ErrorInterceptorHandler handler) {
          // Convert Dio errors to TeleverseException
          final televerseError = _convertDioError(error);
          handler.reject(DioException(
            requestOptions: error.requestOptions,
            error: televerseError,
            type: error.type,
          ));
        },
      ),
    );

    return dio;
  }

  /// Converts a [DioException] to a [TeleverseException].
  static TeleverseException _convertDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return TeleverseException.timeoutException(
          error.stackTrace,
          Duration(
            milliseconds:
                error.requestOptions.connectTimeout?.inMilliseconds ?? 30000,
          ),
        );

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final responseData = error.response?.data;

        return TeleverseException(
          'HTTP $statusCode: Request failed',
          description:
              'Response: ${responseData?.toString() ?? 'No response data'}',
          type: TeleverseExceptionType.requestFailed,
        );

      case DioExceptionType.cancel:
        return TeleverseException(
          'Request was cancelled',
          type: TeleverseExceptionType.requestFailed,
        );

      case DioExceptionType.connectionError:
        return TeleverseException(
          'Connection error occurred',
          description: 'Failed to connect to Telegram servers. '
              'Check your internet connection.',
          type: TeleverseExceptionType.requestFailed,
        );

      default:
        return TeleverseException(
          'Network request failed',
          description: error.message ?? 'Unknown network error',
          type: TeleverseExceptionType.requestFailed,
        );
    }
  }

  @override
  Future<Map<String, dynamic>> post(String url, Payload payload) async {
    try {
      late Response<dynamic> response;

      if (payload.files != null && payload.files!.isNotEmpty) {
        // Handle multipart request for file uploads
        response = await _sendMultipartRequest(url, payload);
      } else {
        // Handle regular JSON request
        response = await _sendJsonRequest(url, payload);
      }

      return _processResponse(response);
    } on DioException catch (_) {
      // Re-throw as the error interceptor will handle conversion
      rethrow;
    } catch (e, stackTrace) {
      throw TeleverseException(
        'Unexpected error during HTTP request',
        description: e.toString(),
        stackTrace: stackTrace,
        type: TeleverseExceptionType.requestFailed,
      );
    }
  }

  /// Sends a regular JSON POST request.
  Future<Response<dynamic>> _sendJsonRequest(
      String url, Payload payload) async {
    return await _dio.post(
      url,
      data: jsonEncode(payload.params),
      options: Options(
        contentType: 'application/json',
      ),
    );
  }

  /// Sends a multipart POST request for file uploads.
  Future<Response<dynamic>> _sendMultipartRequest(
    String url,
    Payload payload,
  ) async {
    final formData = FormData();

    // Add regular parameters
    payload.params.forEach((key, value) {
      if (value != null) {
        formData.fields.add(MapEntry(key, value.toString()));
      }
    });

    // Add files
    for (final fileMap in payload.files!) {
      for (final entry in fileMap.entries) {
        final fieldName = entry.key;
        final localFile = entry.value;

        final multipartFile = MultipartFile.fromBytes(
          localFile.bytes,
          filename: localFile.fileName,
          contentType: localFile.contentType != null
              ? http_parser.MediaType.parse(localFile.contentType!)
              : null,
          headers: localFile.headers,
        );

        formData.files.add(MapEntry(fieldName, multipartFile));
      }
    }

    return await _dio.post(
      url,
      data: formData,
      options: Options(
        contentType: 'multipart/form-data',
      ),
    );
  }

  /// Processes the HTTP response and extracts the data.
  Map<String, dynamic> _processResponse(Response<dynamic> response) {
    final statusCode = response.statusCode;

    if (statusCode == null || statusCode >= 400) {
      throw TeleverseException(
        'HTTP $statusCode: Request failed',
        description:
            'Response: ${response.data?.toString() ?? 'No response data'}',
        type: TeleverseExceptionType.requestFailed,
      );
    }

    final data = response.data;

    if (data is Map<String, dynamic>) {
      return data;
    } else if (data is String) {
      try {
        final decoded = jsonDecode(data);
        if (decoded is Map<String, dynamic>) {
          return decoded;
        }
      } catch (e) {
        // If JSON decode fails, fall through to error
      }
    }

    throw TeleverseException(
      'Invalid response format',
      description: 'Expected JSON object, got: ${data.runtimeType}',
      type: TeleverseExceptionType.requestFailed,
    );
  }

  @override
  Future<void> close() async {
    if (_ownsInstance) {
      _dio.close();
    }
  }

  /// Gets the underlying Dio instance.
  ///
  /// This can be useful for adding interceptors or modifying
  /// the configuration of the HTTP client.
  Dio get dio => _dio;
}
