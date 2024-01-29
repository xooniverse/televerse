part of '../../../televerse.dart';

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
  final Bot<T> _bot;

  /// Creates a new conversation.
  Conversation(this._bot);

  /// Wait for a text message from the user.
  Future<Context> waitForTextMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.text != null,
    );
  }

  /// Wait for a photo message from the user.
  Future<Context> waitForPhotoMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.photo != null,
    );
  }

  /// Wait for a video message from the user.
  Future<Context> waitForVideoMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.video != null,
    );
  }

  /// Wait for a voice message from the user.
  Future<Context> waitForVoiceMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.voice != null,
    );
  }

  /// Wait for a document message from the user.
  Future<Context> waitForDocumentMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.document != null,
    );
  }

  /// Wait for a contact message from the user.
  Future<Context> waitForContactMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.contact != null,
    );
  }

  /// Wait for a location message from the user.
  Future<Context> waitForLocationMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.location != null,
    );
  }

  /// Wait for a venue message from the user.
  Future<Context> waitForVenueMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.venue != null,
    );
  }

  /// Wait for a poll message from the user.
  Future<Context> waitForPollMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.poll != null,
    );
  }

  /// Wait for a dice message from the user.
  Future<Context> waitForDiceMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.dice != null,
    );
  }

  /// Wait for a game message from the user.
  Future<Context> waitForGameMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.game != null,
    );
  }

  /// Wait for a sticker message from the user.
  Future<Context> waitForStickerMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.sticker != null,
    );
  }

  /// Wait for a video note message from the user.
  Future<Context> waitForVideoNoteMessage({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.videoNote != null,
    );
  }

  /// Wait for a video chat to start.
  Future<Context> waitToStartVideoChat({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.videoChatStarted != null,
    );
  }

  /// Wait for a video chat to end.
  Future<Context> waitToEndVideoChat({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.videoChatEnded != null,
    );
  }

  /// Wait for a callback query from the user.
  Future<Context> waitForCallbackQuery({
    required ID chatId,
    Duration? timeout,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.callbackQuery != null,
    );
  }

  /// Internal method to check if the chat is the same.
  bool _sameChatMethod(Update update, ID chatId) {
    bool sameChat =
        update.msg?.chat.id == chatId.id || update.from?.id == chatId.id;
    if (chatId is ChannelID || chatId is SupergroupID) {
      sameChat = sameChat || update.message?.chat.username == chatId.id;
    }
    return sameChat;
  }

  /// Wait for any message from the user.
  Future<Context> waitFor({
    required ID chatId,
    Duration? timeout,
    required bool Function(Update update) filter,
  }) async {
    final completer = Completer<Context<T>>();
    StreamSubscription<Update>? subscription;

    subscription = _bot.updatesStream.listen((update) {
      final sameChat = _sameChatMethod(update, chatId);
      if (sameChat && filter(update)) {
        completer.complete(Context<T>(_bot, update: update));
        subscription?.cancel();
      }
    });

    final scopeName = "conversation+${_getRandomID()}";
    _bot._handlerScopes.add(
      HandlerScope<Handler<T>>(
        isConversation: true,
        name: scopeName,
        predicate: (ctx) =>
            _sameChatMethod(ctx.update, chatId) && filter(ctx.update),
        types: UpdateType.values,
      ),
    );

    if (timeout != null) {
      Future.delayed(timeout, () {
        if (!completer.isCompleted) {
          completer.completeError(
            TimeoutException("Conversation request timed out."),
          );

          subscription?.cancel();
          _bot._handlerScopes.removeWhere((scope) => scope.name == scopeName);
        }
      });
    }

    final ctx = await completer.future;

    _bot._handlerScopes.removeWhere((scope) => scope.name == scopeName);

    return ctx;
  }
}
