part of televerse.fetch;

/// A class that handles long polling.
/// This class is used to fetch updates from the Telegram API. It uses the long polling method.
class LongPolling extends Fetcher {
  /// The offset of the next update to fetch.
  int offset;

  /// The timeout of the long polling request.
  final int timeout;

  /// The maximum number of updates to fetch.
  final int limit;

  /// A list of update types to fetch.
  final List<UpdateType> allowedUpdates;

  /// The maximum timeout allowed by the Telegram API.
  static const int maxTimeout = 50;

  /// Status of the long polling, true if it is polling, false otherwise.
  bool _isPolling = false;

  /// Returns the status of the long polling.
  bool get isPolling => _isPolling;

  /// Constructs a new [LongPolling] object.
  ///
  /// The timeout must be between 0 and 50 seconds. The limit must be between 1 and 100.
  LongPolling({
    this.offset = 0,
    this.timeout = 30,
    this.limit = 100,
    this.allowedUpdates = const [],
  }) {
    if (timeout > maxTimeout) throw LongPollingException.invalidTimeout;
    if (limit > 100) throw LongPollingException.invalidLimit;
  }

  /// Retry delay for long polling.
  Duration _retryDelay = Duration(seconds: 1);

  /// Doubles the retry delay.
  void _doubleRetryDelay() {
    _retryDelay *= 2;
    print(
      "We are doubling the retry delay to ${_retryDelay.inSeconds} seconds",
    );
  }

  /// Resets the retry delay to 1 second.
  void _resetRetryDelay() {
    _retryDelay = Duration(seconds: 1);
  }

  /// Starts the long polling.
  @override
  Future<void> start() async {
    if (_isPolling) throw LongPollingException.alreadyPolling;
    _isPolling = true;
    while (_isPolling) {
      await _poll();
    }
  }

  /// Stops the long polling.
  @override
  Future<void> stop() async {
    _isPolling = false;
  }

  /// Polls the Telegram API for updates.
  Future<void> _poll() async {
    if (!_isPolling) return;
    try {
      final updates = await api.getUpdates(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates.map((e) => e.type).toList(),
      );
      for (var update in updates) {
        addUpdate(update);
        offset = update.updateId + 1;
      }

      await Future.delayed(Duration(milliseconds: 200));
      _resetRetryDelay();
    } catch (err, stackTrace) {
      if (err is HttpException && err.isClientException) {
        _isPolling = false;
        throw LongPollingException("Long polling stopped: ${err.message}");
      }
      print("Long polling failed: $err");
      print(stackTrace);

      await Future.delayed(_retryDelay);
      _doubleRetryDelay();
    }
  }
}
