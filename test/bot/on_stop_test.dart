import 'dart:async';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

class MockFetcher extends UpdateFetcher {
  final _controller = StreamController<Update>();
  bool _isRunning = false;

  @override
  Stream<Update> get updates => _controller.stream;

  @override
  Future<void> start() async {
    _isRunning = true;
  }

  @override
  Future<void> stop() async {
    _isRunning = false;
    await _controller.close();
  }

  @override
  Future<void> close() async {
    if (_isRunning) await stop();
  }

  @override
  bool get isRunning => _isRunning;
}

void main() {
  group('Bot.stop', () {
    late Bot bot;

    setUp(() {
      bot = Bot('12345:ABC-DEF1234ghIkl-zyx57W2v1u123ew11');
    });

    test('calls onStop handler when stopped', () async {
      bool onStopCalled = false;

      bot.onStop(() {
        onStopCalled = true;
      });

      final fetcher = MockFetcher();

      // Start the bot in background
      final startFuture = bot.start(fetcher);

      // Wait a bit to ensure it started
      await Future.delayed(Duration(milliseconds: 50));
      expect(fetcher.isRunning, isTrue);

      // Stop the bot
      await bot.stop();

      expect(onStopCalled, isTrue);
      await startFuture;
    });

    test('calls asynchronous onStop handler', () async {
      bool onStopCalled = false;
      final completer = Completer<void>();

      bot.onStop(() async {
        print('onStop called');
        await Future.delayed(Duration(milliseconds: 10));
        onStopCalled = true;
        completer.complete();
      });

      final fetcher = MockFetcher();
      final startFuture = bot.start(fetcher);

      await Future.delayed(Duration(milliseconds: 50));

      await bot.stop();

      expect(onStopCalled, isTrue);
      await completer.future;
      await startFuture;
    });
  });
}
