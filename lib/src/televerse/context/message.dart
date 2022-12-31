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
    ParseMode? parseMode,
    bool disableWebPagePreview = false,
    bool disableNotification = false,
    int replyToMessageId = 0,
    ReplyMarkup? replyMarkup,
  }) async {
    return await _televerse.sendMessage(
      ChatID(chat.id),
      text,
      parseMode: parseMode,
      disableWebPagePreview: disableWebPagePreview,
      disableNotification: disableNotification,
      replyToMessageId: replyToMessageId,
      replyMarkup: replyMarkup,
    );
  }
}
