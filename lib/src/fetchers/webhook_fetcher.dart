// File: lib/src/fetchers/webhook_fetcher.dart

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:televerse/src/core/fetcher.dart';
import 'package:televerse/src/core/raw_api.dart';
import 'package:televerse/src/fetchers/long_polling_fetcher.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

/// Webhook fetcher implementation.
///
/// This fetcher provides flexible webhook handling that can integrate with
/// any Dart web server framework (Shelf, Angel, Aqueduct, etc.).
///
/// The fetcher doesn't run its own web server. Instead, it provides methods
/// to handle webhook requests that you can integrate into your existing
/// web server setup.
///
/// Example with Shelf:
/// ```dart
/// import 'package:shelf/shelf.dart';
/// import 'package:shelf/shelf_io.dart';
///
/// final fetcher = WebhookFetcher();
///
/// final handler = Pipeline()
///   .addHandler((request) async {
///     if (request.method == 'POST' && request.url.path == '/webhook') {
///       final body = await request.readAsString();
///       final handled = await fetcher.handleWebhookRequest(body);
///       return handled
///         ? Response.ok('OK')
///         : Response.badRequest('Invalid webhook data');
///     }
///     return Response.notFound('Not Found');
///   });
///
/// final server = await serve(handler, 'localhost', 8080);
/// await fetcher.start();
///
/// // Set webhook URL with Telegram
/// await api.setWebhook('https://yourdomain.com/webhook');
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

  @override
  Future<void> start() async {
    if (_isRunning) return;

    _isRunning = true;
    _stats = WebhookStats.empty();

    // Optionally set webhook URL if API and URL are provided
    if (_api != null && _config.webhookUrl != null) {
      await _setWebhook();
    }
  }

  @override
  Future<void> stop() async {
    if (!_isRunning) return;

    _isRunning = false;

    // Optionally delete webhook if API is provided
    if (_api != null && _config.deleteWebhookOnStop) {
      await _deleteWebhook();
    }
  }

  @override
  Future<void> close() async {
    await stop();
    await _updateController.close();
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
  ///
  /// Example:
  /// ```dart
  /// // In your Shelf handler
  /// final body = await request.readAsString();
  /// final headers = request.headers;
  /// final success = await fetcher.handleWebhookRequest(body, headers);
  /// ```
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
  ///
  /// Example:
  /// ```dart
  /// // In your dart:io server
  /// await for (HttpRequest request in server) {
  ///   if (request.method == 'POST' && request.uri.path == '/webhook') {
  ///     final success = await fetcher.handleHttpRequest(request);
  ///     request.response
  ///       ..statusCode = success ? 200 : 400
  ///       ..write(success ? 'OK' : 'Bad Request')
  ///       ..close();
  ///   }
  /// }
  /// ```
  Future<bool> handleHttpRequest(HttpRequest request) async {
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
  ///
  /// This can be useful for testing or if you're receiving updates
  /// through a different mechanism.
  ///
  /// Parameters:
  /// - [update]: The update to add
  void addUpdate(Update update) {
    if (_isRunning) {
      _updateController.add(update);
      _updateStats(valid: true);
    }
  }

  /// Manually adds an error to the stream.
  ///
  /// Parameters:
  /// - [error]: The error to add
  /// - [stackTrace]: Optional stack trace
  void addError(Object error, [StackTrace? stackTrace]) {
    if (_isRunning && _updateController.hasListener) {
      _updateController.addError(error, stackTrace);
    }
  }

  /// Sets the webhook URL with Telegram.
  Future<void> _setWebhook() async {
    if (_api == null || _config.webhookUrl == null) return;

    try {
      await _api!.setWebhook(
        _config.webhookUrl!,
        certificate: _config.certificate,
        ipAddress: _config.ipAddress,
        maxConnections: _config.maxConnections,
        allowedUpdates: _config.allowedUpdates,
        dropPendingUpdates: _config.dropPendingUpdates,
        secretToken: _config.secretToken,
      );
    } catch (error) {
      // Log error but don't fail - user might set webhook manually
      print('Warning: Failed to set webhook: $error');
    }
  }

  /// Deletes the webhook with Telegram.
  Future<void> _deleteWebhook() async {
    if (_api == null) return;

    try {
      await _api!.deleteWebhook(
        dropPendingUpdates: _config.dropPendingUpdates,
      );
    } catch (error) {
      // Log error but don't fail
      print('Warning: Failed to delete webhook: $error');
    }
  }

  /// Checks if an update type is allowed based on configuration.
  ///
  /// This method uses the UpdateExt extension to determine the update type
  /// and checks it against the configured allowed update types.
  bool _isUpdateAllowed(Update update) {
    final allowedUpdates = _config.allowedUpdates;
    if (allowedUpdates == null) return true;

    try {
      return allowedUpdates.contains(update.type);
    } catch (e) {
      // If update type cannot be determined, reject it
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

/// Configuration for webhook fetcher.
class WebhookConfig extends FetcherConfig {
  /// The webhook URL to set with Telegram.
  ///
  /// If provided along with a RawAPI instance, the webhook will be
  /// automatically set when the fetcher starts.
  final String? webhookUrl;

  /// Certificate for self-signed HTTPS.
  ///
  /// Required if using a self-signed certificate for HTTPS.
  final InputFile? certificate;

  /// Fixed IP address for webhook.
  ///
  /// If provided, Telegram will only send webhooks to this IP.
  final String? ipAddress;

  /// Maximum allowed number of simultaneous HTTPS connections.
  ///
  /// Valid range is 1-100. Default is 40.
  final int? maxConnections;

  /// Secret token for webhook validation.
  ///
  /// If provided, Telegram will include this token in the
  /// X-Telegram-Bot-Api-Secret-Token header of webhook requests.
  final String? secretToken;

  /// Whether to delete the webhook when the fetcher stops.
  final bool deleteWebhookOnStop;

  /// Creates a new webhook configuration.
  ///
  /// Parameters:
  /// - [webhookUrl]: The URL where Telegram should send updates
  /// - [certificate]: Certificate for self-signed HTTPS
  /// - [ipAddress]: Fixed IP address for webhook
  /// - [maxConnections]: Maximum simultaneous connections (1-100)
  /// - [secretToken]: Secret token for request validation
  /// - [deleteWebhookOnStop]: Whether to delete webhook on stop
  /// - [allowedUpdates]: Update types to receive
  /// - [dropPendingUpdates]: Whether to drop pending updates
  /// - [maxConcurrentUpdates]: Maximum concurrent update processing
  const WebhookConfig({
    this.webhookUrl,
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
            'maxConnections must be between 1 and 100');

  /// Creates a configuration for development with ngrok.
  ///
  /// Useful for testing webhooks locally with ngrok.
  ///
  /// Parameters:
  /// - [ngrokUrl]: Your ngrok URL (e.g., 'https://abc123.ngrok.io')
  /// - [path]: Webhook path (default: '/webhook')
  WebhookConfig.ngrok(
    String ngrokUrl, {
    String path = '/webhook',
    super.allowedUpdates,
    super.dropPendingUpdates = true,
    super.maxConcurrentUpdates = 5,
  })  : webhookUrl = '$ngrokUrl$path',
        certificate = null,
        ipAddress = null,
        maxConnections = 10,
        secretToken = null,
        deleteWebhookOnStop = true;

  /// Creates a configuration for production deployment.
  ///
  /// Parameters:
  /// - [webhookUrl]: Your production webhook URL
  /// - [secretToken]: Secret token for security
  /// - [maxConnections]: Maximum connections (default: 40)
  WebhookConfig.production(
    this.webhookUrl, {
    this.secretToken,
    this.maxConnections = 40,
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 20,
  })  : certificate = null,
        ipAddress = null,
        deleteWebhookOnStop = false;

  @override
  String toString() {
    return 'WebhookConfig('
        'url: $webhookUrl, '
        'maxConnections: $maxConnections, '
        'hasSecretToken: ${secretToken != null}, '
        'allowedUpdates: $allowedUpdates'
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
