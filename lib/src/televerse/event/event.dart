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
}
