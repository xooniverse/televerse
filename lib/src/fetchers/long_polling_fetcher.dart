// File: lib/src/fetchers/long_polling_fetcher.dart

part of '../../televerse.dart';

/// Long polling fetcher implementation.
///
/// This fetcher uses the `getUpdates` method to continuously poll for new updates
/// from the Telegram Bot API. It automatically handles offset management,
/// error recovery with exponential backoff, and graceful shutdown.
///
/// Example:
/// ```dart
/// final fetcher = LongPollingFetcher(
///   api,
///   config: LongPollingConfig(
///     timeout: 30,
///     limit: 100,
///   ),
/// );
///
/// await fetcher.start();
/// await for (final update in fetcher.updates) {
///   print('Received update: ${update.updateId}');
/// }
/// ```
class LongPollingFetcher implements UpdateFetcher {
  /// The RawAPI instance to use for fetching updates.
  final RawAPI _api;

  /// Configuration for this fetcher.
  final LongPollingConfig _config;

  /// Stream controller for updates.
  late final StreamController<Update> _updateController;

  /// Current offset for getUpdates calls.
  int _currentOffset = 0;

  /// Whether the fetcher is currently running.
  bool _isRunning = false;

  /// Completer that completes when the fetcher stops.
  Completer<void>? _stopCompleter;

  /// Timer for exponential backoff on errors.
  Timer? _backoffTimer;

  /// Current error count for exponential backoff.
  int _errorCount = 0;

  /// Maximum error count before giving up.
  static const int _maxErrorCount = 10;

  /// Creates a new long polling fetcher.
  ///
  /// Parameters:
  /// - [api]: The RawAPI instance to use
  /// - [config]: Configuration for the fetcher
  LongPollingFetcher(
    RawAPI api, {
    LongPollingConfig config = const LongPollingConfig(),
  }) : _api = api,
       _config = config {
    _updateController = StreamController<Update>.broadcast(
      onListen: _onListen,
      onCancel: _onCancel,
    );
  }

  @override
  Stream<Update> get updates => _updateController.stream;

  @override
  bool get isRunning => _isRunning;

  @override
  Future<void> start() async {
    if (_isRunning) return;

    _isRunning = true;
    _errorCount = 0;
    _stopCompleter = Completer<void>();

    // Drop pending updates if requested
    if (_config.dropPendingUpdates) {
      await _dropPendingUpdates();
    }

    // Start the polling loop
    unawaited(_pollingLoop());
  }

  @override
  Future<void> stop() async {
    if (!_isRunning) return;

    _isRunning = false;
    _backoffTimer?.cancel();
    _backoffTimer = null;

    // Wait for the polling loop to finish
    await _stopCompleter?.future;
    _stopCompleter = null;
  }

  @override
  Future<void> close() async {
    await stop();
    await _updateController.close();
  }

  /// Handles when someone starts listening to the updates stream.
  void _onListen() {
    // Automatically start if someone is listening and we're not running
    if (!_isRunning) {
      unawaited(start());
    }
  }

  /// Handles when all listeners cancel their subscription.
  void _onCancel() {
    // Optionally stop when no one is listening
    if (_config.stopWhenNoListeners && _isRunning) {
      unawaited(stop());
    }
  }

  /// The main polling loop.
  Future<void> _pollingLoop() async {
    try {
      while (_isRunning) {
        try {
          final updates = await _fetchUpdates();

          if (!_isRunning) break;

          // Process updates
          for (final update in updates) {
            if (!_isRunning) break;

            _updateController.add(update);
            _currentOffset = update.updateId + 1;
          }

          // Reset error count on successful fetch
          _errorCount = 0;
        } catch (error, stackTrace) {
          if (!_isRunning) break;

          await _handleError(error, stackTrace);
        }
      }
    } finally {
      _stopCompleter?.complete();
    }
  }

  /// Fetches updates from the API.
  Future<List<Update>> _fetchUpdates() async {
    return _api.getUpdates(
      offset: _currentOffset,
      limit: _config.limit,
      timeout: _config.timeout,
      allowedUpdates: _config.allowedUpdates,
    );
  }

  /// Handles errors during polling.
  Future<void> _handleError(Object error, StackTrace stackTrace) async {
    _errorCount++;

    // Create fetcher exception
    final fetcherError = FetcherException(
      'Error during long polling',
      originalError: error,
      stackTrace: stackTrace,
      errorCount: _errorCount,
    );

    // Emit error to stream if there are listeners
    if (_updateController.hasListener) {
      _updateController.addError(fetcherError, stackTrace);
    }

    // Stop if we've hit the maximum error count
    if (_errorCount >= _maxErrorCount) {
      _isRunning = false;
      return;
    }

    // Calculate backoff delay (exponential backoff with jitter)
    final baseDelay = math.min(30, math.pow(2, _errorCount).toInt());
    final jitter = math.Random().nextDouble() * 0.1; // 10% jitter
    final delay = Duration(seconds: (baseDelay * (1 + jitter)).toInt());

    // Wait before retrying
    if (_isRunning) {
      _backoffTimer = Timer(delay, () {
        // Timer callback - continue polling loop
      });
      await Future.delayed(delay);
    }
  }

  /// Drops pending updates by calling getUpdates with offset -1.
  Future<void> _dropPendingUpdates() async {
    try {
      await _api.getUpdates(offset: -1, limit: 1, timeout: 1);
    } catch (error) {
      // Ignore errors when dropping pending updates
      // This is a best-effort operation
    }
  }
}

/// Configuration for long polling fetcher.
class LongPollingConfig extends FetcherConfig {
  /// Timeout for long polling requests in seconds.
  ///
  /// Telegram supports up to 50 seconds. Higher values reduce server load
  /// but increase latency for new updates.
  final int timeout;

  /// Maximum number of updates to retrieve in a single request.
  ///
  /// Valid range is 1-100. Higher values are more efficient but may
  /// increase memory usage and processing time.
  final int limit;

  /// Whether to automatically stop fetching when no one is listening to the updates stream.
  final bool stopWhenNoListeners;

  /// Creates a new long polling configuration.
  ///
  /// Parameters:
  /// - [timeout]: Long polling timeout (1-50 seconds)
  /// - [limit]: Maximum updates per request (1-100)
  /// - [allowedUpdates]: Update types to receive
  /// - [dropPendingUpdates]: Whether to drop pending updates on start
  /// - [maxConcurrentUpdates]: Maximum concurrent update processing
  /// - [stopWhenNoListeners]: Whether to stop when no listeners
  const LongPollingConfig({
    this.timeout = 30,
    this.limit = 100,
    this.stopWhenNoListeners = false,
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 10,
  }) : assert(
         timeout >= 1 && timeout <= 50,
         'Timeout must be between 1 and 50 seconds',
       ),
       assert(limit >= 1 && limit <= 100, 'Limit must be between 1 and 100');

  /// Creates a configuration optimized for low latency.
  ///
  /// Uses shorter timeout for faster response to new updates.
  const LongPollingConfig.lowLatency({
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 10,
    this.stopWhenNoListeners = false,
  }) : timeout = 5,
       limit = 10;

  /// Creates a configuration optimized for high throughput.
  ///
  /// Uses longer timeout and higher limit for better efficiency.
  const LongPollingConfig.highThroughput({
    super.allowedUpdates,
    super.dropPendingUpdates = false,
    super.maxConcurrentUpdates = 50,
    this.stopWhenNoListeners = false,
  }) : timeout = 50,
       limit = 100;

  /// Creates a configuration for development/testing.
  ///
  /// Uses shorter timeout and stops when no listeners.
  const LongPollingConfig.development({
    super.allowedUpdates,
    super.dropPendingUpdates = true,
    super.maxConcurrentUpdates = 5,
  }) : timeout = 10,
       limit = 50,
       stopWhenNoListeners = true;

  @override
  String toString() {
    return 'LongPollingConfig('
        'timeout: ${timeout}s, '
        'limit: $limit, '
        'allowedUpdates: $allowedUpdates, '
        'dropPendingUpdates: $dropPendingUpdates'
        ')';
  }
}

/// Exception thrown by fetchers when an error occurs.
class FetcherException extends TeleverseException {
  /// The original error that caused this exception.
  final Object? originalError;

  /// The stack trace of the original error.
  final StackTrace? originalStackTrace;

  /// The number of consecutive errors that have occurred.
  final int errorCount;

  /// Creates a new fetcher exception.
  ///
  /// Parameters:
  /// - [message]: Description of the error
  /// - [originalError]: The underlying error that occurred
  /// - [stackTrace]: Stack trace of the original error
  /// - [errorCount]: Number of consecutive errors
  FetcherException(
    super.message, {
    this.originalError,
    super.stackTrace,
    this.errorCount = 1,
  }) : originalStackTrace = stackTrace,
       super(
         description: originalError?.toString(),
         type: TeleverseExceptionType.requestFailed,
       );

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('FetcherException: $message');
    if (originalError != null) {
      buffer.writeln('  Error: $originalError');
    }
    buffer.writeln('  Error Count: $errorCount');
    return buffer.toString();
  }
}
