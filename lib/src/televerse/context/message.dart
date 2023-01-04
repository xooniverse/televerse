part of televerse.context;

class MessageContext extends Context {
  /// The incoming message.
  Message message;

  MessageContext(
    Televerse t,
    this.message, {
    Update? update,
  }) : super(t, update: update);

  /// Chat of the message.
  Chat get chat => message.chat;

  /// Reply a Text Message to the user.
  Future<Message> reply(
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return await _televerse.sendMessage(
      ChatID(chat.id),
      text,
      messageThreadId: messageThreadId,
      parseMode: parseMode,
      entities: entities,
      disableWebPagePreview: disableWebPagePreview,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }

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
  ID get id => ChatID(message.chat.id);
}
