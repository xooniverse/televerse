part of '../../../televerse.dart';

/// The base class for all the models that have a chat.
abstract class WithChat {
  /// The chat where the event occurred.
  Chat get chat;
}
