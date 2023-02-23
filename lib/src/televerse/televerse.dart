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
  static late String _botToken;

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
      return Televerse(_botToken);
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
    return RawAPI(token);
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
  Televerse(
    this.token, {
    Fetcher? fetcher,
    super.sync,
  }) {
    this.fetcher = fetcher ?? LongPolling();
    this.fetcher.setApi(api);
    _botToken = token;
  }

  /// Emit new update into the stream.
  void _onUpdate(Update update) {
    emitUpdate(update, this);
  }

  /// Start polling for updates.
  Future<void> start({
    FutureOr<void> Function(MessageContext)? handler,
    Function(dynamic error)? errorHandler,
  }) async {
    final startFuture = fetcher.start();
    if (errorHandler != null) {
      startFuture.catchError(errorHandler);
    }
    fetcher.onUpdate().listen((update) {
      _onUpdate(update);
    });

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
  ///
  /// Optionally, you can specify a [pattern] to match the command with. If the command matches the pattern, the [MessageContext.matches] will be set to the matches.
  void command(
    String command,
    MessageHandler callback, {
    RegExp? pattern,
  }) {
    onMessage.listen((MessageContext context) {
      if (context.message.text == null) return;
      if (context.message.text!.startsWith('/$command')) {
        if (command == 'start' && context.message.text!.split(' ').length > 1) {
          context.startParameter =
              context.message.text!.split(' ').sublist(1).join(' ');
        }
        if (pattern != null) {
          context.matches = pattern.allMatches(context.message.text!).toList();
        }

        callback(context);
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
  void callbackQuery(
    String data,
    CallbackQueryHandler callback, {
    RegExp? regex,
  }) {
    onCallbackQuery.listen((CallbackQueryContext context) {
      if (context.data == null) return;
      if (regex != null && regex.hasMatch(context.data!)) {
        context.matches = regex.allMatches(context.data!).toList();
        callback(context);
        return;
      }
      if (context.data == data) {
        callback(context);
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
  void chatType(
    ChatType type,
    MessageHandler callback,
  ) {
    onMessage.listen((MessageContext context) {
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
  void chatTypes(
    List<ChatType> types,
    MessageHandler callback,
  ) {
    onMessage.listen((MessageContext context) {
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
  void filter(
    bool Function(MessageContext ctx) predicate,
    MessageHandler callback,
  ) {
    onMessage.listen((MessageContext context) {
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
  void text(
    String text,
    MessageHandler callback,
  ) {
    onMessage.listen((MessageContext context) {
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
  void hears(
    RegExp exp,
    MessageHandler callback,
  ) {
    onMessage.listen((MessageContext context) {
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
  void inlineQuery(
    InlineQueryHandler Function(InlineQueryContext ctx) callback,
  ) {
    onInlineQuery.listen(callback);
  }

  /// Registers a callback for the `/settings` command.
  void settings(MessageHandler handler) async {
    command("settings", handler);
  }

  /// Registers a callback for the `/help` command.
  void help(MessageHandler handler) async {
    command("help", handler);
  }
}
