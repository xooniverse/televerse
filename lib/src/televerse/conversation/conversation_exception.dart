part of '../../../televerse.dart';

/// Type of the Conversation exception.
enum ConversationExceptionType {
  /// The conversation has been cancelled.
  cancelled,

  /// The conversation has timed out.
  timeout,
}

/// An exception thrown when a conversation times out or the listener
/// has been cancelled before it was fulfilled.
class ConversationException implements Exception {
  /// The type of the exception.
  final ConversationExceptionType type;

  /// The message of the exception.
  final String message;

  /// Creates a new [ConversationException] with the given [message].
  const ConversationException(
    this.message,
    this.type,
  );

  @override
  String toString() => 'ConversationException: $message';
}
