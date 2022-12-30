import 'dart:async';

import 'package:televerse/src/telegram/telegram.dart';

abstract class Fetcher {
  final StreamController<Update> _updateStreamController;

  Fetcher() : _updateStreamController = StreamController();

  /// Emit new update into the stream.
  void addUpdate(Update update) => _updateStreamController.add(update);

  /// Handler for new updates.
  Stream<Update> onUpdate() => _updateStreamController.stream;

  /// Starts fetching updates.
  Future<void> start();

  /// Stops fetching updates.
  Future<void> stop();
}
