part of '../../../televerse.dart';

/// **Fetcher** - This is the base class for all fetchers. It is used to fetch updates from the Telegram API.
/// You can use this class to create your own fetcher. Currently, there are two fetchers: [LongPolling] and [Webhook].
sealed class Fetcher<CTX extends Context> {
  /// The stream controller that emits new updates.
  final StreamController<Update> _updateStreamController;

  /// The stream controller that emits new updates.
  final StreamController<List<Update>> _updatesStreamController;

  /// Creates a new fetcher.
  Fetcher()
      : _updateStreamController = StreamController.broadcast(),
        _updatesStreamController = StreamController.broadcast();

  /// Emit new update into the stream.
  void addUpdate(Update update) => _updateStreamController.add(update);

  /// Emit new update into the stream.
  void addUpdates(List<Update> updates) =>
      _updatesStreamController.add(updates);

  /// Handler for new updates.
  Stream<Update> onUpdate() => _updateStreamController.stream;

  /// Handler for new updates.
  Stream<List<Update>> onUpdates() => _updatesStreamController.stream;

  /// Starts fetching updates.
  Future<void> start();

  /// Stops fetching updates.
  Future<void> stop();

  /// Update Stream Subscription
  StreamSubscription<Update>? _updateSubscription;

  /// Pause the stream
  Future<void> pause();

  /// Resume the stream
  Future<void> resume();

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
