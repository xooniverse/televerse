part of conversation;

abstract class ConversationModel {
  Map<String, dynamic> toJson();
}

class Conversation<T extends ConversationModel> {
  final T model;
  final Televerse bot;
  final ID id;

  const Conversation(this.bot, this.model, this.id);

  RawAPI get api => bot.api;

  Future<Message> ask(
    String question, {
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
      question,
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

  Future<MessageContext> waitForMessage({
    Duration? timeout,
    bool? protectContent,
    bool? allowSendingWithoutReply,
  }) async {
    final update = await bot.onUpdate().where((update) {
      return update.message != null &&
          ChatID(update.message!.chat.id) == id &&
          update.message!.text != null;
    }).firstWhere(
      (update) {
        return update.message!.text != null;
      },
      orElse: () => throw TeleverseException('No message received'),
    );

    return MessageContext(
      api,
      update.message!,
      update: update,
    );
  }
}

class ConversationThread<Update> {
  final Conversation conversation;
  final Update update;

  const ConversationThread(this.conversation, this.update);
}
