part of '../../televerse.dart';

/// HttpClient is used to send HTTP requests to the Telegram Bot API.
class _HttpClient {
  /// Construct client with optionally logging and custom Dio instance
  _HttpClient(
    this.loggerOptions, {
    this.timeout,
    Dio? dioInstance,
  }) : _dio = dioInstance ?? Dio() {
    // Only add logger interceptor if it doesn't already exist and loggerOptions is provided
    if (loggerOptions != null && !_hasLoggerInterceptor()) {
      _dio.interceptors.add(
        loggerOptions!.interceptor,
      );
    }
  }

  /// The Dio instance used for HTTP requests
  final Dio _dio;

  /// Log flag
  final LoggerOptions? loggerOptions;

  /// Timeout for the requests
  final Duration? timeout;

  /// Check if the Dio instance already has a logger interceptor
  bool _hasLoggerInterceptor() {
    if (loggerOptions == null) return false;

    return _dio.interceptors.any((interceptor) {
      // Check if it's the same type of interceptor
      return interceptor.runtimeType == loggerOptions!.interceptor.runtimeType;
    });
  }

  /// Returns the timeout duration for the given [uri]. The [timeout] will not be used for `getUpdates` requests.
  Duration? _timeoutDuration(Uri uri) {
    // If the URI is of getUpdates, ignore the timeout.
    if (uri.pathSegments.last == APIMethod.getUpdates.name) {
      return null;
    }
    return timeout;
  }

  // Throws formatted exception
  void _apiError(Object? e) {
    if (e is TelegramException) {
      throw e;
    }
    if (e is DioException) {
      if (e.response != null) {
        throw TelegramException.fromJson(
          e.response!.data,
          stack: e.stackTrace,
        );
      }
      throw e;
    }
  }

  /// All API calls go through this method :)
  Future<T> _makeApiCall<T>(
    Uri uri, {
    Payload? payload,
  }) async {
    payload ??= Payload();
    final hasFiles = payload.files?.isNotEmpty ?? false;
    if (hasFiles) {
      return await multipartPost(uri, payload);
    } else {
      return await postURI(uri, payload);
    }
  }

  /// Send POST request to the given [uri] and return the response body.
  Future<dynamic> postURI(
    Uri uri,
    Payload payload,
  ) async {
    payload.params.removeWhere(_nullFilter);

    try {
      final response = await _dio.postUri(
        uri,
        data: jsonEncode(payload.params),
        options: Options(
          headers: {"Content-Type": "application/json"},
          sendTimeout: _timeoutDuration(uri),
          receiveTimeout: _timeoutDuration(uri),
        ),
      );
      final resBody = response.data;
      if (resBody["ok"] == true) {
        return resBody;
      } else {
        throw TelegramException.fromJson(resBody);
      }
    } catch (e) {
      _apiError(e);
    }
  }

  /// Send Multipart POST request to the given [uri] and return the response body.
  Future<dynamic> multipartPost(
    Uri uri,
    Payload payload,
  ) async {
    payload.params.removeWhere(_nullFilter);

    final parameters = payload.params.map(_getEntry).entries;
    final filesMap = payload.files!.expand((element) => element.entries);
    final formData = FormData()
      ..fields.addAll(parameters)
      ..files.addAll(
        filesMap.map((e) => MapEntry(e.key, _toMultipartFile(e.value))),
      );

    try {
      final req = await _dio.postUri(
        uri,
        data: formData,
        options: Options(
          headers: {"Content-Type": "multipart/form-data"},
          responseType: ResponseType.json,
          sendTimeout: _timeoutDuration(uri),
          receiveTimeout: _timeoutDuration(uri),
        ),
      );
      final res = req.data;
      if (res["ok"] == true) {
        return res;
      } else {
        throw TelegramException.fromJson(res);
      }
    } catch (e) {
      _apiError(e);
    }
  }

  /// Convert the `MapEntry` to `MapEntry<String, String>`.
  MapEntry<String, String> _getEntry(String k, dynamic v) {
    if (v is List) {
      return MapEntry(k, jsonEncode(v));
    }
    if (v is Map) {
      return MapEntry(k, jsonEncode(v));
    }
    return MapEntry(k, "$v");
  }

  /// Close the client
  void close() {
    _dio.close();
  }

  /// Converts the [LocalFile] into a MultipartFile for sending along with the request.
  /// Converts the file into a `MultipartFile` instance
  MultipartFile _toMultipartFile(LocalFile file) {
    return MultipartFile.fromBytes(
      file.bytes,
      filename: file.fileName,
      contentType: file.contentType != null
          ? DioMediaType.parse(
              file.contentType!,
            )
          : null,
      headers: file.headers,
    );
  }

  /// Get the current Dio instance (useful for advanced configuration)
  Dio get dio => _dio;
}
