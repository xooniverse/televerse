// File: lib/src/fetchers/webhook_fetcher.dart
part of '../../televerse.dart';

/// Enhanced webhook fetcher with built-in HTTP server support.
///
/// This fetcher can either integrate with existing web servers (like the current
/// implementation) or run its own HTTP server for maximum simplicity.
///
/// **Simple standalone usage:**
/// ```dart
/// final bot = Bot<Context>('YOUR_BOT_TOKEN');
///
/// bot.command('start', (ctx) async {
///   await ctx.reply('Hello from webhook bot! 🚀');
/// });
///
/// // This is all you need!
/// await bot.startWebhook(
///   webhookUrl: 'https://your-domain.com/webhook',
///   port: 8080,
/// );
/// ```
///
/// **With custom configuration:**
/// ```dart
/// await bot.startWebhook(
///   webhookUrl: 'https://your-domain.com/webhook',
///   port: 8080,
///   secretToken: 'your-secret-token',
///   certificate: InputFile.fromFile(File('cert.pem')),
///   healthCheckPath: '/health',
///   corsEnabled: true,
/// );
/// ```
///
/// **For existing web servers (advanced usage):**
/// ```dart
/// final fetcher = WebhookFetcher();
/// // Use the existing handleWebhookRequest method
/// ```
class WebhookFetcher implements UpdateFetcher {
  /// The RawAPI instance (optional, for webhook management).
  final RawAPI? _api;

  /// Configuration for this fetcher.
  final WebhookConfig _config;

  /// Stream controller for updates.
  late final StreamController<Update> _updateController;

  /// Whether the fetcher is currently running.
  bool _isRunning = false;

  /// The built-in HTTP server (if using standalone mode).
  io.HttpServer? _httpServer;

  /// Statistics about webhook requests.
  WebhookStats _stats = WebhookStats.empty();

  /// Creates a new webhook fetcher.
  ///
  /// Parameters:
  /// - [api]: Optional RawAPI instance for webhook management
  /// - [config]: Configuration for the fetcher
  WebhookFetcher({
    RawAPI? api,
    WebhookConfig config = const WebhookConfig(),
  })  : _api = api,
        _config = config {
    _updateController = StreamController<Update>.broadcast();
  }

  @override
  Stream<Update> get updates => _updateController.stream;

  @override
  bool get isRunning => _isRunning;

  /// Gets webhook statistics.
  WebhookStats get stats => _stats;

  /// Gets the HTTP server instance (if running in standalone mode).
  io.HttpServer? get httpServer => _httpServer;

  /// Gets the webhook URL that's currently set.
  String? get webhookUrl => _config.webhookUrl;

  /// Gets the port the server is listening on.
  int? get port => _httpServer?.port ?? _config.port;

  @override
  Future<void> start() async {
    if (_isRunning) return;

    _isRunning = true;
    _stats = WebhookStats.empty();

    // Start built-in server if configured
    if (_config.useBuiltInServer) {
      await _startBuiltInServer();
    }

    // Set webhook URL if API and URL are provided
    if (_api != null && _config.webhookUrl != null) {
      await _setWebhook();
    }

    print('🌐 Webhook fetcher started successfully!');
    if (_config.useBuiltInServer) {
      print('📡 Built-in server running on http://localhost:$port');
      print('🔗 Webhook URL: ${_config.webhookUrl}');
    }
  }

  @override
  Future<void> stop() async {
    if (!_isRunning) return;

    print('🛑 Stopping webhook fetcher...');

    _isRunning = false;

    // Stop built-in server
    if (_httpServer != null) {
      await _httpServer!.close();
      _httpServer = null;
      print('🌐 Built-in server stopped');
    }

    // Optionally delete webhook
    if (_api != null && _config.deleteWebhookOnStop) {
      await _deleteWebhook();
    }

    print('✅ Webhook fetcher stopped successfully!');
  }

  @override
  Future<void> close() async {
    await stop();
    await _updateController.close();
  }

  /// Starts the built-in HTTP server.
  Future<void> _startBuiltInServer() async {
    if (_config.port == null) {
      throw TeleverseException(
        'Port must be specified to use built-in server',
        type: TeleverseExceptionType.invalidParameter,
      );
    }

    try {
      // Bind to the specified port
      _httpServer = await io.HttpServer.bind(
        _config.bindAddress ?? '0.0.0.0',
        _config.port!,
      );

      // Handle incoming requests
      _httpServer!.listen(_handleHttpRequest);
    } catch (error, stackTrace) {
      throw TeleverseException(
        'Failed to start built-in HTTP server on port ${_config.port}',
        description: error.toString(),
        stackTrace: stackTrace,
        type: TeleverseExceptionType.requestFailed,
      );
    }
  }

  /// Handles HTTP requests in the built-in server.
  Future<void> _handleHttpRequest(io.HttpRequest request) async {
    final path = request.uri.path;
    final method = request.method;

    try {
      // Handle CORS preflight requests
      if (_config.corsEnabled && method == 'OPTIONS') {
        _handleCorsRequest(request);
        return;
      }

      // Handle webhook endpoint
      if (method == 'POST' && path == _config.webhookPath) {
        final success = await handleHttpRequest(request);
        _sendResponse(
          request,
          success ? 200 : 400,
          success ? 'OK' : 'Bad Request',
        );
        return;
      }

      // Handle health check endpoint
      if (_config.healthCheckPath != null &&
          method == 'GET' &&
          path == _config.healthCheckPath) {
        final healthData = {
          'status': 'healthy',
          'uptime': _stats.lastRequestTime != null
              ? DateTime.now().difference(_stats.lastRequestTime!).inSeconds
              : 0,
          'totalRequests': _stats.totalRequests,
          'successRate': _stats.successRate,
        };
        _sendJsonResponse(request, 200, healthData);
        return;
      }

      // Handle root path with bot info
      if (method == 'GET' && (path == '/' || path.isEmpty)) {
        final botInfo = {
          'status': 'running',
          'bot': _api?.token.substring(0, 10) ?? 'unknown',
          'webhook': _config.webhookUrl,
          'stats': {
            'totalRequests': _stats.totalRequests,
            'validRequests': _stats.validRequests,
            'successRate': '${_stats.successRate.toStringAsFixed(1)}%',
          },
        };
        _sendJsonResponse(request, 200, botInfo);
        return;
      }

      // Handle 404 for unknown paths
      _sendResponse(request, 404, 'Not Found');
    } catch (error, stackTrace) {
      print('❌ Error handling HTTP request: $error');
      print(stackTrace);
      _sendResponse(request, 500, 'Internal Server Error');
    }
  }

  /// Handles CORS preflight requests.
  void _handleCorsRequest(io.HttpRequest request) {
    request.response
      ..headers.set('Access-Control-Allow-Origin', '*')
      ..headers.set('Access-Control-Allow-Methods', 'POST, GET, OPTIONS')
      ..headers.set(
        'Access-Control-Allow-Headers',
        'Content-Type, X-Telegram-Bot-Api-Secret-Token',
      )
      ..statusCode = 200
      ..close();
  }

  /// Sends a text response.
  void _sendResponse(io.HttpRequest request, int statusCode, String body) {
    if (_config.corsEnabled) {
      request.response.headers.set('Access-Control-Allow-Origin', '*');
    }

    request.response
      ..statusCode = statusCode
      ..headers.contentType = io.ContentType.text
      ..write(body)
      ..close();
  }

  /// Sends a JSON response.
  void _sendJsonResponse(
    io.HttpRequest request,
    int statusCode,
    Map<String, dynamic> data,
  ) {
    if (_config.corsEnabled) {
      request.response.headers.set('Access-Control-Allow-Origin', '*');
    }

    request.response
      ..statusCode = statusCode
      ..headers.contentType = io.ContentType.json
      ..write(jsonEncode(data))
      ..close();
  }

  /// Handles a webhook request from your web server.
  ///
  /// This method should be called from your web server's request handler
  /// when a POST request is received on your webhook endpoint.
  ///
  /// Parameters:
  /// - [requestBody]: The raw request body as a string
  /// - [headers]: Optional request headers for validation
  ///
  /// Returns true if the webhook was processed successfully, false otherwise.
  Future<bool> handleWebhookRequest(
    String requestBody, [
    Map<String, String>? headers,
  ]) async {
    if (!_isRunning) {
      return false;
    }

    try {
      // Validate secret token if configured
      if (_config.secretToken != null) {
        final tokenHeader = headers?['x-telegram-bot-api-secret-token'];
        if (tokenHeader != _config.secretToken) {
          _updateStats(valid: false, reason: 'Invalid secret token');
          return false;
        }
      }

      // Parse JSON
      final Map<String, dynamic> json;
      try {
        json = jsonDecode(requestBody) as Map<String, dynamic>;
      } catch (e) {
        _updateStats(valid: false, reason: 'Invalid JSON');
        return false;
      }

      // Create update object
      final Update update;
      try {
        update = Update.fromJson(json);
      } catch (e) {
        _updateStats(valid: false, reason: 'Invalid update format');
        return false;
      }

      // Filter update types if configured
      if (_config.allowedUpdates != null && !_isUpdateAllowed(update)) {
        _updateStats(valid: false, reason: 'Update type not allowed');
        return false;
      }

      // Emit update
      _updateController.add(update);
      _updateStats(valid: true);

      return true;
    } catch (error, stackTrace) {
      _updateStats(valid: false, reason: 'Processing error: $error');

      // Emit error to stream if there are listeners
      if (_updateController.hasListener) {
        final fetcherError = FetcherException(
          'Error processing webhook request',
          originalError: error,
          stackTrace: stackTrace,
        );
        _updateController.addError(fetcherError, stackTrace);
      }

      return false;
    }
  }

  /// Handles a webhook request from an HttpRequest (for dart:io servers).
  ///
  /// This is a convenience method for servers using dart:io directly.
  ///
  /// Parameters:
  /// - [request]: The HttpRequest object
  ///
  /// Returns true if the webhook was processed successfully, false otherwise.
  Future<bool> handleHttpRequest(io.HttpRequest request) async {
    if (request.method != 'POST') {
      return false;
    }

    try {
      final body = await utf8.decoder.bind(request).join();
      final headers = <String, String>{};

      request.headers.forEach((name, values) {
        headers[name.toLowerCase()] = values.join(', ');
      });

      return await handleWebhookRequest(body, headers);
    } catch (e) {
      return false;
    }
  }

  /// Manually adds an update to the stream.
  void addUpdate(Update update) {
    if (_isRunning) {
      _updateController.add(update);
      _updateStats(valid: true);
    }
  }

  /// Manually adds an error to the stream.
  void addError(Object error, [StackTrace? stackTrace]) {
    if (_isRunning && _updateController.hasListener) {
      _updateController.addError(error, stackTrace);
    }
  }

  /// Sets the webhook URL with Telegram.
  Future<void> _setWebhook() async {
    if (_api == null || _config.webhookUrl == null) return;

    try {
      print('🔗 Setting webhook URL: ${_config.webhookUrl}');
      await _api!.setWebhook(
        _config.webhookUrl!,
        certificate: _config.certificate,
        ipAddress: _config.ipAddress,
        maxConnections: _config.maxConnections,
        allowedUpdates: _config.allowedUpdates,
        dropPendingUpdates: _config.dropPendingUpdates,
        secretToken: _config.secretToken,
      );
      print('✅ Webhook set successfully!');
    } catch (error) {
      print('❌ Failed to set webhook: $error');
      throw TeleverseException(
        'Failed to set webhook URL',
        description: error.toString(),
        type: TeleverseExceptionType.requestFailed,
      );
    }
  }

  /// Deletes the webhook with Telegram.
  Future<void> _deleteWebhook() async {
    if (_api == null) return;

    try {
      print('🗑️ Deleting webhook...');
      await _api!.deleteWebhook(
        dropPendingUpdates: _config.dropPendingUpdates,
      );
      print('✅ Webhook deleted successfully!');
    } catch (error) {
      print('⚠️ Failed to delete webhook: $error');
    }
  }

  /// Checks if an update type is allowed based on configuration.
  bool _isUpdateAllowed(Update update) {
    final allowedUpdates = _config.allowedUpdates;
    if (allowedUpdates == null) return true;

    try {
      return allowedUpdates.contains(update.type);
    } catch (e) {
      return false;
    }
  }

  /// Updates webhook statistics.
  void _updateStats({required bool valid, String? reason}) {
    _stats = WebhookStats(
      totalRequests: _stats.totalRequests + 1,
      validRequests: _stats.validRequests + (valid ? 1 : 0),
      invalidRequests: _stats.invalidRequests + (valid ? 0 : 1),
      lastRequestTime: DateTime.now(),
      lastErrorReason: valid ? _stats.lastErrorReason : reason,
    );
  }
}

/// Enhanced configuration for webhook fetcher with built-in server support.
class WebhookConfig extends FetcherConfig {
  /// The webhook URL to set with Telegram.
  final String? webhookUrl;

  /// Whether to use the built-in HTTP server.
  final bool useBuiltInServer;

  /// Port for the built-in HTTP server.
  final int? port;

  /// Address to bind the server to (default: '0.0.0.0').
  final String? bindAddress;

  /// Path for webhook endpoint (default: '/webhook').
  final String webhookPath;

  /// Path for health check endpoint (optional).
  final String? healthCheckPath;

  /// Whether to enable CORS headers.
  final bool corsEnabled;

  /// Certificate for self-signed HTTPS.
  final InputFile? certificate;

  /// Fixed IP address for webhook.
  final String? ipAddress;

  /// Maximum allowed number of simultaneous HTTPS connections.
  final int? maxConnections;

  /// Secret token for webhook validation.
  final String? secretToken;

  /// Whether to delete the webhook when the fetcher stops.
  final bool deleteWebhookOnStop;

  /// Creates a new webhook configuration.
  const WebhookConfig({
    this.webhookUrl,
    this.useBuiltInServer = false,
    this.port,
    this.bindAddress,
    this.webhookPath = '/webhook',
    this.healthCheckPath,
    this.corsEnabled = false,
    this.certificate,
    this.ipAddress,
    this.maxConnections,
    this.secretToken,
    this.deleteWebhookOnStop = false,
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 10,
  }) : assert(
          maxConnections == null ||
              (maxConnections >= 1 && maxConnections <= 100),
          'maxConnections must be between 1 and 100',
        );

  /// Creates a configuration for the built-in server.
  ///
  /// This is the simplest way to run a webhook bot.
  ///
  /// Parameters:
  /// - [webhookUrl]: Your public webhook URL
  /// - [port]: Port to run the server on
  /// - [secretToken]: Optional secret token for security
  /// - [healthCheckPath]: Optional health check endpoint
  /// - [corsEnabled]: Whether to enable CORS
  WebhookConfig.server({
    required String this.webhookUrl,
    required int this.port,
    this.secretToken,
    this.webhookPath = '/webhook',
    this.healthCheckPath = '/health',
    this.corsEnabled = true,
    this.bindAddress,
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 20,
  })  : useBuiltInServer = true,
        certificate = null,
        ipAddress = null,
        maxConnections = 40,
        deleteWebhookOnStop = true;

  /// Creates a configuration for development with ngrok.
  WebhookConfig.ngrok(
    String ngrokUrl, {
    String path = '/webhook',
    int this.port = 8080,
    super.allowedUpdates,
    super.dropPendingUpdates = true,
    super.maxConcurrentUpdates = 5,
  })  : webhookUrl = '$ngrokUrl$path',
        useBuiltInServer = true,
        bindAddress = '0.0.0.0',
        webhookPath = path,
        healthCheckPath = '/health',
        corsEnabled = true,
        certificate = null,
        ipAddress = null,
        maxConnections = 10,
        secretToken = null,
        deleteWebhookOnStop = true;

  /// Creates a configuration for production deployment with built-in server.
  WebhookConfig.production({
    required String this.webhookUrl,
    required int this.port,
    required String this.secretToken,
    this.webhookPath = '/webhook',
    this.healthCheckPath = '/health',
    this.corsEnabled = false,
    this.bindAddress,
    int this.maxConnections = 40,
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 50,
  })  : useBuiltInServer = true,
        certificate = null,
        ipAddress = null,
        deleteWebhookOnStop = false;

  /// Creates a configuration for custom web server integration.
  ///
  /// Use this when you want to integrate with your existing web server.
  const WebhookConfig.custom({
    this.webhookUrl,
    this.secretToken,
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 20,
  })  : useBuiltInServer = false,
        port = null,
        bindAddress = null,
        webhookPath = '/webhook',
        healthCheckPath = null,
        corsEnabled = false,
        certificate = null,
        ipAddress = null,
        maxConnections = null,
        deleteWebhookOnStop = false;

  @override
  String toString() {
    return 'WebhookConfig('
        'url: $webhookUrl, '
        'builtin: $useBuiltInServer, '
        'port: $port, '
        'path: $webhookPath'
        ')';
  }
}

/// Statistics about webhook requests.
class WebhookStats {
  /// Total number of webhook requests received.
  final int totalRequests;

  /// Number of valid webhook requests.
  final int validRequests;

  /// Number of invalid webhook requests.
  final int invalidRequests;

  /// Time of the last webhook request.
  final DateTime? lastRequestTime;

  /// Reason for the last error (if any).
  final String? lastErrorReason;

  /// Creates webhook statistics.
  const WebhookStats({
    required this.totalRequests,
    required this.validRequests,
    required this.invalidRequests,
    this.lastRequestTime,
    this.lastErrorReason,
  });

  /// Creates empty statistics.
  const WebhookStats.empty()
      : totalRequests = 0,
        validRequests = 0,
        invalidRequests = 0,
        lastRequestTime = null,
        lastErrorReason = null;

  /// Success rate as a percentage.
  double get successRate {
    if (totalRequests == 0) return 0.0;
    return (validRequests / totalRequests) * 100;
  }

  /// Whether any requests have been received.
  bool get hasReceivedRequests => totalRequests > 0;

  /// Whether the last request was valid.
  bool get lastRequestWasValid => lastErrorReason == null;

  @override
  String toString() {
    return 'WebhookStats('
        'total: $totalRequests, '
        'valid: $validRequests, '
        'invalid: $invalidRequests, '
        'successRate: ${successRate.toStringAsFixed(1)}%'
        ')';
  }
}
