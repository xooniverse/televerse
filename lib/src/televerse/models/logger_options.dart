part of televerse;

/// Debug Print
void _debugPrint(Object? object) {
  assert(() {
    print(object);
    return true;
  }());
}

/// This class represents the logger options.
class LoggerOptions {
  /// Options
  LoggerOptions({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = true,
    this.responseHeader = true,
    this.responseBody = true,
    this.error = true,
    this.logPrint = _debugPrint,
    this.methods = const [],
  });

  /// Print request [Options]
  bool request;

  /// Print request header [Options.headers]
  bool requestHeader;

  /// Print request data [Options]
  bool requestBody;

  /// Print [Response.data]
  bool responseBody;

  /// Print [Response.headers]
  bool responseHeader;

  /// Print error message
  bool error;

  /// Log printer; defaults print log to console.
  void Function(Object object) logPrint;

  /// Methods to be logged.
  List<APIMethod> methods;

  /// Returns true if the given [method] is allowed.
  bool isAllowed(APIMethod method) {
    return methods.contains(method);
  }

  /// Returns the interceptor to be used in [Dio].
  Interceptor get interceptor {
    JsonEncoder encoder = JsonEncoder.withIndent('  ');
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        if (request) {
          final path = options.uri.pathSegments.last;
          final allowed = APIMethod.isExistingMethod(path) &&
              isAllowed(APIMethod.method(path));
          if (allowed) {
            logPrint("***** -->\nRequest: ${options.method} ${options.uri}");
            if (requestHeader) {
              logPrint("Headers:");
              logPrint(encoder.convert(options.headers));
            }
            if (requestBody) {
              logPrint("Body:");
              logPrint(encoder.convert(options.data));
            }
          }
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        final path = response.requestOptions.uri.pathSegments.last;
        final allowed = APIMethod.isExistingMethod(path) &&
            isAllowed(APIMethod.method(path));
        if (!allowed) {
          return handler.next(response);
        }
        if (responseBody) {
          logPrint(
            "<-- *****\nResponse: ${response.statusCode} ${response.requestOptions.uri}",
          );
          if (responseHeader) {
            logPrint("Headers:");
            logPrint(encoder.convert(response.headers.map));
          }
          logPrint("Response Data:");
          logPrint(encoder.convert(jsonDecode(response.data)));
        }
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        final path = e.requestOptions.uri.pathSegments.last;
        final allowed = APIMethod.isExistingMethod(path) &&
            isAllowed(APIMethod.method(path));
        final error = allowed && this.error;
        if (error) {
          logPrint("<-- Error -->");
          logPrint(e);
          logPrint("<-- End Error -->");
        }
        return handler.next(e);
      },
    );
  }
}
