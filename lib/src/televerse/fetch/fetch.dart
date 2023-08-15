/// Televerse Fetcher
///
/// This library contains the fetcher classes. Fetchers are used to fetch updates from the Telegram API. Currently, there are two fetchers: [LongPolling] and [Webhook].
///
/// [LongPolling] - This fetcher uses the `getUpdates` method to fetch updates. It is the default fetcher.
///
/// [Webhook] - This fetcher uses the `setWebhook` method to set a webhook. It is used when you want to host your bot on a server.
library televerse.fetch;

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

part 'long_polling.dart';
part 'webhook.dart';

/// **Fetcher** - This is the base class for all fetchers. It is used to fetch updates from the Telegram API.
/// You can use this class to create your own fetcher. Currently, there are two fetchers: [LongPolling] and [Webhook].
abstract class Fetcher {
  /// The stream controller that emits new updates.
  final StreamController<Update> _updateStreamController;

  /// Creates a new fetcher.
  Fetcher() : _updateStreamController = StreamController.broadcast();

  /// Emit new update into the stream.
  void addUpdate(Update update) => _updateStreamController.add(update);

  /// Handler for new updates.
  Stream<Update> onUpdate() => _updateStreamController.stream;

  /// Starts fetching updates.
  Future<void> start();

  /// Stops fetching updates.
  Future<void> stop();

  /// Raw API instance.
  late final RawAPI api;

  /// Sets the Raw API instance.
  void setApi(RawAPI api) => this.api = api;

  /// Error handler for long polling.
  FutureOr<void> Function(BotError err)? _onError;

  /// Sets the error handler for long polling.
  void onError(FutureOr<void> Function(BotError err) onError) =>
      _onError = onError;

  /// Flag to check if the fetcher is running.
  bool get isActive;
}
