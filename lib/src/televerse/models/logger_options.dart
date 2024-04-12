part of '../../../televerse.dart';

/// Debug Print
void _debugPrint(Object? object) {
  assert(() {
    print(object);
    return true;
  }());
}

/// This class represents the logger options.
///
/// Instance of [LoggerOptions] can be passed to the [Bot] / [Bot] instance.
/// This will setup logging the request and response data your bot makes.
///
/// This will be useful in cases like debugging your code, etc.
///
/// Example:
/// ```dart
/// final bot = Bot(
///    "<YOUR TOKEN>",
///    loggerOptions: LoggerOptions(
///      methods: [
///        APIMethod.sendMessage,
///        APIMethod.getMe,
///      ],
///    ),
///  );
/// ```
class LoggerOptions {
  /// Creates a new [LoggerOptions] instance. This can be used to configure logging the
  /// request and response data Televerse makes and receives.
  ///
  /// By default this constructor enabled logging all of the parameters such as `request`., `requestHeader`., `requestBody`., `responseHeader`., `responseBody`., error, and `stackTrace`.
  ///
  /// - [request] - Print request [Options]
  /// - [requestHeader] - Print request header [Options.headers]
  /// - [requestBody] - Print request data [Options]
  /// - [responseHeader] - Print [Response.headers]
  /// - [responseBody] - Print [Response.data]
  /// - [error] - Print error message
  /// - [stackTrace] - Print error stack trace [DioException.stackTrace]
  /// - [logPrint] - Log printer; defaults print log to console.
  /// - [methods] - Methods to be logged.
  /// - [prettyPrint] - Whether to pretty print the response body
  const LoggerOptions({
    this.request = true,
    this.requestHeader = true,
    this.requestBody = true,
    this.responseHeader = true,
    this.responseBody = true,
    this.error = true,
    this.stackTrace = true,
    this.logPrint = _debugPrint,
    List<APIMethod>? methods,
    this.prettyPrint = true,
  }) : methods = methods ?? APIMethod.values; // Default all methods

  /// Creates a new [LoggerOptions] instance with only specified configuration.
  ///
  /// All of the parameters are turned off by default.
  ///
  /// - [request] - Print request [Options]
  /// - [requestHeader] - Print request header [Options.headers]
  /// - [requestBody] - Print request data [Options]
  /// - [responseHeader] - Print [Response.headers]
  /// - [responseBody] - Print [Response.data]
  /// - [error] - Print error message
  /// - [stackTrace] - Print error stack trace [DioException.stackTrace]
  /// - [logPrint] - Log printer; defaults print log to console.
  /// - [methods] - Methods to be logged.
  /// - [prettyPrint] - Whether to pretty print the response body
  const LoggerOptions.only({
    this.request = false,
    this.requestHeader = false,
    this.requestBody = false,
    this.responseHeader = false,
    this.responseBody = false,
    this.error = false,
    this.stackTrace = false,
    this.logPrint = _debugPrint,
    List<APIMethod>? methods,
    this.prettyPrint = true,
  }) : methods = methods ?? APIMethod.values; // Default all methods

  /// Print request [Options]
  final bool request;

  /// Print request header [Options.headers]
  final bool requestHeader;

  /// Print request data [Options]
  final bool requestBody;

  /// Print [Response.data]
  final bool responseBody;

  /// Print [Response.headers]
  final bool responseHeader;

  /// Print error message
  final bool error;

  /// Print error stack trace [DioException.stackTrace]
  final bool stackTrace;

  /// Log printer; defaults print log to console.
  final void Function(Object? object) logPrint;

  /// Methods to be logged.
  final List<APIMethod> methods;

  /// Should the logger pretty print the response body
  final bool prettyPrint;

  /// Returns true if the given [method] is allowed.
  bool isAllowed(APIMethod method) {
    return methods.contains(method);
  }

  /// Returns the interceptor to be used in [Dio].
  Interceptor get interceptor {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        if (request) {
          final path = options.uri.pathSegments.last;
          final allowed = APIMethod.isExistingMethod(path) &&
              isAllowed(APIMethod.method(path));
          if (!allowed) return handler.next(options);
          logPrint('*** Request ***');
          _printKV('uri', options.uri);

          if (request) {
            _printKV('method', options.method);
            _printKV('responseType', options.responseType.toString());
            _printKV('followRedirects', options.followRedirects);
            _printKV('persistentConnection', options.persistentConnection);
            _printKV('connectTimeout', options.connectTimeout);
            _printKV('sendTimeout', options.sendTimeout);
            _printKV('receiveTimeout', options.receiveTimeout);
            _printKV(
              'receiveDataWhenStatusError',
              options.receiveDataWhenStatusError,
            );
            _printKV('extra', options.extra);
          }
          if (requestHeader) {
            logPrint('headers:');
            options.headers.forEach((key, v) => _printKV(' $key', v));
          }
          if (requestBody) {
            logPrint('data:');
            _printAll(options.data);
          }
          logPrint('');
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
          _printResponse(response);
        }
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        final path = e.requestOptions.uri.pathSegments.last;
        final allowed = APIMethod.isExistingMethod(path) &&
            isAllowed(APIMethod.method(path));
        final error = allowed && this.error;
        if (error) {
          logPrint("--- [Logger]: Error ---");
          if (e.response != null) {
            final encoded = JsonEncoder.withIndent("  ").convert(
              e.response?.data,
            );
            logPrint("Telegram Exception:\n$encoded");
            logPrint("");
          }
          if (stackTrace) {
            logPrint("Stack Trace:");
            logPrint(e.stackTrace);
          }
          logPrint("--- [Logger]: End Error ---\n");
        }
        return handler.next(e);
      },
    );
  }

  void _printKV(String key, Object? v) {
    logPrint('$key: $v');
  }

  void _printAll(msg) {
    if (msg is FormData) {
      logPrint(" - files:");
      for (final e in msg.files) {
        logPrint('    ${e.key}: ${e.value}');
      }
      logPrint(" - fields:");
      for (final e in msg.fields) {
        logPrint('    ${e.key}: ${e.value}');
      }
    } else {
      msg.toString().split('\n').forEach(logPrint);
    }
  }

  void _printResponse(Response response) {
    _printKV('uri', response.requestOptions.uri);
    if (responseHeader) {
      _printKV('statusCode', response.statusCode);
      if (response.isRedirect == true) {
        _printKV('redirect', response.realUri);
      }

      logPrint('headers:');
      response.headers.forEach((key, v) => _printKV(' $key', v.join('\r\n\t')));
    }
    if (responseBody) {
      logPrint('Response Text:');
      try {
        if (prettyPrint) {
          _printAll(JsonEncoder.withIndent("  ").convert(response.data));
        } else {
          throw 0;
        }
      } catch (_) {
        _printAll(response.toString());
      }
    }
    logPrint('');
  }
}
