import 'package:televerse/src/telegram/telegram.dart';
import 'package:televerse/src/televerse/fetch/fetch.dart';
import 'package:televerse/src/televerse/models/http_exception.dart';
import 'package:televerse/src/televerse/models/long_polling_exception.dart';

class LongPolling extends Fetcher {
  final Telegram telegram;
  int offset;
  final int timeout;
  final int limit;
  final List<String> allowedUpdates;

  static const int maxTimeout = 50;

  bool _isPolling = false;
  bool get isPolling => _isPolling;

  LongPolling({
    required this.telegram,
    this.offset = 0,
    this.timeout = 30,
    this.limit = 100,
    this.allowedUpdates = const [],
  }) {
    if (timeout > maxTimeout) throw LongPollingException.invalidTimeout;
    if (limit > 100) throw LongPollingException.invalidLimit;
  }

  Duration _retryDelay = Duration(minutes: 1);
  void _doubleRetryDelay() {
    _retryDelay *= 2;
  }

  void _resetRetryDelay() {
    _retryDelay = Duration(minutes: 1);
  }

  @override
  Future<void> start() async {
    while (_isPolling) {
      _poll();
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
      final updates = await telegram.getUpdates(
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
      await Future.delayed(Duration(seconds: 1));
      _poll();
      _resetRetryDelay();
    } catch (err) {
      if (err is HttpException && err.isClientException) {
        _isPolling = false;
        throw LongPollingException("$err");
      }

      await Future.delayed(_retryDelay);
      _doubleRetryDelay();
      _poll();
    }
  }
}
