part of 'models.dart';

/// The base class for all the models that have a chat.
abstract class WithChat {
  /// The chat where the event occurred.
  Chat get chat;
}

/// The base class for all the models that have a user.
abstract class WithUser {
  /// The user who triggered the event.
  User? get from;
}
