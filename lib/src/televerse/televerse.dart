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
class Televerse {
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
  late final Fetcher fetcher;

  /// The bot token.
  final String token;

  /// Create a new bot instance.
  ///
  /// To create a new bot instance, you need to pass the bot token. You can also pass a [fetcher] to the constructor. The fetcher is used to fetch updates from the Telegram servers. By default, the bot uses long polling to fetch updates. You can also use webhooks to fetch updates.
  ///
  /// ## Using Local Bot API Server
  /// You can use the [Televerse] class to create a bot instance that listens to a local Bot API server. Use the [Televerse.local] constructor to create a bot instance that listens to a local Bot API server.
  ///
  /// You can pass the [baseURL] parameter to the constructor to specify the base URL of the Telegram Bot API. By default, the base URL is `api.telegram.org`. This parameter will be used to create the [RawAPI] instance that points to your local Bot API server.
  /// If you're running the Bot API server locally, you should pass the [baseURL] and the [scheme] parameters to the constructor.
  Televerse(
    this.token, {
    Fetcher? fetcher,
    String baseURL = RawAPI.defaultBase,
    APIScheme scheme = APIScheme.https,
  })  : _baseURL = baseURL,
        isLocal = baseURL != RawAPI.defaultBase,
        _scheme = scheme {
    this.fetcher = fetcher ?? LongPolling();
    this.fetcher.setApi(api);
    _instance = this;

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

  /// Whether the function is async or not.
  /// Thanks to StackOverflow answer: https://stackoverflow.com/a/63109983/10006183
  bool _checkSync(Function fn) {
    if (fn is Future Function(Never)) return true;
    return false;
  }

  /// Emit new update into the stream.
  void _onUpdate(Update update) async {
    final sub = _handlerScopes.where((scope) {
      return scope.types.contains(update.type);
    });
    for (HandlerScope scope in sub) {
      Context context = scope.context(api, update);
      if (scope.special) {
        if (scope.isCommand) {
          context as MessageContext;
          String? text = context.message.text;
          if (text != null) {
            List<String> split = text.split(' ');
            bool hasParam = split.length > 1;
            if (hasParam && split.first == '/start') {
              context.startParameter = split.sublist(1).join(' ');
            }
          }
        }
        if (scope.isRegExp) {
          context as MessageContext;
          String? text = context.message.text;
          if (text != null && scope.pattern != null) {
            context.matches = scope.pattern!.allMatches(text).toList();
          }
        }
      }
      if (scope.predicate(context)) {
        if (_checkSync(scope.handler)) {
          ((scope.handler(context)) as Future).catchError((err) {
            if (_onError != null) {
              _onError!(err, StackTrace.current);
            } else {
              throw err;
            }
          });
        } else {
          try {
            scope.handler(context);
          } catch (err, stack) {
            if (_onError != null) {
              _onError!(err, stack);
            } else {
              rethrow;
            }
          }
        }
        break;
      }
    }
  }

  /// List of Handler Scopes
  final List<HandlerScope> _handlerScopes = [];

  /// Start polling for updates.
  ///
  /// This method starts polling for updates. It will automatically start the fetcher.
  ///
  /// You can pass a [handler] to the method. The handler will be called when a message is received that starts with the `/start` command.
  Future<void> start([FutureOr<void> Function(MessageContext)? handler]) async {
    // Registers a handler to listen for /start command
    if (handler != null) {
      command("start", handler);
    }
    fetcher.onUpdate().listen(_onUpdate);
    try {
      return await fetcher.start();
    } catch (err, stack) {
      if (_onError != null) {
        fetcher.stop();
        await _onError!(err, stack);
        return fetcher.start();
      } else {
        rethrow;
      }
    }
  }

  /// Stop listening for updates.
  Future<void> stop() {
    return fetcher.stop();
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
  void command(
    Pattern command,
    MessageHandler callback,
  ) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      isCommand: true,
      handler: callback,
      types: [UpdateType.message],
      predicate: (ctx) {
        ctx as MessageContext;
        if (ctx.message.text == null) return false;
        if (command is RegExp) {
          return command.hasMatch(ctx.message.text!);
        } else if (command is String) {
          return ctx.message.text!.split(' ').first == '/$command';
        }
        return false;
      },
    );
    _handlerScopes.add(scope);
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
  void callbackQuery(
    Pattern data,
    CallbackQueryHandler callback, {
    @Deprecated("Use the 'data' parameter instead.") RegExp? regex,
  }) {
    HandlerScope scope = HandlerScope<CallbackQueryHandler>(
      handler: callback,
      types: [UpdateType.callbackQuery],
      predicate: (ctx) {
        ctx as CallbackQueryContext;
        if (ctx.data == null) return false;
        if (data is RegExp) {
          return data.hasMatch(ctx.data!);
        } else if (data is String) {
          return ctx.data == data;
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
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
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return ctx.message.chat.type == type;
      },
    );

    _handlerScopes.add(scope);
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
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return types.contains(ctx.message.chat.type);
      },
    );

    _handlerScopes.add(scope);
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
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return predicate(ctx);
      },
    );

    _handlerScopes.add(scope);
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
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return ctx.message.text == text;
      },
    );

    _handlerScopes.add(scope);
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
    HandlerScope scope = HandlerScope<MessageHandler>(
      pattern: exp,
      isRegExp: true,
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return exp.hasMatch(ctx.message.text ?? '');
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for inline queries.
  ///
  /// The callback will be called when an inline query with the specified query is received.
  void inlineQuery(
    InlineQueryHandler Function(InlineQueryContext ctx) callback,
  ) {
    HandlerScope scope = HandlerScope<InlineQueryHandler>(
      handler: callback,
      types: [
        UpdateType.inlineQuery,
      ],
      predicate: (ctx) {
        return true;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the `/settings` command.
  void settings(MessageHandler handler) {
    return command("settings", handler);
  }

  /// Registers a callback for the `/help` command.
  void help(MessageHandler handler) {
    return command("help", handler);
  }

  /// Registers a callback for on any unexpected error.
  void onError(
    void Function(Object err, StackTrace stackTrace) handler,
  ) {
    _onError = handler;
  }

  /// A filter that matches messages that contains the specified entity type.
  /// Optionally, you can pass the [content] parameter to match messages that
  /// contains the specified entity type and the specified content.
  ///
  /// This acts as a shortcut for the [entity] method and [onHashtag] methods.
  bool _internalEntityMatcher({
    required MessageContext context,
    required MessageEntityType type,
    String? content,
    bool shouldMatchCaptionEntities = false,
  }) {
    List<MessageEntity>? entities = context.message.entities;
    if (shouldMatchCaptionEntities) {
      entities = entities ?? context.message.captionEntities;
    }
    if (entities == null) return false;
    bool hasMatch = entities.any((element) => element.type == type);

    if (content != null) {
      String value;
      switch (type) {
        case MessageEntityType.hashtag:
          value = "#$content";
          break;
        case MessageEntityType.mention:
          value = "@$content";
          break;
        default:
          value = content;
      }
      hasMatch = entities.any((element) {
        if (element.type == type) {
          if (!shouldMatchCaptionEntities) {
            return context.message.text!.substring(
                  element.offset,
                  element.offset + element.length,
                ) ==
                value;
          } else {
            return context.message.caption!.substring(
                  element.offset,
                  element.offset + element.length,
                ) ==
                value;
          }
        }
        return false;
      });
    }

    return hasMatch;
  }

  /// Registers a callback for messages that contains the specified entity type.
  ///
  /// Pass the `shouldMatchCaptionEntities` parameter to match entities in the
  /// caption of a message. Such as a photo or video message.
  ///
  /// By default, this method will ONLY match entities in the message text.
  void entity(
    MessageEntityType type,
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return _internalEntityMatcher(
          context: ctx,
          type: type,
          shouldMatchCaptionEntities: shouldMatchCaptionEntities,
        );
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for messages that contains the specified entity types.
  /// The callback will be called when a message is received that contains the
  /// specified entity types.
  ///
  /// Pass the `shouldMatchCaptionEntities` parameter to match entities in the
  /// caption of a message. Such as a photo or video message.
  ///
  /// By default, this method will ONLY match entities in the message text.
  void entities(
    List<MessageEntityType> types,
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        List<MessageEntity>? entities = ctx.message.entities;
        if (shouldMatchCaptionEntities) {
          entities = entities ?? ctx.message.captionEntities;
        }
        if (entities == null) return false;

        bool hasMatch = types.every((element) => entities!.any(
              (e) => e.type == element,
            ));

        return hasMatch;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers callback for the [ChatMemberUpdated] events
  void _internalChatMemberUpdatedHandling({
    required ChatMemberUpdatedHandler callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    HandlerScope scope = HandlerScope<ChatMemberUpdatedHandler>(
      handler: callback,
      types: [
        UpdateType.chatMember,
      ],
      predicate: (ctx) {
        ctx as ChatMemberUpdatedContext;
        if (oldStatus == null && newStatus == null) {
          return true;
        }
        if (oldStatus != null && newStatus != null) {
          if (ctx.oldStatus == oldStatus && ctx.status == newStatus) {
            return true;
          }
        }
        if (oldStatus != null && ctx.oldStatus == oldStatus) {
          return true;
        }
        if (newStatus != null && ctx.status == newStatus) {
          return true;
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the [Update.chatMember] events.
  ///
  /// If you want to receive the Chat Member updates, you must explicitly specify
  /// the `UpdateType.chatMember` in the [LongPolling.allowedUpdates] property.
  ///
  /// You can optionally specify [ChatMemberStatus] to [oldStatus] and [newStatus]
  /// filter to only receive updates for a specific status.
  void chatMember(
    ChatMemberUpdatedHandler callback, {
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return _internalChatMemberUpdatedHandling(
      callback: callback,
      oldStatus: oldStatus,
      newStatus: newStatus,
    );
  }

  /// Registers a callback for the [Update.myChatMember] events.
  ///
  /// You can optionally specify [ChatMemberStatus] to [oldStatus] and [newStatus]
  /// filter to only receive updates for a specific status.
  void myChatMember({
    required ChatMemberUpdatedHandler callback,
    ChatMemberStatus? oldStatus,
    ChatMemberStatus? newStatus,
  }) {
    return _internalChatMemberUpdatedHandling(
      callback: callback,
      oldStatus: oldStatus,
      newStatus: newStatus,
    );
  }

  /// Registers a callback for the [Update.poll] events.
  void poll(PollHandler callback) {
    HandlerScope scope = HandlerScope<PollHandler>(
      handler: callback,
      types: [
        UpdateType.poll,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the [Update.pollAnswer] events.
  ///
  /// Optionally pass the [pollId] parameter to only receive updates for a specific poll.
  void pollAnswer(
    PollAnswerHandler callback, {
    String? pollId,
  }) {
    HandlerScope scope = HandlerScope<PollAnswerHandler>(
      handler: callback,
      types: [
        UpdateType.pollAnswer,
      ],
      predicate: (ctx) {
        ctx as PollAnswerContext;
        if (pollId == null) return true;
        return ctx.pollId == pollId;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the [Update.chosenInlineResult] events.
  /// The callback will be called when a chosen inline result is received.
  void chosenInlineResult(
    ChosenInlineResultHandler callback,
  ) {
    HandlerScope scope = HandlerScope<ChosenInlineResultHandler>(
      handler: callback,
      types: [
        UpdateType.chosenInlineResult,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for the [Update.chatJoinRequest] events.
  ///
  /// The callback will be called when a chat join request is received.
  void chatJoinRequest(ChatJoinRequestHandler callback) {
    HandlerScope scope = HandlerScope<ChatJoinRequestHandler>(
      handler: callback,
      types: [
        UpdateType.chatJoinRequest,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for Shipping Query events.
  void shippingQuery(
    ShippingQueryHandler callback,
  ) {
    HandlerScope scope = HandlerScope<ShippingQueryHandler>(
      handler: callback,
      types: [
        UpdateType.shippingQuery,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for Pre Checkout Query events.
  void preCheckoutQuery(
    PreCheckoutQueryHandler callback,
  ) {
    HandlerScope scope = HandlerScope<PreCheckoutQueryHandler>(
      handler: callback,
      types: [
        UpdateType.preCheckoutQuery,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Sets up a callback for when a message with URL is received.
  void onURL(
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    return entity(
      MessageEntityType.url,
      callback,
      shouldMatchCaptionEntities: shouldMatchCaptionEntities,
    );
  }

  /// Sets up a callback for when a message with email is received.
  void onEmail(
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    return entity(
      MessageEntityType.email,
      callback,
      shouldMatchCaptionEntities: shouldMatchCaptionEntities,
    );
  }

  /// Sets up a callback for when a message with phone number is received.
  void onPhoneNumber(
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
  }) {
    return entity(
      MessageEntityType.phoneNumber,
      callback,
      shouldMatchCaptionEntities: shouldMatchCaptionEntities,
    );
  }

  /// Sets up a callback for when a message with hashtag is received.
  void onHashtag(
    MessageHandler callback, {
    bool shouldMatchCaptionEntities = false,
    String? hashtag,
  }) {
    if (hashtag == null) {
      return entity(
        MessageEntityType.hashtag,
        callback,
        shouldMatchCaptionEntities: shouldMatchCaptionEntities,
      );
    }

    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        return _internalEntityMatcher(
          context: ctx,
          type: MessageEntityType.hashtag,
          content: hashtag,
          shouldMatchCaptionEntities: shouldMatchCaptionEntities,
        );
      },
    );

    _handlerScopes.add(scope);
  }

  /// Sets up a callback for when a mention is occurred.
  /// Optionally, you can pass the [username] parameter or [userId] parameter to
  /// only receive updates for a specific user.
  ///
  /// [username] - The username of the user. Don't pass the leading '@' character.
  ///
  /// [userId] - The ID of the user.
  ///
  /// When the [username] parameter is passed, the callback will be called when a
  /// [MessageEntityType.mention] entity is occurred with the specified username.
  ///
  /// When the [userId] parameter is passed, the callback will be called when a
  /// [MessageEntityType.textMention] entity is occurred with the specified user ID.
  ///
  /// That is you don't have to setup a different callback for [MessageEntityType.mention]
  /// and [MessageEntityType.textMention] entities. (Well, you can if you want to.)
  void onMention(
    MessageHandler callback, {
    String? username,
    int? userId,
  }) {
    if (username == null && userId == null) {
      return entity(
        MessageEntityType.mention,
        callback,
      );
    }
    if (username != null) {
      HandlerScope scope = HandlerScope<MessageHandler>(
        handler: callback,
        types: [
          UpdateType.message,
        ],
        predicate: (ctx) {
          ctx as MessageContext;
          return _internalEntityMatcher(
            context: ctx,
            type: MessageEntityType.mention,
            content: username,
          );
        },
      );
      return _handlerScopes.add(scope);
    }

    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) {
        ctx as MessageContext;
        List<MessageEntity>? entities = ctx.message.entities;
        if (entities == null) return false;
        bool hasMatch = entities.any((element) {
          if (element.type == MessageEntityType.textMention) {
            return element.user?.id == userId;
          }
          return false;
        });

        return hasMatch;
      },
    );

    _handlerScopes.add(scope);
  }

  /// This method sets up a callback when the bot is mentioned.
  ///
  /// This method possibly returns a [Future] if the bot information is not available
  /// when the method is called. If the bot information is not available, the method
  /// will fetch the bot information using the [RawAPI.getMe] method and then setup the callback.
  ///
  ///
  Future<void> whenMentioned(
    MessageHandler callback,
  ) async {
    try {
      return onMention(
        callback,
        username: me.username,
      );
    } on TeleverseException catch (_) {
      _me = await api.getMe();
      return onMention(
        callback,
        username: me.username,
      );
    }
  }

  /// Registers a callback for particular filter types.
  ///
  /// The call back will be only be executed on specific update types. You can
  /// use the [TeleverseEvent] object to specify which update you want to listen to.
  @Deprecated(
    "The [on] method will not work on the latest versions of Televerse.\nPlease use the related handler methods instead. The [on] method might be removed in the future.",
  )
  void on(TeleverseEvent type, void Function(Context ctx) callback) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: type.types,
      predicate: (ctx) {
        bool isMessage = ctx.update.message != null;
        bool isChannelPost = ctx.update.channelPost != null;
        bool isEditedMessage = ctx.update.editedMessage != null;
        bool isEditedChannelPost = ctx.update.editedChannelPost != null;

        bool isMessageEvent = isMessage || isEditedMessage;
        bool isChannelPostEvent = isChannelPost || isEditedChannelPost;

        Message? message;
        if (isMessage) {
          message = ctx.update.message;
        } else if (isChannelPost) {
          message = ctx.update.channelPost;
        } else if (isEditedMessage) {
          message = ctx.update.editedMessage;
        } else if (isEditedChannelPost) {
          message = ctx.update.editedChannelPost;
        }

        bool isCommand = message?.entities?.any(
              (entity) =>
                  entity.type == MessageEntityType.botCommand &&
                  entity.offset == 0,
            ) ??
            false;

        bool isTextMessage = message?.text != null && !isCommand;
        bool isAudio = message?.audio != null;
        bool isAudioMessage = ctx.update.message?.audio != null ||
            ctx.update.editedMessage?.audio != null;

        bool isEdited = isEditedMessage || isEditedChannelPost;

        bool hasDocument = message?.document != null;
        bool hasPhoto = message?.photo != null;

        if (type == TeleverseEvent.command && isCommand) {
          return true;
        }

        if (type == TeleverseEvent.text && isTextMessage) {
          return true;
        }

        if (type == TeleverseEvent.audio && isAudio) {
          return true;
        }

        if (type == TeleverseEvent.audio && isAudioMessage) {
          return true;
        }

        if (type == TeleverseEvent.edited && isEdited) {
          return true;
        }

        if (type == TeleverseEvent.editedMessage && isEditedMessage) {
          return true;
        }

        if (type == TeleverseEvent.editedChannelPost && isEditedChannelPost) {
          return true;
        }

        if (type == TeleverseEvent.document && hasDocument) {
          return true;
        }

        if (type == TeleverseEvent.documentMessage &&
            isMessageEvent &&
            hasDocument) {
          return true;
        }

        if (type == TeleverseEvent.documentChannelPost &&
            isChannelPostEvent &&
            hasDocument) {
          return true;
        }

        if (type == TeleverseEvent.photo && hasPhoto) {
          return true;
        }

        if (type == TeleverseEvent.photoMessage && isMessageEvent && hasPhoto) {
          return true;
        }

        if (type == TeleverseEvent.photoChannelPost &&
            isChannelPostEvent &&
            hasPhoto) {
          return true;
        }
        return false;
      },
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Message updates
  void onMessage(MessageHandler callback) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Edited Message updates
  void onEditedMessage(MessageHandler callback) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Channel Post updates
  void onChannelPost(MessageHandler callback) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Edited Channel Post updates
  void onEditedChannelPost(MessageHandler callback) {
    HandlerScope scope = HandlerScope<MessageHandler>(
      handler: callback,
      types: [
        UpdateType.message,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Inline Query updates
  void onInlineQuery(InlineQueryHandler callback) {
    HandlerScope scope = HandlerScope<InlineQueryHandler>(
      handler: callback,
      types: [
        UpdateType.inlineQuery,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Chosen Inline Result updates
  void onChosenInlineResult(ChosenInlineResultHandler callback) {
    HandlerScope scope = HandlerScope<ChosenInlineResultHandler>(
      handler: callback,
      types: [
        UpdateType.chosenInlineResult,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Callback Query updates
  void onCallbackQuery(CallbackQueryHandler callback) {
    HandlerScope scope = HandlerScope<CallbackQueryHandler>(
      handler: callback,
      types: [
        UpdateType.callbackQuery,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Shipping Query updates
  void onShippingQuery(ShippingQueryHandler callback) {
    HandlerScope scope = HandlerScope<ShippingQueryHandler>(
      handler: callback,
      types: [
        UpdateType.shippingQuery,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Pre Checkout Query updates
  void onPreCheckoutQuery(PreCheckoutQueryHandler callback) {
    HandlerScope scope = HandlerScope<PreCheckoutQueryHandler>(
      handler: callback,
      types: [
        UpdateType.preCheckoutQuery,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Poll updates
  void onPoll(PollHandler callback) {
    HandlerScope scope = HandlerScope<PollHandler>(
      handler: callback,
      types: [
        UpdateType.poll,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Poll Answer updates
  void onPollAnswer(PollAnswerHandler callback) {
    HandlerScope scope = HandlerScope<PollAnswerHandler>(
      handler: callback,
      types: [
        UpdateType.pollAnswer,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all My Chat Member updates
  void onMyChatMember(ChatMemberUpdatedHandler callback) {
    HandlerScope scope = HandlerScope<ChatMemberUpdatedHandler>(
      handler: callback,
      types: [
        UpdateType.chatMember,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Chat Member updates
  void onChatMember(ChatMemberUpdatedHandler callback) {
    HandlerScope scope = HandlerScope<ChatMemberUpdatedHandler>(
      handler: callback,
      types: [
        UpdateType.chatMember,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }

  /// Registers a callback for all Chat Join Request updates
  void onChatJoinRequest(ChatJoinRequestHandler callback) {
    HandlerScope scope = HandlerScope<ChatJoinRequestHandler>(
      handler: callback,
      types: [
        UpdateType.chatJoinRequest,
      ],
      predicate: (ctx) => true,
    );

    _handlerScopes.add(scope);
  }
}
