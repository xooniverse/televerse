part of 'types.dart';

/// The type of a `MessageOrigin
enum MessageOriginType {
  /// User
  user._('user'),

  /// Hidden User
  hiddenUser._('hidden_user'),

  /// Chat
  chat._('chat'),

  /// Channel
  channel._('channel');

  /// The value of this [MessageOriginType].
  final String value;

  /// Private constructor [MessageOriginType].
  const MessageOriginType._(this.value);

  /// Returns a [MessageOriginType] based on the [value].
  static MessageOriginType from(String value) {
    switch (value) {
      case 'user':
        return user;
      case 'hidden_user':
        return hiddenUser;
      case 'chat':
        return chat;
      case 'channel':
        return channel;
      default:
        throw TeleverseException(
          'Invalid MessageOriginType value.',
        );
    }
  }
}
