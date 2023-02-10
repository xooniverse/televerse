part of televerse.context;

/// This class is used to represent a message context. This class provides information about the current incoming message and contains a bunch of context aware methods.
///
/// `MessageContext` will be passed to the callback functions of any methods that listen to messages. For example, if you use `Televerse.text` to listen to text messages, the callback function will be called with a `MessageContext` object as parameter.
class MessageContext extends Context with MessageMixin, ManagementMixin {
  /// The incoming message.
  Message message;

  MessageContext(
    Televerse t,
    this.message, {
    required Update update,
  }) : super(t, update: update);

  /// Chat of the message.
  Chat get chat => message.chat;

  /// **Regular expression matches**
  ///
  /// Contains the matches of the regular expression.
  ///
  /// This will be automatically set when you use the [Televerse.hears] method.
  List<RegExpMatch>? matches;

  /// Start Parameter - Used for deep linking.
  /// This will be set when your bot is started with a deep link.
  /// Example: `https://t.me/MyBot?start=12345` will set `startParameter` to `12345`.
  /// This will be `null` if the bot is not started with a deep link.
  String? startParameter;

  /// **Chat ID**
  ///
  /// This is a shortcut for `ChatID(message.chat.id)`. So you can simply use `ctx.id` instead of repeating `ChatID(message.chat.id)`.
  ///
  /// This is useful when you want to call methods from the [Context.api] getter.
  ///
  /// Example:
  /// ```dart
  /// ctx.api.sendMessage(ctx.id, "Hello World!");
  /// ```
  ///
  /// This is the same as:
  /// ```dart
  /// ctx.api.sendMessage(ChatID(ctx.message.chat.id), "Hello World!");
  /// ```
  ///
  /// Easy right? :)
  @override
  ID get id => ChatID(message.chat.id);
}
