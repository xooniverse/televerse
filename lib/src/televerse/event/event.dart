part of televerse;

class Event {
  bool sync;

  Event({this.sync = false})
      : _messageController = StreamController<MessageContext>.broadcast(
          sync: sync,
        ),
        _editedMessageController = StreamController<MessageContext>.broadcast(
          sync: sync,
        ),
        _channelPostController = StreamController<MessageContext>.broadcast(
          sync: sync,
        ),
        _editedChannelPostController =
            StreamController<MessageContext>.broadcast(
          sync: sync,
        ),
        _inlineQueryController = StreamController<InlineQueryContext>.broadcast(
          sync: sync,
        ),
        _chosenInlineResultController =
            StreamController<ChosenInlineResult>.broadcast(
          sync: sync,
        ),
        _callbackQueryController =
            StreamController<CallbackQueryContext>.broadcast(
          sync: sync,
        ),
        _shippingQueryController = StreamController<ShippingQuery>.broadcast(
          sync: sync,
        ),
        _preCheckoutQueryController =
            StreamController<PreCheckoutQuery>.broadcast(
          sync: sync,
        ),
        _pollController = StreamController<Poll>.broadcast(
          sync: sync,
        ),
        _pollAnswerController = StreamController<PollAnswer>.broadcast(
          sync: sync,
        ),
        _myChatMemberController = StreamController<ChatMemberUpdated>.broadcast(
          sync: sync,
        ),
        _chatMemberController = StreamController<ChatMemberUpdated>.broadcast(
          sync: sync,
        ),
        _chatJoinRequestController =
            StreamController<ChatJoinRequest>.broadcast(
          sync: sync,
        );

  final StreamController<MessageContext> _messageController;
  final StreamController<MessageContext> _editedMessageController;
  final StreamController<MessageContext> _channelPostController;
  final StreamController<MessageContext> _editedChannelPostController;
  final StreamController<InlineQueryContext> _inlineQueryController;
  final StreamController<ChosenInlineResult> _chosenInlineResultController;
  final StreamController<CallbackQueryContext> _callbackQueryController;
  final StreamController<ShippingQuery> _shippingQueryController;
  final StreamController<PreCheckoutQuery> _preCheckoutQueryController;
  final StreamController<Poll> _pollController;
  final StreamController<PollAnswer> _pollAnswerController;
  final StreamController<ChatMemberUpdated> _myChatMemberController;
  final StreamController<ChatMemberUpdated> _chatMemberController;
  final StreamController<ChatJoinRequest> _chatJoinRequestController;

  Stream<MessageContext> get onMessage => _messageController.stream;
  Stream<MessageContext> get onEditedMessage => _editedMessageController.stream;
  Stream<MessageContext> get onChannelPost => _channelPostController.stream;
  Stream<MessageContext> get onEditedChannelPost =>
      _editedChannelPostController.stream;
  Stream<InlineQueryContext> get onInlineQuery => _inlineQueryController.stream;
  Stream<ChosenInlineResult> get onChosenInlineResult =>
      _chosenInlineResultController.stream;
  Stream<CallbackQueryContext> get onCallbackQuery =>
      _callbackQueryController.stream;
  Stream<ShippingQuery> get onShippingQuery => _shippingQueryController.stream;
  Stream<PreCheckoutQuery> get onPreCheckoutQuery =>
      _preCheckoutQueryController.stream;
  Stream<Poll> get onPoll => _pollController.stream;
  Stream<PollAnswer> get onPollAnswer => _pollAnswerController.stream;
  Stream<ChatMemberUpdated> get onMyChatMember =>
      _myChatMemberController.stream;
  Stream<ChatMemberUpdated> get onChatMember => _chatMemberController.stream;
  Stream<ChatJoinRequest> get onChatJoinRequest =>
      _chatJoinRequestController.stream;

  void onUpdates(List<Update> updates, Televerse televerse) {
    for (Update update in updates) {
      emitUpdate(update, televerse);
    }
  }

  void emitUpdate(Update update, Televerse televerse) {
    if (update.type == UpdateType.message) {
      _messageController.add(MessageContext(televerse, update.message!));
    } else if (update.type == UpdateType.editedMessage) {
      _editedMessageController
          .add(MessageContext(televerse, update.editedMessage!));
    } else if (update.type == UpdateType.channelPost) {
      _channelPostController
          .add(MessageContext(televerse, update.channelPost!));
    } else if (update.type == UpdateType.editedChannelPost) {
      _editedChannelPostController
          .add(MessageContext(televerse, update.editedChannelPost!));
    } else if (update.type == UpdateType.inlineQuery) {
      _inlineQueryController
          .add(InlineQueryContext(televerse, update.inlineQuery!));
    } else if (update.type == UpdateType.chosenInlineResult) {
      _chosenInlineResultController.add(update.chosenInlineResult!);
    } else if (update.type == UpdateType.callbackQuery) {
      _callbackQueryController
          .add(CallbackQueryContext(televerse, update.callbackQuery!));
    } else if (update.type == UpdateType.shippingQuery) {
      _shippingQueryController.add(update.shippingQuery!);
    } else if (update.type == UpdateType.preCheckoutQuery) {
      _preCheckoutQueryController.add(update.preCheckoutQuery!);
    } else if (update.type == UpdateType.poll) {
      _pollController.add(update.poll!);
    } else if (update.type == UpdateType.pollAnswer) {
      _pollAnswerController.add(update.pollAnswer!);
    } else if (update.type == UpdateType.myChatMember) {
      _myChatMemberController.add(update.myChatMember!);
    } else if (update.type == UpdateType.chatMember) {
      _chatMemberController.add(update.chatMember!);
    } else if (update.type == UpdateType.chatJoinRequest) {
      _chatJoinRequestController.add(update.chatJoinRequest!);
    }
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
    String command,
    FutureOr<void> Function(MessageContext ctx) callback,
  ) {
    onMessage.listen((MessageContext context) {
      if (context.message.text!.startsWith('/$command')) {
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
    FutureOr<void> Function(CallbackQueryContext ctx) callback,
  ) {
    onCallbackQuery.listen((CallbackQueryContext context) {
      if (context.query.data == data) {
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
    FutureOr<void> Function(MessageContext ctx) callback,
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
    FutureOr<void> Function(MessageContext ctx) callback,
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
    FutureOr<void> Function(MessageContext ctx) callback,
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
    FutureOr<void> Function(MessageContext ctx) callback,
  ) {
    onMessage.listen((MessageContext context) {
      if (context.message.text?.contains(text) ?? false) {
        callback(context);
      }
    });
  }
}
