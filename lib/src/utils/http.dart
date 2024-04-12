part of '../../televerse.dart';

/// HttpClient is used to send HTTP requests to the Telegram Bot API.
class _HttpClient {
  /// Construc client with optionally logging
  _HttpClient(
    this.loggerOptions, {
    this.timeout,
  }) {
    if (loggerOptions != null) {
      _dio.interceptors.add(
        loggerOptions!.interceptor,
      );
    }
  }

  /// Initialize Dio
  final _dio = Dio();

  /// Log flag
  final LoggerOptions? loggerOptions;

  /// Timeout for the requests
  final Duration? timeout;

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

  /// Send POST request to the given [uri] and return the response body.
  Future<dynamic> postURI(
    Uri uri,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere(_nullFilter);

    try {
      final response = await _dio.postUri(
        uri,
        data: jsonEncode(body),
        options: Options(
          headers: {"Content-Type": "application/json"},
          sendTimeout: _timeoutDuration(uri),
          receiveTimeout: _timeoutDuration(uri),
        ),
      );
      final resBody = response.data;
      if (resBody["ok"] == true) {
        return resBody["result"];
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
    List<Map<String, MultipartFile>> files,
    Map<String, dynamic> body,
  ) async {
    body.removeWhere(_nullFilter);

    final parameters = body.map(_getEntry).entries;
    final filesMap = files.expand((element) => element.entries);
    final formData = FormData()
      ..fields.addAll(parameters)
      ..files.addAll(filesMap);

    try {
      final req = await _dio.postUri(
        uri,
        data: formData,
        options: Options(
          headers: {"Content-Type": "multipart/form-data"},
          responseType: ResponseType.json,
        ),
      );
      final res = req.data;
      if (res["ok"] == true) {
        return res["result"];
      } else {
        throw TelegramException.fromJson(res);
      }
    } catch (e) {
      _apiError(e);
    }
  }

  /// Convert the MapEntry to MapEntry<String, String>.
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
}
