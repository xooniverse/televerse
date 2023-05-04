part of televerse;

/// Televerse
/// This class is used to create a new bot instance. The bot instance is used to send and receive messages.
///
/// You can use the [token] to create a new bot instance. You can also pass a [fetcher] to the constructor. The fetcher is used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
///
/// Create a new bot instance:
/// ```dart
/// import 'package:televerse/televerse.dart';
///
/// void main() {
///  var bot = Televerse("YOUR_BOT_TOKEN");
///  bot.start();
/// }
/// ```
///
/// The [Televerse] class extends [Event] class. The [Event] class is used to emit events and additionally provides a bunch of useful methods.
class Televerse extends Event with OnEvent {
  /// API Scheme
  final APIScheme _scheme;

  /// The current bot instance.
  static late Televerse _instance;

  /// Base URL of the Telegram Bot API.
  final String _baseURL;

  /// A flag that indicates whether the Bot API is running locally or not.
  final bool isLocal;

  /// Handler for unexpected errors.
  FutureOr<void> Function(Object, StackTrace)? _onError;

  /// Get the bot instance.
  ///
  /// This getter returns the bot instance. You can use this to access the bot instance from anywhere in your code.
  ///
  /// Notes:
  ///   - If you try to access this getter before creating a bot instance, it will throw an error.
  ///   - The instance will be the last created bot instance.
  ///   - DO NOT use this getter to create a bot instance. Use the [Televerse] constructor instead. This getter is only used to access the bot instance.
  static Televerse get instance {
    try {
      return _instance;
    } catch (err) {
      throw TeleverseException(
        "Bot instance not found. ",
        description: "Create a Bot instance with a token first.",
      );
    }
  }

  /// Raw API - gives you access to all the methods of Telegram Bot API.
  ///
  /// This getter returns the [RawAPI] instance. You can use this to access the raw API instance from anywhere in your code.
  ///
  /// For example, you can use the [RawAPI] instance to send a message to a chat:
  /// ```dart
  /// bot.api.sendMessage(ChatID(123456789), "Hello World!");
  /// ```
  ///
  RawAPI get api {
    if (isLocal) {
      return RawAPI.local(token, baseUrl: _baseURL, scheme: _scheme);
    }
    return RawAPI(token, baseUrl: _baseURL, scheme: APIScheme.https);
  }

  /// The fetcher - used to fetch updates from the Telegram servers.
  late Fetcher fetcher;

  /// The bot token.
  final String token;

  /// Create a new bot instance.
  ///
  /// To create a new bot instance, you need to pass the bot token. You can also pass a [fetcher] to the constructor. The fetcher is used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
  ///
  /// Also, you can pass a [sync] parameter to the constructor.
  /// If [sync] is true, events may be fired directly by the stream's subscriptions during an [StreamController.add], [StreamController.addError] or [StreamController.close] call. The returned stream controller is a [SynchronousStreamController], and must be used with the care and attention necessary to not break the [Stream] contract. See [Completer.sync] for some explanations on when a synchronous dispatching can be used. If in doubt, keep the controller non-sync.
  ///
  /// If [sync] is false, the event will always be fired at a later time, after the code adding the event has completed. In that case, no guarantees are given with regard to when multiple listeners get the events, except that each listener will get all events in the correct order. Each subscription handles the events individually. If two events are sent on an async controller with two listeners, one of the listeners may get both events before the other listener gets any. A listener must be subscribed both when the event is initiated (that is, when [add] is called) and when the event is later delivered, in order to receive the event.
  ///
  /// ## Using Local Bot API Server
  /// You can use the [Televerse] class to create a bot instance that listens to a local Bot API server. Use the [Televerse.local] constructor to create a bot instance that listens to a local Bot API server.
  ///
  /// You can pass the [baseURL] parameter to the constructor to specify the base URL of the Telegram Bot API. By default, the base URL is `api.telegram.org`. This parameter will be used to create the [RawAPI] instance that points to your local Bot API server.
  /// If you're running the Bot API server locally, you should pass the [baseURL] and the [scheme] parameters to the constructor.
  Televerse(
    this.token, {
    Fetcher? fetcher,
    super.sync,
    String baseURL = RawAPI.defaultBase,
    APIScheme scheme = APIScheme.https,
  })  : _baseURL = baseURL,
        isLocal = baseURL != RawAPI.defaultBase,
        _scheme = scheme {
    this.fetcher = fetcher ?? LongPolling();
    this.fetcher.setApi(api);
    _instance = this;
    super.api = api;

    api.getMe().then((value) {
      _me = value;
    }).catchError((err, st) {
      if (_onError != null) {
        _onError!(err, st);
      } else {
        throw err;
      }
    });
  }

  /// Televerse local constructor. This constructor is used to create a bot instance that listens to a local Bot API server.
  ///
  /// [token] - Bot token.
  ///
  /// [baseURL] - Base URL of the Telegram Bot API. By default, the base URL is `localhost:8081`. This parameter will be used to create the [RawAPI] instance that points to your local Bot API server.
  ///
  /// [fetcher] - The fetcher - used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
  ///
  /// [scheme] - The scheme of the Telegram Bot API. By default, the scheme is `APIScheme.http`.
  ///
  /// ## Note
  /// The Bot API server source code is available at [telegram-bot-api](https://github.com/tdlib/telegram-bot-api). You can run it locally and send the requests to your own server instead of ```https://api.telegram.org```.
  ///
  /// If you switch to a local Bot API server, your bot will be able to:
  /// - Download files without a size limit.
  /// - Upload files up to 2000 MB.
  /// - Upload files using their local path and the file URI scheme.
  /// - Use an HTTP URL for the webhook.
  /// - Use any local IP address for the webhook.
  /// - Use any port for the webhook.
  /// - Set max_webhook_connections up to 100000.
  /// - Receive the absolute local path as a value of the file_path field without the need to download the file after a getFile request.
  ///
  /// Learn to setup Local Bot API Server here: https://github.com/tdlib/telegram-bot-api
  factory Televerse.local(
    String token, {
    Fetcher? fetcher,
    bool sync = false,
    String baseURL = "localhost:8081",
    APIScheme scheme = APIScheme.http,
  }) {
    print('Using local Bot API server at $baseURL');
    return Televerse(
      token,
      fetcher: fetcher,
      baseURL: baseURL,
      sync: sync,
      scheme: scheme,
    );
  }

  /// Information about the bot.
  late User _me;

  /// Get information about the bot.
  ///
  /// This getter returns the bot information. You can use this to access the bot information from anywhere in your code. This getter will be automatically set when the bot starts.
  /// If you try to access this getter before creating a bot instance, it will throw an error.
  User get me {
    try {
      return _me;
    } catch (err) {
      throw TeleverseException(
        "Bot information not found. ",
        description: "Couldn't fetch bot information.",
      );
    }
  }

  /// Emit new update into the stream.
  void _onUpdate(Update update) {
    emitUpdate(update, this);
  }

  /// Start polling for updates.
  Future<void> start([FutureOr<void> Function(MessageContext)? handler]) async {
    fetcher.start().catchError((err, st) {
      if (_onError != null) {
        _onError!(err, st);
      } else {
        throw err;
      }
    });
    fetcher.onUpdate().listen(_onUpdate);

    // Registers a handler to listen for /start command
    if (handler != null) {
      command("start", handler);
    }
  }

  /// Stream of [Update] objects.
  ///
  /// This getter returns a stream of [Update] objects. You can use this to listen to incoming updates from Telegram servers.
  Stream<Update> get updatesStream {
    return fetcher.onUpdate();
  }

  /// Registers a callback for a command.
  /// The command must be without the leading slash.
  ///
  /// For example, to register a callback for the `/start` command, you would
  /// call `onCommand('start', callback)`.
  ///
  /// The callback will be called when a message is received that starts with
  /// the command.
  ///
  /// Example:
  /// ```dart
  /// bot.onCommand('start', (ctx) {
  ///   ctx.reply('Hello!');
  /// });
  /// ```
  ///
  /// This will reply "Hello!" to any message that starts with `/start`.
  StreamSubscription<MessageContext> command(
    Pattern command,
    MessageHandler callback,
  ) {
    return onMessage.listen((MessageContext context) {
      if (context.message.text == null) return;
      if (command is RegExp) {
        if (command.hasMatch(context.message.text!)) {
          context.matches = command.allMatches(context.message.text!).toList();
          callback(context);
        }
      } else if (command is String) {
        if (context.message.text!.startsWith('/$command')) {
          if (command == 'start' &&
              context.message.text!.split(' ').length > 1) {
            context.startParameter =
                context.message.text!.split(' ').sublist(1).join(' ');
          }

          callback(context);
        }
      }
    });
  }

  /// Registers a callback for a callback query.
  ///
  /// The callback will be called when a callback query is received that has
  /// the specified data.
  ///
  /// Example:
  /// ```dart
  /// bot.callbackQuery('start', (ctx) {
  ///   ctx.answer('Hello!');
  /// });
  /// ```
  ///
  /// This will answer "Hello!" to any callback query that has the data "start".
  ///
  ///
  StreamSubscription<CallbackQueryContext> callbackQuery(
    Pattern data,
    CallbackQueryHandler callback, {
    @Deprecated("Use the 'data' parameter instead.") RegExp? regex,
  }) {
    return onCallbackQuery.listen((CallbackQueryContext context) {
      if (context.data == null) return;
      if (data is RegExp) {
        if (data.hasMatch(context.data!)) {
          callback(context);
        }
      } else if (data is String) {
        if (context.data == data) {
          callback(context);
        }
      }
    });
  }

  /// Registers a callback for particular chat types.
  /// The callback will be called when a message is received that is from a
  /// chat of the specified type.
  ///
  /// You can specify chat type by passing a [ChatType] to the [type] parameter.
  ///
  /// Example:
  /// ```dart
  /// bot.chatType(ChatType.private, (ctx) {
  ///  ctx.reply('Hello in private chat!');
  /// });
  /// ```
  ///
  /// This will reply "Hello in private chat!" to any message that is from a
  /// private chat.
  ///
  /// If you want to register a callback for multiple chat types, you can use
  /// the [chatTypes] method.
  StreamSubscription<MessageContext> chatType(
    ChatType type,
    MessageHandler callback,
  ) {
    return onMessage.listen((MessageContext context) {
      if (context.message.chat.type == type) {
        callback(context);
      }
    });
  }

  /// Registers a callback for multiple chat types.
  /// The callback will be called when a message is received that is from one of
  /// the specified chat types.
  ///
  /// You can specify chat types by passing a list of [ChatType]s to the [types]
  /// parameter.
  ///
  /// Example:
  /// ```dart
  /// bot.chatTypes([ChatType.private, ChatType.group], (ctx) {
  /// ctx.reply('Hello in private chat or group!');
  /// });
  /// ```
  ///
  /// This will reply "Hello in private chat or group!" to any message that is
  /// from a private chat or a group.
  StreamSubscription<MessageContext> chatTypes(
    List<ChatType> types,
    MessageHandler callback,
  ) {
    return onMessage.listen((MessageContext context) {
      if (types.contains(context.message.chat.type)) {
        callback(context);
      }
    });
  }

  /// Filter
  /// Registers a callback for a message that matches the specified filter.
  ///
  /// The callback will be called when a message is received that matches the
  /// specified filter.
  ///
  /// This method accepts a predicate function that takes a [MessageContext] as
  /// a parameter and returns a boolean. If the function returns true, the
  /// callback will be called.
  ///
  /// Example:
  /// ```dart
  /// ```
  StreamSubscription<MessageContext> filter(
    bool Function(MessageContext ctx) predicate,
    MessageHandler callback,
  ) {
    return onMessage.listen((MessageContext context) {
      if (predicate(context)) {
        callback(context);
      }
    });
  }

  /// Registers a callback for a message that contains a text.
  /// The callback will be called when a message is received that contains a
  /// particular text.
  ///
  /// Example:
  /// ```dart
  /// bot.text('I love Televerse', (ctx) {
  ///  ctx.reply('I love you too!');
  /// });
  /// ```
  StreamSubscription<MessageContext> text(
    String text,
    MessageHandler callback,
  ) {
    return onMessage.listen((MessageContext context) {
      if (context.message.text?.contains(text) ?? false) {
        callback(context);
      }
    });
  }

  /// Registers a callback for a message that contains a text that matches the
  /// specified regular expression.
  /// The callback will be called when a message is received that contains a
  /// text that matches the specified regular expression.
  ///
  /// The regular expression must be a valid Dart regular expression.
  ///
  /// Example:
  /// ```dart
  /// bot.hears(r'Hello, (.*)!', (ctx) {
  ///   ctx.reply('Hello, ${ctx.matches![1]}!');
  /// });
  /// ```
  ///
  /// This will reply "Hello, <name>!" to any message that contains a text that
  /// matches the regular expression `Hello, (.*)!`.
  StreamSubscription<MessageContext> hears(
    RegExp exp,
    MessageHandler callback,
  ) {
    return onMessage.listen((MessageContext context) {
      final matches = exp.allMatches(context.message.text ?? '');
      context.matches = matches.toList();
      if (matches.isNotEmpty) {
        callback(context);
      }
    });
  }

  /// Registers a callback for inline queries.
  ///
  /// The callback will be called when an inline query with the specified query is received.
  StreamSubscription<InlineQueryContext> inlineQuery(
    InlineQueryHandler Function(InlineQueryContext ctx) callback,
  ) {
    return onInlineQuery.listen(callback);
  }

  /// Registers a callback for the `/settings` command.
  StreamSubscription<MessageContext> settings(MessageHandler handler) {
    return command("settings", handler);
  }

  /// Registers a callback for the `/help` command.
  StreamSubscription<MessageContext> help(MessageHandler handler) {
    return command("help", handler);
  }

  /// Registers a callback for on any unexpected error.
  void onError(
    void Function(Object err, StackTrace stackTrace) handler,
  ) {
    _onError = handler;
  }

  /// Registers a callback for messages that contains the specified entity type.
  ///
  /// Pass the `shouldMatchCaptionEntities` parameter to match entities in the
  /// caption of a message. Such as a photo or video message.
  ///
  /// By default, this method will ONLY match entities in the message text.
  StreamSubscription<MessageContext> entity(
    MessageEntityType type,
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    return onMessage.where((context) {
      List<MessageEntity>? entities = context.message.entities;
      if (shouldMatchCaptionEntities) {
        entities = entities ?? context.message.captionEntities;
      }
      if (entities == null) return false;
      bool hasMatch = entities.any((element) => element.type == type);
      if (hasMatch) {
        return true;
      }
      return false;
    }).listen(callback);
  }

  /// Registers a callback for messages that contains the specified entity types.
  /// The callback will be called when a message is received that contains the
  /// specified entity types.
  ///
  /// Pass the `shouldMatchCaptionEntities` parameter to match entities in the
  /// caption of a message. Such as a photo or video message.
  ///
  /// By default, this method will ONLY match entities in the message text.
  StreamSubscription<MessageContext> entities(
    List<MessageEntityType> types,
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    return onMessage.where((context) {
      List<MessageEntity>? entities = context.message.entities;
      if (shouldMatchCaptionEntities) {
        entities = entities ?? context.message.captionEntities;
      }
      if (entities == null) return false;

      bool hasMatch = types.every((element) => entities!.any(
            (e) => e.type == element,
          ));

      if (hasMatch) {
        return true;
      }
      return false;
    }).listen(callback);
  }

  /// Registers callback for the [ChatMemberUpdated] events
  StreamSubscription<ChatMemberUpdatedContext>
      _internalChatMemberUpdatedHandling({
    required Stream<ChatMemberUpdatedContext> stream,
    required ChatMemberUpdatedHandler callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return stream.where((context) {
      if (oldStatus == null && newStatus == null) {
        return true;
      }
      if (oldStatus != null && newStatus != null) {
        if (context.oldStatus == oldStatus && context.status == newStatus) {
          return true;
        }
      }
      if (oldStatus != null && context.oldStatus == oldStatus) {
        return true;
      }
      if (newStatus != null && context.status == newStatus) {
        return true;
      }
      return false;
    }).listen(callback);
  }

  /// Registers a callback for the [Update.chatMember] events.
  ///
  /// If you want to receive the Chat Member updates, you must explicitly specify
  /// the `UpdateType.chatMember` in the [LongPolling.allowedUpdates] property.
  ///
  /// You can optionally specify [ChatMemberStatus] to [oldStatus] and [newStatus]
  /// filter to only receive updates for a specific status.
  StreamSubscription<ChatMemberUpdatedContext> chatMember({
    required ChatMemberUpdatedHandler callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return _internalChatMemberUpdatedHandling(
      stream: onChatMember,
      callback: callback,
      oldStatus: oldStatus,
      newStatus: newStatus,
    );
  }

  /// Registers a callback for the [Update.myChatMember] events.
  ///
  /// You can optionally specify [ChatMemberStatus] to [oldStatus] and [newStatus]
  /// filter to only receive updates for a specific status.
  StreamSubscription<ChatMemberUpdatedContext> myChatMember({
    required ChatMemberUpdatedHandler callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return _internalChatMemberUpdatedHandling(
      stream: onMyChatMember,
      callback: callback,
      oldStatus: oldStatus,
      newStatus: newStatus,
    );
  }

  /// Registers a callback for the [Update.poll] events.
  StreamSubscription<PollContext> poll(PollHandler callback) {
    return onPoll.listen(callback);
  }

  /// Registers a callback for the [Update.pollAnswer] events.
  ///
  /// Optionally pass the [pollId] parameter to only receive updates for a specific poll.
  StreamSubscription<PollAnswerContext> pollAnswer({
    required PollAnswerHandler callback,
    String? pollId,
  }) {
    return onPollAnswer
        .where((event) => pollId == null || event.pollId == pollId)
        .listen(callback);
  }

  /// Registers a callback for the [Update.chosenInlineResult] events.
  /// The callback will be called when a chosen inline result is received.
  StreamSubscription<ChosenInlineResultContext> chosenInlineResult(
    ChosenInlineResultHandler callback,
  ) {
    return onChosenInlineResult.listen(callback);
  }

  /// Registers a callback for the [Update.chatJoinRequest] events.
  ///
  /// The callback will be called when a chat join request is received.
  StreamSubscription<ChatJoinRequestContext> chatJoinRequest(
    ChatJoinRequestHandler callback,
  ) {
    return onChatJoinRequest.listen(callback);
  }
}
