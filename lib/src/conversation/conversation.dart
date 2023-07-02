part of televerse;

/// ## Televerse Conversation
///
/// Televerse Conversation is a library that provides a simple way to create
/// a conversation between the user and the bot.
///
/// As a Telegram bot developer, there are times when you need to create a
/// conversation between the user and the bot. For example, when you need to
/// ask the user for some information, or when you need to ask the user to
/// choose one of the options. And this can be quite complicated. You need to
/// create a state machine, and you need to store the state of the conversation
/// somewhere. And this is where Televerse Conversation comes in.
///
/// Televerse Conversation provides a simple way to create a conversation
/// between the user and the bot. You can create a conversation with just a
/// few lines of code. And you don't need to worry about storing the state of
/// the conversation. Televerse Conversation will take care of that for you.
///
/// Televerse Conversation is built on top of the Televerse library. So you
/// can use all the features of the Televerse library in your conversation.
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

  /// Internal method to check if the chat is the same.
  bool _sameChatMethod(Update update, ID chatId) {
    bool sameChat = update.message?.chat.id == chatId.id;
    if (chatId is ChannelID || chatId is SupergroupID) {
      sameChat = sameChat || update.message?.chat.username == chatId.id;
    }
    return sameChat;
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
      bool sameChat = _sameChatMethod(update, chatId);
      if (sameChat && filter(update)) {
        completer.complete(Context.create(bot, update) as DC);
        subscription?.cancel();
      }
    });

    final scopeName = "conversation+${_getRandomID()}";
    bot._handlerScopes.add(
      HandlerScope<DC Function(DC)>(
        isConversation: true,
        name: scopeName,
        predicate: (ctx) =>
            _sameChatMethod(ctx.update, chatId) && filter(ctx.update),
        types: Context.updateTypes(DC),
      ),
    );

    if (timeout != null) {
      Future.delayed(timeout, () {
        if (!completer.isCompleted) {
          completer.completeError(
            TimeoutException("Conversation request timed out."),
          );

          subscription?.cancel();
          bot._handlerScopes.removeWhere((scope) => scope.name == scopeName);
        }
      });
    }

    final ctx = await completer.future;

    bot._handlerScopes.removeWhere((scope) => scope.name == scopeName);

    return ctx;
  }

  // Internal method to generate a random id.
  // Include a-z, A-Z, 0-9
  String _getRandomID() {
    final random = Random();
    final chars =
        "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    return List.generate(20, (index) => chars[random.nextInt(chars.length)])
        .join();
  }
}
