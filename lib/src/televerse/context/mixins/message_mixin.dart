part of televerse;

mixin MessageMixin on Context {
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
    return await api.sendMessage(
      id,
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
}
