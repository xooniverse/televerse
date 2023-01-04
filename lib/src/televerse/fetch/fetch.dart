part of televerse;

abstract class Fetcher {
  final StreamController<Update> _updateStreamController;

  Fetcher() : _updateStreamController = StreamController.broadcast();

  /// Emit new update into the stream.
  void addUpdate(Update update) => _updateStreamController.add(update);

  /// Handler for new updates.
  Stream<Update> onUpdate() => _updateStreamController.stream;

  /// Starts fetching updates.
  Future<void> start();

  /// Stops fetching updates.
  Future<void> stop();
}
