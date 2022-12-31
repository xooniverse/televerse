part of televerse;

class LongPolling extends Fetcher {
  final Televerse televerse;
  int offset;
  final int timeout;
  final int limit;
  final List<String> allowedUpdates;

  static const int maxTimeout = 50;

  bool _isPolling = false;
  bool get isPolling => _isPolling;

  LongPolling(
    this.televerse, {
    this.offset = 0,
    this.timeout = 30,
    this.limit = 100,
    this.allowedUpdates = const [],
  }) {
    if (timeout > maxTimeout) throw LongPollingException.invalidTimeout;
    if (limit > 100) throw LongPollingException.invalidLimit;
  }

  Duration _retryDelay = Duration(seconds: 1);
  void _doubleRetryDelay() {
    _retryDelay *= 2;
    print(
      "We are doubling the retry delay to ${_retryDelay.inSeconds} seconds",
    );
  }

  void _resetRetryDelay() {
    _retryDelay = Duration(seconds: 1);
  }

  @override
  Future<void> start() async {
    if (_isPolling) throw LongPollingException.alreadyPolling;
    _isPolling = true;
    while (_isPolling) {
      await _poll();
    }
  }

  @override
  Future<void> stop() {
    _isPolling = false;
    return Future.value();
  }

  Future<void> _poll() async {
    if (!_isPolling) return;
    try {
      final updates = await televerse.getUpdates(
        offset: offset,
        limit: limit,
        timeout: timeout,
        allowedUpdates: allowedUpdates,
      );
      if (updates.isEmpty) return;
      for (var update in updates) {
        addUpdate(update);
        offset = update.updateId + 1;
      }

      await Future.delayed(Duration(seconds: _retryDelay.inSeconds));
      _resetRetryDelay();
    } catch (err) {
      if (err is HttpException && err.isClientException) {
        _isPolling = false;
        throw LongPollingException("Long polling stopped: ${err.message}");
      }

      await Future.delayed(_retryDelay);
      _doubleRetryDelay();
    }
  }
}
