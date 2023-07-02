part of conversation;

/// Conversation
///
/// This class represents a conversation between the user and the bot.
/// The conversation class helps you to implement a conversation in a simple and
/// straightforward way.
///
///
class Conversation<T extends Session> {
  /// The bot that this conversation belongs to.
  final Televerse<T> bot;

  /// Creates a new conversation.
  Conversation(this.bot);

  /// Wait for a text message from the user.
  Future<MessageContext> waitForTextMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.text != null,
    );
  }

  /// Wait for a photo message from the user.
  Future<MessageContext> waitForPhotoMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.photo != null,
    );
  }

  /// Wait for a video message from the user.
  Future<MessageContext> waitForVideoMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.video != null,
    );
  }

  /// Wait for a voice message from the user.
  Future<MessageContext> waitForVoiceMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.voice != null,
    );
  }

  /// Wait for a document message from the user.
  Future<MessageContext> waitForDocumentMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.document != null,
    );
  }

  /// Wait for a contact message from the user.
  Future<MessageContext> waitForContactMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.contact != null,
    );
  }

  /// Wait for a location message from the user.
  Future<MessageContext> waitForLocationMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.location != null,
    );
  }

  /// Wait for a venue message from the user.
  Future<MessageContext> waitForVenueMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.venue != null,
    );
  }

  /// Wait for a poll message from the user.
  Future<MessageContext> waitForPollMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.poll != null,
    );
  }

  /// Wait for a dice message from the user.
  Future<MessageContext> waitForDiceMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.dice != null,
    );
  }

  /// Wait for a game message from the user.
  Future<MessageContext> waitForGameMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.game != null,
    );
  }

  /// Wait for a sticker message from the user.
  Future<MessageContext> waitForStickerMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      filter: (up) => up.message?.sticker != null,
    );
  }

  /// Wait for a video note message from the user.
  Future<MessageContext> waitForVideoNoteMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      filter: (up) => up.message?.videoNote != null,
    );
  }

  /// Wait for a video chat to start.
  Future<MessageContext> waitToStartVideoChat({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      filter: (up) => up.message?.videoChatStarted != null,
    );
  }

  /// Wait for a video chat to end.
  Future<MessageContext> waitToEndVideoChat({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<MessageContext>(
      chatId: chatId,
      filter: (up) => up.message?.videoChatEnded != null,
    );
  }

  /// Wait for a callback query from the user.
  Future<CallbackQueryContext> waitForCallbackQuery({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor<CallbackQueryContext>(
      chatId: chatId,
      filter: (up) => up.callbackQuery != null,
    );
  }

  /// Wait for any message from the user.
  Future<DC> waitFor<DC extends Context>({
    required ID chatId,
    Duration? timeout,
    required bool Function(Update update) filter,
  }) async {
    Completer<DC> completer = Completer<DC>();
    StreamSubscription<Update>? subscription;

    subscription = bot.updatesStream.listen((update) {
      bool sameChat = update.message?.chat.id == chatId.id;
      if (chatId is ChannelID || chatId is SupergroupID) {
        sameChat = sameChat || update.message?.chat.username == chatId.id;
      }
      if (sameChat && filter(update)) {
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
