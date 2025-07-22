// File: lib/src/core/fetcher.dart

import 'dart:async';
import 'package:televerse/telegram.dart';

/// Abstract base class for update fetchers.
///
/// This class defines the interface for fetching updates from the Telegram Bot API.
/// Different implementations can use different methods like long polling or webhooks.
abstract class UpdateFetcher {
  /// Stream of incoming updates.
  ///
  /// This stream emits [Update] objects as they are received from Telegram.
  /// The stream should be broadcast to allow multiple listeners.
  Stream<Update> get updates;

  /// Whether the fetcher is currently running.
  bool get isRunning;

  /// Starts the fetcher.
  ///
  /// This method should begin fetching updates and emitting them through
  /// the [updates] stream. If the fetcher is already running, this method
  /// should complete without doing anything.
  ///
  /// Throws `FetcherException` if there's an error starting the fetcher.
  Future<void> start();

  /// Stops the fetcher.
  ///
  /// This method should stop fetching updates and close the [updates] stream.
  /// If the fetcher is not running, this method should complete without doing anything.
  ///
  /// After calling this method, [isRunning] should return false.
  Future<void> stop();

  /// Closes the fetcher and releases all resources.
  ///
  /// This method should stop the fetcher if it's running and clean up any
  /// resources like HTTP clients, timers, etc.
  Future<void> close();
}

/// Configuration for update fetchers.
class FetcherConfig {
  /// The allowed update types to receive.
  ///
  /// If null, all update types will be received.
  final List<String>? allowedUpdates;

  /// Whether to drop pending updates when starting.
  final bool dropPendingUpdates;

  /// Maximum number of updates to process concurrently.
  final int maxConcurrentUpdates;

  /// Creates a new fetcher configuration.
  ///
  /// Parameters:
  /// - [allowedUpdates]: List of update types to receive
  /// - [dropPendingUpdates]: Whether to drop pending updates
  /// - [maxConcurrentUpdates]: Max concurrent update processing
  const FetcherConfig({
    this.allowedUpdates,
    this.dropPendingUpdates = false,
    this.maxConcurrentUpdates = 10,
  });

  /// Creates a configuration that receives all update types.
  const FetcherConfig.all({
    this.dropPendingUpdates = false,
    this.maxConcurrentUpdates = 10,
  }) : allowedUpdates = null;

  /// Creates a configuration for message updates only.
  const FetcherConfig.messagesOnly({
    this.dropPendingUpdates = false,
    this.maxConcurrentUpdates = 10,
  }) : allowedUpdates = const [
          'message',
          'edited_message',
          'channel_post',
          'edited_channel_post',
        ];

  /// Creates a configuration for callback queries only.
  const FetcherConfig.callbackQueriesOnly({
    this.dropPendingUpdates = false,
    this.maxConcurrentUpdates = 10,
  }) : allowedUpdates = const ['callback_query'];

  /// Creates a configuration for inline queries only.
  const FetcherConfig.inlineQueriesOnly({
    this.dropPendingUpdates = false,
    this.maxConcurrentUpdates = 10,
  }) : allowedUpdates = const ['inline_query', 'chosen_inline_result'];
}
