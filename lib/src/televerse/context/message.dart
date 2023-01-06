part of televerse.context;

class MessageContext extends Context with MessageMixin {
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
