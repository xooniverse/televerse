part of conversation;

/// Conversation Base Class
class Conversation<T extends Session> {
  /// The bot that this conversation belongs to.
  final Televerse<T> bot;

  /// Creates a new conversation.
  Conversation(this.bot);

  /// Wait for a text message from the user.
  Future<MessageContext> waitForTextMessage({
    required int chatId,
    Duration? timeout,
  }) async {
    return await waitForMessage<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.text != null,
    );
  }

  /// Wait for any message from the user.
  Future<DC> waitForMessage<DC extends Context>({
    required int chatId,
    Duration? timeout,
    required bool Function(Update) filter,
  }) async {
    Completer<DC> completer = Completer<DC>();
    StreamSubscription<Update>? subscription;

    subscription = bot.updatesStream.listen((update) {
      if (update.message?.chat.id == chatId && filter(update)) {
        completer.complete(Context.create(bot, update) as DC);
        subscription?.cancel();
      }
    });

    if (timeout != null) {
      Future.delayed(timeout, () {
        if (!completer.isCompleted) {
          completer.completeError(
            TimeoutException("Conversation request timed out."),
          );
          subscription?.cancel();
        }
      });
    }

    return await completer.future;
  }
}
