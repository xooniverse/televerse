part of televerse.context;

class MessageContext extends Context {
  /// The incoming message.
  Message message;

  MessageContext(Televerse t, this.message) : super(t);

  /// Chat of the message.
  Chat get chat => message.chat;

  /// Reply a Text Message to the user.
  Future<MessageContext> reply(
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
}
