part of '../../../televerse.dart';

/// **Fetcher** - This is the base class for all fetchers. It is used to fetch updates from the Telegram API.
/// You can use this class to create your own fetcher. Currently, there are two fetchers: [LongPolling] and [Webhook].
abstract class Fetcher<CTX extends Context> {
  /// The stream controller that emits new updates.
  StreamController<Update>? _updateStreamController;

  /// Creates a new fetcher.
  Fetcher();

  /// Emit new update into the stream.
  void addUpdate(Update update) => _updateStreamController?.add(update);

  /// Handler for new updates.
  Stream<Update> onUpdate() => _updateStreamController!.stream;

  /// Starts fetching updates.
  Future<void> start();

  /// Stops fetching updates.
  Future<void> stop();

  /// Update Stream Subscription
  StreamSubscription<Update>? _updateSubscription;

  /// Raw API instance.
  late final RawAPI api;

  /// Sets the Raw API instance.
  void setApi(RawAPI api) => this.api = api;

  /// Error handler for long polling.
  FutureOr<void> Function(BotError<CTX> err)? _onError;

  /// Sets the error handler for long polling.
  void onError(FutureOr<void> Function(BotError<CTX> err) onError) =>
      _onError = onError;

  /// Flag to check if the fetcher is running.
  bool get isActive;
}
