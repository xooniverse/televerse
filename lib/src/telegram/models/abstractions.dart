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

/// The base class for all the models that have a user.
abstract class WithID {
  /// The user who triggered the event.
  int get id;
}

/// Null filter function.
bool _nullFilter(String _, dynamic value) => value == null;
