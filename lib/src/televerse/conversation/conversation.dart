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
  /// A list of subscriptions.
  final List<_ISubHelper> _subscriptionsList = [];

  /// Name of the conversation.
  final String name;

  /// The bot that this conversation belongs to.
  final Bot<T> _bot;

  /// Creates a new conversation.
  Conversation(
    this._bot, {
    String? name,
  }) : name = name ?? "conv-${_getRandomID(5)}";

  /// Wait for a text message from the user.
  Future<Context<T>> waitForTextMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.text != null,
      handlerName: "text",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a photo message from the user.
  Future<Context<T>> waitForPhotoMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.photo != null,
      handlerName: "photo",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a video message from the user.
  Future<Context<T>> waitForVideoMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.video != null,
      handlerName: "video",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a voice message from the user.
  Future<Context<T>> waitForVoiceMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.voice != null,
      handlerName: "voice",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a document message from the user.
  Future<Context<T>> waitForDocumentMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.document != null,
      handlerName: "document",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a contact message from the user.
  Future<Context<T>> waitForContactMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.contact != null,
      handlerName: "contact",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a location message from the user.
  Future<Context<T>> waitForLocationMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.location != null,
      handlerName: "location",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a venue message from the user.
  Future<Context<T>> waitForVenueMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.venue != null,
      handlerName: "venue",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a poll message from the user.
  Future<Context<T>> waitForPollMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.poll != null,
      handlerName: "poll",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a dice message from the user.
  Future<Context<T>> waitForDiceMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.dice != null,
      handlerName: "dice",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a game message from the user.
  Future<Context<T>> waitForGameMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      filter: (up) => up.message?.game != null,
      handlerName: "game",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a sticker message from the user.
  Future<Context<T>> waitForStickerMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.sticker != null,
      timeout: timeout,
      handlerName: "sticker",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a video note message from the user.
  Future<Context<T>> waitForVideoNoteMessage({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.videoNote != null,
      timeout: timeout,
      handlerName: "videoNote",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a video chat to start.
  Future<Context<T>> waitToStartVideoChat({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.videoChatStarted != null,
      timeout: timeout,
      handlerName: "videoChatStarted",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a video chat to end.
  Future<Context<T>> waitToEndVideoChat({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.message?.videoChatEnded != null,
      timeout: timeout,
      handlerName: "videoChatEnded",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Wait for a callback query from the user.
  Future<Context<T>> waitForCallbackQuery({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      filter: (up) => up.callbackQuery != null,
      timeout: timeout,
      handlerName: "callbackQuery",
      clearUnfulfilled: clearUnfulfilled,
    );
  }

  /// Internal method to check if the chat is the same.
  bool _sameChatMethod(Update update, ID chatId) {
    bool sameChat =
        update.chat?.id == chatId.id || update.from?.id == chatId.id;
    if (chatId is ChannelID || chatId is SupergroupID) {
      sameChat = sameChat || update.chat?.username == chatId.id;
    }
    return sameChat;
  }

  /// Wait for any message from the user.
  Future<Context<T>> waitFor({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
    required bool Function(Update update) filter,
    String? handlerName,
  }) async {
    final scopeName =
        handlerName == null ? "$name+${_getRandomID()}" : "$name+$handlerName";

    if (clearUnfulfilled) {
      await clear();
    }

    // Check if there's a listener already with the same name.
    if (_bot._handlerScopes.any((scope) {
      return scope.name == scopeName;
    })) {
      // Cancel the previous listener.
      final prev = _subscriptionsList.firstWhere(
        (sub) => sub.scope == scopeName,
      );
      await prev.cancel();
      _subscriptionsList.remove(prev);
      _bot._handlerScopes.removeWhere((scope) => scope.name == scopeName);
      print('[Televerse] Warning: Conversation listener with the same name '
          'already exists. It has been removed.');
    }

    final completer = Completer<Context<T>>();
    StreamSubscription<Update>? subscription;

    subscription = _bot.updatesStream.listen((update) {
      final sameChat = _sameChatMethod(update, chatId);
      if (sameChat && filter(update)) {
        completer.complete(Context<T>(_bot, update: update));
      }
    });

    _subscriptionsList.add(
      _ISubHelper(subscription, scopeName),
    );

    _bot._handlerScopes.add(
      HandlerScope<Handler<T>>(
        isConversation: true,
        name: scopeName,
        predicate: (ctx) =>
            _sameChatMethod(ctx.update, chatId) && filter(ctx.update),
        types: UpdateType.values,
        chatId: chatId,
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

    final s = _subscriptionsList.firstWhere(
      (sub) => sub.scope == scopeName,
    );

    _subscriptionsList.remove(s);
    subscription.cancel();
    _bot._handlerScopes.removeWhere((scope) => scope.name == scopeName);

    return ctx;
  }

  /// Removes all the conversation listeners.
  Future<void> clear() async {
    _bot._handlerScopes.removeWhere(
      (scope) =>
          scope.isConversation && (scope.name?.startsWith(name) ?? false),
    );
    for (int i = 0; i < _subscriptionsList.length; i++) {
      await _subscriptionsList[i].cancel();
    }
  }

  /// Wait for pattern from the user.
  Future<Context<T>> waitForPattern({
    required ID chatId,
    required Pattern pattern,
    Duration? timeout,
    bool clearUnfulfilled = true,
  }) async {
    return await waitFor(
      chatId: chatId,
      timeout: timeout,
      clearUnfulfilled: clearUnfulfilled,
      filter: (up) {
        if (pattern is String) {
          return up.msg?.text?.contains(pattern) == true;
        } else if (pattern is RegExp) {
          return pattern.hasMatch(up.msg?.text ?? "");
        } else {
          return false;
        }
      },
    );
  }
}

/// Internal helper class to store the subscription and the scope name.
class _ISubHelper {
  final StreamSubscription<Update> subscription;
  final String scope;

  const _ISubHelper(this.subscription, this.scope);

  Future<void> cancel() {
    return subscription.cancel();
  }
}
