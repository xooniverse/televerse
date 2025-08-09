// File: lib/src/transformers/built_in/logging_transformer.dart
part of '../../plugins.dart';

/// A comprehensive logging plugin for Telegram Bot API requests.
///
/// Provides detailed, configurable logs of API calls with timing information,
/// request/response data, headers, and error details. Perfect for development,
/// debugging, and production monitoring.
///
/// Example usage:
/// ```dart
/// final bot = Bot('TOKEN');
/// bot.plugn(LoggingPlugin(
///   options: LoggerOptions(
///     requestBody: true,
///     responseBody: true,
///     prettyPrint: true,
///     colorOutput: true,
///   ),
/// ));
/// ```
class LoggingPlugin implements TransformerPlugin {
  /// The logging configuration options.
  final LoggerOptions options;

  /// Creates an instance of the Logger.
  ///
  /// Parameters:
  /// - [options]: Logging configuration options (default: all enabled)
  const LoggingPlugin({this.options = const LoggerOptions()});

  @override
  List<String> get dependencies => [];

  @override
  String? get description => 'API request/response logging utility';

  @override
  void install(Bot<Context> bot) {
    bot.api.use(transformer);
  }

  @override
  String get name => 'logger';

  @override
  Transformer get transformer => _LoggingTransformer(options: options);

  @override
  void uninstall(Bot<Context> bot) {
    bot.api.removeTransformer(transformer);
  }

  @override
  String get version => '1.0.0';
}

class _LoggingTransformer extends Transformer {
  /// The logging configuration options.
  final LoggerOptions options;

  /// Creates a comprehensive logging transformer.
  ///
  /// Parameters:
  /// - [options]: Logging configuration options (default: all enabled)
  const _LoggingTransformer({
    this.options = const LoggerOptions(),
  });

  @override
  String get description => 'API request/response logging utility';

  @override
  Future<Map<String, dynamic>> transform(
    APICaller call,
    APIMethod method, [
    Payload? payload,
  ]) async {
    // Skip logging for methods not in the allowed list
    if (!options.methods.contains(method)) {
      return await call(method, payload);
    }

    final startTime = DateTime.now();
    final requestId = _generateRequestId();

    // Log outgoing request
    if (options.request) {
      _logRequest(method, requestId, payload);
    }

    try {
      final result = await call(method, payload);
      final duration = DateTime.now().difference(startTime);

      // Log successful response
      _logResponse(method, requestId, result, duration);

      return result;
    } catch (error, stackTrace) {
      final duration = DateTime.now().difference(startTime);

      // Log error
      if (options.error) {
        _logError(method, requestId, error, stackTrace, duration);
      }

      rethrow;
    }
  }

  /// Logs an outgoing request.
  void _logRequest(APIMethod method, String requestId, Payload? payload) {
    final timestamp = _formatTime(DateTime.now());
    final color = options.colorOutput ? '\x1B[36m' : '';
    final reset = options.colorOutput ? '\x1B[0m' : '';

    options.logPrint('$color📤 [$timestamp] ${method.name} [$requestId]$reset');

    // Log request body if enabled
    if (options.requestBody && payload != null) {
      _logRequestBody(payload);
    }
  }

  /// Logs request body data.
  void _logRequestBody(Payload payload) {
    options.logPrint('   ┌─ Request Body:');

    if (payload.params.isNotEmpty) {
      options.logPrint('   │  Parameters:');

      for (final entry in payload.params.entries) {
        final value = _formatValue(entry.value, truncate: !options.prettyPrint);
        options.logPrint('   │    ${entry.key}: $value');
      }
    }

    if (payload.files != null && payload.files!.isNotEmpty) {
      options.logPrint('   │  Files:');
      for (final fileMap in payload.files!) {
        for (final entry in fileMap.entries) {
          final file = entry.value;
          final size = file.bytes.length;
          final sizeStr = _formatFileSize(size);
          options.logPrint(
            '   │    ${entry.key}: ${file.fileName ?? 'unnamed'} ($sizeStr)',
          );
        }
      }
    }
  }

  /// Logs a successful response.
  void _logResponse(
    APIMethod method,
    String requestId,
    Map<String, dynamic> result,
    Duration duration,
  ) {
    final durationMs = duration.inMilliseconds;
    final color = options.colorOutput ? '\x1B[32m' : '';
    final reset = options.colorOutput ? '\x1B[0m' : '';

    options.logPrint(
      '$color✅ ${method.name} [$requestId] completed in ${durationMs}ms$reset',
    );

    // Log response body if enabled
    if (options.responseBody) {
      _logResponseBody(result);
    }
  }

  /// Logs response body data.
  void _logResponseBody(Map<String, dynamic> result) {
    options.logPrint('   ┌─ Response Body:');

    if (options.prettyPrint) {
      final prettyJson = _prettyPrintJson(result);
      for (final line in prettyJson.split('\n')) {
        options.logPrint('   │  $line');
      }
    } else {
      final summary = _getResponseSummary(result);
      options.logPrint('   │  $summary');
    }
  }

  /// Logs an error.
  void _logError(
    APIMethod method,
    String requestId,
    Object error,
    StackTrace? stackTrace,
    Duration duration,
  ) {
    final durationMs = duration.inMilliseconds;
    final color = options.colorOutput ? '\x1B[31m' : '';
    final reset = options.colorOutput ? '\x1B[0m' : '';

    options.logPrint(
      '$color❌ ${method.name} [$requestId] failed in ${durationMs}ms$reset',
    );

    // Log error details
    options.logPrint('   ┌─ Error Details:');

    if (error is TelegramException) {
      options.logPrint('   │  Type: Telegram API Error');
      options.logPrint('   │  Code: ${error.code}');
      options.logPrint('   │  Description: ${error.description}');
      if (error.parameters != null) {
        options.logPrint('   │  Parameters: ${error.parameters}');
      }
    } else if (error is TeleverseException) {
      options.logPrint('   │  Type: Televerse Error');
      options.logPrint('   │  Message: ${error.message}');
      if (error.description != null) {
        options.logPrint('   │  Description: ${error.description}');
      }
      options.logPrint('   │  Error Type: ${error.type}');
    } else {
      options.logPrint('   │  Type: ${error.runtimeType}');
      options.logPrint('   │  Message: ${error.toString()}');
    }

    // Log stack trace if enabled
    if (options.stackTrace && stackTrace != null) {
      options.logPrint('   │  Stack Trace:');
      final stackLines = stackTrace.toString().split('\n');
      for (final line in stackLines) {
        if (line.trim().isNotEmpty) {
          options.logPrint('   │    $line');
        }
      }
    }
  }

  /// Formats a value for display.
  String _formatValue(dynamic value, {bool truncate = true}) {
    if (value == null) return 'null';

    if (value is String) {
      if (truncate && value.length > 100) {
        return '"${value.substring(0, 97)}..."';
      }
      return '"$value"';
    } else if (value is List) {
      if (truncate) {
        return '[${value.length} items]';
      }
      return value.toString();
    } else if (value is Map) {
      if (truncate) {
        return '{${value.length} fields}';
      }
      return value.toString();
    } else if (value is InputFile) {
      return 'InputFile(${value.type})';
    } else if (value is ID) {
      return 'ID(${value.id})';
    } else {
      return value.toString();
    }
  }

  /// Formats file size in human-readable format.
  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '${bytes}B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)}KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)}MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)}GB';
  }

  /// Gets a summary of the response.
  String _getResponseSummary(Map<String, dynamic> response) {
    if (response.containsKey('result')) {
      final result = response['result'];
      if (result is List) {
        return 'Array with ${result.length} items';
      } else if (result is Map) {
        final map = result as Map<String, dynamic>;
        return 'Object with ${map.length} fields';
      } else {
        return '${result.runtimeType}: $result';
      }
    }
    return 'Unknown response type';
  }

  /// Pretty prints JSON with indentation.
  String _prettyPrintJson(Map<String, dynamic> json) {
    try {
      const encoder = JsonEncoder.withIndent('  ');
      return encoder.convert(json);
    } catch (e) {
      return json.toString();
    }
  }

  /// Formats time in HH:MM:SS.mmm format.
  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:'
        '${time.minute.toString().padLeft(2, '0')}:'
        '${time.second.toString().padLeft(2, '0')}.'
        '${time.millisecond.toString().padLeft(3, '0')}';
  }

  /// Generates a unique request ID for tracking.
  String _generateRequestId() {
    return DateTime.now()
        .millisecondsSinceEpoch
        .toRadixString(36)
        .toUpperCase();
  }
}

/// Configuration options for the logging transformer.
///
/// This class allows fine-grained control over what information is logged
/// during API requests and responses.
class LoggerOptions {
  /// Whether to log basic request information (method name, timestamp).
  final bool request;

  /// Whether to log request body (parameters and files).
  final bool requestBody;

  /// Whether to log response body data.
  final bool responseBody;

  /// Whether to log error information.
  final bool error;

  /// Whether to log error stack traces.
  final bool stackTrace;

  /// Custom log printing function. Defaults to [print].
  final void Function(String message) logPrint;

  /// List of API methods to log. If empty, all methods are logged.
  final List<APIMethod> methods;

  /// Whether to pretty print JSON data with indentation.
  final bool prettyPrint;

  /// Whether to use colored output in console.
  final bool colorOutput;

  /// Creates logging configuration options.
  ///
  /// By default, this constructor enables logging all parameters including
  /// [request], [requestBody], [responseBody], [error], and [stackTrace].
  ///
  /// Parameters:
  /// - [request]: Print request information (method, timestamp, ID)
  /// - [requestBody]: Print request parameters and files
  /// - [responseBody]: Print response data
  /// - [error]: Print error messages
  /// - [stackTrace]: Print error stack traces
  /// - [logPrint]: Custom log printer; defaults to [print]
  /// - [methods]: Specific methods to log; defaults to all methods
  /// - [prettyPrint]: Whether to pretty print JSON response bodies
  /// - [colorOutput]: Whether to use colored console output
  const LoggerOptions({
    this.request = true,
    this.requestBody = true,
    this.responseBody = true,
    this.error = true,
    this.stackTrace = true,
    this.logPrint = print,
    this.methods = APIMethod.values,
    this.prettyPrint = true,
    this.colorOutput = true,
  });

  /// Creates minimal logging options (only basic request/response info).
  const LoggerOptions.minimal({
    this.logPrint = print,
    this.methods = APIMethod.values,
    this.colorOutput = true,
  })  : request = true,
        requestBody = false,
        responseBody = false,
        error = true,
        stackTrace = false,
        prettyPrint = false;

  /// Creates detailed logging options (all information enabled).
  const LoggerOptions.detailed({
    this.logPrint = print,
    this.methods = APIMethod.values,
    this.colorOutput = true,
  })  : request = true,
        requestBody = true,
        responseBody = true,
        error = true,
        stackTrace = true,
        prettyPrint = true;

  /// Creates error-only logging options.
  const LoggerOptions.errorsOnly({
    this.logPrint = print,
    this.methods = APIMethod.values,
    this.colorOutput = true,
  })  : request = false,
        requestBody = false,
        responseBody = false,
        error = true,
        stackTrace = true,
        prettyPrint = false;

  /// Creates production-safe logging options (no sensitive data).
  const LoggerOptions.production({
    this.logPrint = print,
    this.methods = APIMethod.values,
    this.colorOutput = false,
  })  : request = true,
        requestBody = false,
        responseBody = false,
        error = true,
        stackTrace = false,
        prettyPrint = false;
}
