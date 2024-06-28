part of '../../../televerse.dart';

/// ## Televerse Conversation
///
/// The `Conversation` class provides a streamlined way to manage interactions
/// between a Telegram bot and its users, simplifying the creation of conversational
/// flows. This class is part of the Televerse library, which is designed to ease the
/// development of Telegram bots by handling state management and message listening.
///
/// ### Overview
///
/// When developing a Telegram bot, it's common to require interactions that involve
/// multiple steps. For example, asking a user for their name and then responding
/// based on their input. Traditionally, this involves managing states and ensuring
/// the bot knows what to expect at each step. The `Conversation` class abstracts
/// this complexity by allowing developers to wait for specific types of messages
/// without manually handling state transitions.
///
/// ### Features
///
/// - **Message Filtering**: Wait for specific types of messages, such as text, photo, video, etc.
/// - **Timeouts**: Define timeouts for waiting messages to prevent hanging listeners.
/// - **Clear Unfulfilled Listeners**: Optionally clear previous unfulfilled listeners to avoid conflicts.
///
/// ### Example Usage
///
/// ```dart
/// // Create the Bot Instance
/// final bot = Bot(Platform.environment["BOT_TOKEN"]!);
///
/// // Now create a conversation
/// final conv = Conversation(bot);
///
/// void main(List<String> args) {
///   bot.command('start', (ctx) async {
///     await ctx.reply("Hello, what's your name?");
///
///     // ✨ Magic happens here, you can simply wait for the user's response.
///     final nameCtx = await conv.waitForTextMessage(chatId: ctx.id);
///     await nameCtx?.reply("Well, hello ${nameCtx?.message?.text}");
///   });
///
///   bot.start();
/// }
/// ```
///
/// ### Creating a Conversation
///
/// To create a conversation, instantiate the `Conversation` class with a bot instance.
/// You can optionally provide a custom name for the conversation:
///
/// ```dart
/// final conv = Conversation(bot, name: "my_conversation");
/// ```
///
/// ### Waiting for Messages
///
/// The `Conversation` class provides several methods to wait for different types of messages:
///
/// ```dart
/// // Wait for a text message
/// final textCtx = await conv.waitForTextMessage(chatId: ctx.id);
///
/// // Wait for a photo message
/// final photoCtx = await conv.waitForPhotoMessage(chatId: ctx.id);
/// ```
///
/// Each method returns a `Future` that completes with a `Context` object containing the incoming update.
///
/// ### Handling Timeouts
///
/// You can specify a timeout for each wait method to prevent hanging listeners:
///
/// ```dart
/// final textCtx = await conv.waitForTextMessage(
///   chatId: ctx.id,
///   timeout: Duration(seconds: 30),
/// );
/// ```
///
/// If the timeout is reached, the `Future` completes with an error.
///
/// ### Clearing Listeners
///
/// You can clear all conversation listeners for a specific chat or all listeners:
///
/// ```dart
/// // Clear all listeners for a specific chat
/// await conv.clear(ctx.id);
///
/// // Clear all listeners for all chats
/// await conv.clearAll();
/// ```
///
/// The `Conversation` class simplifies managing user interactions in Telegram bots, allowing you to create complex conversational flows with minimal effort.
class Conversation<CTX extends Context> {
  /// A list of subscriptions.
  final List<_ISubHelper<CTX>> _subscriptionsList = [];

  /// Name of the conversation.
  final String name;

  /// The bot that this conversation belongs to.
  final Bot<CTX> _bot;

  /// Creates a new conversation instance.
  ///
  /// This constructor initializes a new [Conversation] object associated with a
  /// specific bot. You can optionally provide a custom name for the conversation;
  /// otherwise, a default name will be generated.
  ///
  /// ### Parameters:
  /// - [bot]: The bot instance that this conversation belongs to. This is required
  ///   and allows the conversation to interact with the bot.
  /// - [name]: An optional parameter to specify a custom name for the conversation.
  ///   If not provided, a default name in the format "conv-xxxxx" will be generated
  ///   where "xxxxx" is a random 5-character string.
  ///
  /// ### Example:
  /// ```dart
  /// // Create a new conversation with the bot
  /// final bot = Bot(Platform.environment["BOT_TOKEN"]!);
  /// final conversation = Conversation(bot, name: "myCustomConversation");
  ///
  /// // Create a new conversation with a default name
  /// final defaultConversation = Conversation(bot);
  /// ```
  Conversation(
    Bot<CTX> bot, {
    String? name,
  })  : _bot = bot,
        name = name ?? "conv-${_getRandomID(5)}";

  /// Wait for a text message from the user.
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, , returns a [Context] object with the incoming update.
  Future<CTX?> waitForTextMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForPhotoMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForVideoMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForVoiceMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForDocumentMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForContactMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForLocationMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForVenueMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForPollMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForDiceMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForGameMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForStickerMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForVideoNoteMessage({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitToStartVideoChat({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitToEndVideoChat({
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
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForCallbackQuery({
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
  bool _isSameChat(Update update, ID chatId) {
    bool sameChat =
        update.chat?.id == chatId.id || update.from?.id == chatId.id;
    if (chatId is ChannelID || chatId is SupergroupID) {
      sameChat = sameChat || update.chat?.username == chatId.id;
    }
    return sameChat;
  }

  /// Wait for any message from the user.
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitFor({
    required ID chatId,
    Duration? timeout,
    bool clearUnfulfilled = true,
    required bool Function(Update update) filter,
    String? handlerName,
  }) async {
    final scopeName =
        handlerName == null ? "$name+${_getRandomID()}" : "$name+$handlerName";

    if (clearUnfulfilled) {
      await clear(chatId);
    }

    // Check if there's a listener already with the same name.
    if (_bot._handlerScopes.any((scope) {
      return scope.name == scopeName && scope.chatId == chatId;
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

    final completer = Completer<CTX?>();
    StreamSubscription<Update>? subscription;

    subscription = _bot.updatesStream.listen((update) {
      final sameChat = _isSameChat(update, chatId);
      if (sameChat && filter(update)) {
        completer.complete(
          _bot._contextConstructor(
            api: _bot.api,
            me: _bot.me,
            update: update,
          ),
        );
      }
    });

    _subscriptionsList.add(
      _ISubHelper<CTX>(subscription, scopeName, completer),
    );

    _bot._handlerScopes.add(
      HandlerScope(
        isConversation: true,
        options: ScopeOptions(name: scopeName),
        predicate: (ctx) =>
            _isSameChat(ctx.update, chatId) && filter(ctx.update),
        types: UpdateType.values,
        chatId: chatId,
      ),
    );

    if (timeout != null) {
      Future.delayed(timeout, () {
        if (!completer.isCompleted) {
          completer.completeError(
            ConversationException(
              "Conversation request timed out.",
              ConversationExceptionType.timeout,
            ),
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

  /// Removes all the conversation listeners for the given chat.
  Future<void> clear(ID id) async {
    _bot._handlerScopes.removeWhere(
      (scope) =>
          scope.isConversation &&
          (scope.name?.startsWith(name) ?? false) &&
          scope.chatId == id,
    );

    final subsToCancel =
        _subscriptionsList.where((sub) => sub.scope.startsWith(name));
    await Future.wait(subsToCancel.map((sub) => sub.cancel()));
    _subscriptionsList.removeWhere((sub) => sub.scope.startsWith(name));
  }

  /// Clear all the conversation listeners.
  Future<void> clearAll() async {
    _bot._handlerScopes.removeWhere(
      (scope) => scope.isConversation && scope.name?.startsWith(name) == true,
    );

    await Future.wait(_subscriptionsList.map((sub) => sub.cancel()));
    _subscriptionsList.clear();
  }

  /// Wait for pattern from the user.
  ///
  /// Possibly returns `null` if the listener has been cancelled before
  /// it completes. Otherwise, returns a [Context] object with the incoming update.
  Future<CTX?> waitForPattern({
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
///
/// This class is used internally by the [Conversation] class to manage
/// the state of subscriptions and their corresponding scope names.
class _ISubHelper<CTX extends Context> {
  /// The subscription to the bot's update stream.
  final StreamSubscription<Update> subscription;

  /// The scope name associated with this subscription.
  final String scope;

  /// A completer that will be completed when the subscription is fulfilled or cancelled.
  final Completer<CTX?> completer;

  /// Creates a new instance of [_ISubHelper].
  ///
  /// ### Parameters:
  /// - [subscription]: The subscription to the bot's update stream.
  /// - [scope]: The scope name associated with this subscription.
  /// - [completer]: The completer that will be completed when the subscription
  ///   is fulfilled or cancelled.
  const _ISubHelper(this.subscription, this.scope, this.completer);

  /// Cancels the subscription.
  ///
  /// If the completer has not been completed yet, it will complete with `null`.
  /// This method returns a [Future] that completes when the subscription is cancelled.
  Future<void> cancel() {
    if (!completer.isCompleted) {
      completer.complete(null);
    }
    return subscription.cancel();
  }
}
