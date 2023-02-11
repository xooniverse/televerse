library televerse.event;

import 'dart:async';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

part 'on.dart';

/// This class is used to handle events. The [Event] class is extended to [Televerse] class and is used to handle events. The [Event] class contains all the event streams and methods to handle events.
///
/// You probably won't need to use this class directly, but you can use it to handle events.
class Event {
  final bool sync;
  Televerse? _televerse;

  /// Create a new Event instance.
  ///
  /// You can pass a [sync] parameter to the constructor. If [sync] is true, the event streams will be synchronous. If [sync] is false, the event streams will be asynchronous.
  ///
  /// If [sync] is true, events may be fired directly by the stream's subscriptions during an [StreamController.add], [StreamController.addError] or [StreamController.close] call. The returned stream controller is a [SynchronousStreamController], and must be used with the care and attention necessary to not break the [Stream] contract. See [Completer.sync] for some explanations on when a synchronous dispatching can be used. If in doubt, keep the controller non-sync.
  ///
  /// If [sync] is false, the event will always be fired at a later time, after the code adding the event has completed. In that case, no guarantees are given with regard to when multiple listeners get the events, except that each listener will get all events in the correct order. Each subscription handles the events individually. If two events are sent on an async controller with two listeners, one of the listeners may get both events before the other listener gets any. A listener must be subscribed both when the event is initiated (that is, when [add] is called) and when the event is later delivered, in order to receive the event.
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
        ),
        _updateStreamController = StreamController<Update>.broadcast(
          sync: sync,
        );

  /// Stream Controller to handle incoming messages.
  final StreamController<MessageContext> _messageController;

  /// Stream Controller to handle edited messages.
  final StreamController<MessageContext> _editedMessageController;

  /// Stream Controller to handle channel posts.
  final StreamController<MessageContext> _channelPostController;

  /// Stream Controller to handle edited channel posts.
  final StreamController<MessageContext> _editedChannelPostController;

  /// Stream Controller to handle inline queries.
  final StreamController<InlineQueryContext> _inlineQueryController;

  /// Stream Controller to handle chosen inline results.
  final StreamController<ChosenInlineResult> _chosenInlineResultController;

  /// Stream Controller to handle callback queries.
  final StreamController<CallbackQueryContext> _callbackQueryController;

  /// Stream Controller to handle shipping queries.
  final StreamController<ShippingQuery> _shippingQueryController;

  /// Stream Controller to handle pre-checkout queries.
  final StreamController<PreCheckoutQuery> _preCheckoutQueryController;

  /// Stream Controller to handle polls.
  final StreamController<Poll> _pollController;

  /// Stream Controller to handle poll answers.
  final StreamController<PollAnswer> _pollAnswerController;

  /// Stream Controller to handle my chat member updates.
  final StreamController<ChatMemberUpdated> _myChatMemberController;

  /// Stream Controller to handle chat member updates.
  final StreamController<ChatMemberUpdated> _chatMemberController;

  /// Stream Controller to handle chat join requests.
  final StreamController<ChatJoinRequest> _chatJoinRequestController;

  /// Stream Controller to handle updates.
  final StreamController<Update> _updateStreamController;

  /// **onMessage** is a stream of [MessageContext] which is emitted when a message of any type is is received.
  Stream<MessageContext> get onMessage => _messageController.stream;

  /// **onEditedMessage** is a stream of [MessageContext] which is emitted when a message is edited.
  Stream<MessageContext> get onEditedMessage => _editedMessageController.stream;

  /// **onChannelPost** is a stream of [MessageContext] which is emitted when a message is sent to a channel.
  Stream<MessageContext> get onChannelPost => _channelPostController.stream;

  /// **onEditedChannelPost** is a stream of [MessageContext] which is emitted when a message is edited in a channel.
  Stream<MessageContext> get onEditedChannelPost =>
      _editedChannelPostController.stream;

  /// **onInlineQuery** is a stream of [InlineQueryContext] which is emitted when an inline query is received.
  Stream<InlineQueryContext> get onInlineQuery => _inlineQueryController.stream;

  /// **onChosenInlineResult** is a stream of [ChosenInlineResult] which is emitted when a user chooses an inline result.
  Stream<ChosenInlineResult> get onChosenInlineResult =>
      _chosenInlineResultController.stream;

  /// **onCallbackQuery** is a stream of [CallbackQueryContext] which is emitted when a callback query is received.
  Stream<CallbackQueryContext> get onCallbackQuery =>
      _callbackQueryController.stream;

  /// **onShippingQuery** is a stream of [ShippingQuery] which is emitted when a shipping query is received.
  Stream<ShippingQuery> get onShippingQuery => _shippingQueryController.stream;

  /// **onPreCheckoutQuery** is a stream of [PreCheckoutQuery] which is emitted when a pre-checkout query is received.
  Stream<PreCheckoutQuery> get onPreCheckoutQuery =>
      _preCheckoutQueryController.stream;

  /// **onPoll** is a stream of [Poll] which is emitted when a poll is received.
  Stream<Poll> get onPoll => _pollController.stream;

  /// **onPollAnswer** is a stream of [PollAnswer] which is emitted when a poll answer is received.
  Stream<PollAnswer> get onPollAnswer => _pollAnswerController.stream;

  /// **onMyChatMember** is a stream of [ChatMemberUpdated] which is emitted when the bot's chat member status is updated.
  Stream<ChatMemberUpdated> get onMyChatMember =>
      _myChatMemberController.stream;

  /// **onChatMember** is a stream of [ChatMemberUpdated] which is emitted when a chat member's status is updated.
  Stream<ChatMemberUpdated> get onChatMember => _chatMemberController.stream;

  /// **onChatJoinRequest** is a stream of [ChatJoinRequest] which is emitted when a user requests to join a chat.
  Stream<ChatJoinRequest> get onChatJoinRequest =>
      _chatJoinRequestController.stream;

  /// **onUpdate** is a stream of [Update] which is emitted when any update is received.
  Stream<Update> get onUpdate => _updateStreamController.stream;

  /// Use this method to emit an update to the streams.
  void emitUpdate(Update update, Televerse televerse) {
    _televerse ??= televerse;
    _updateStreamController.add(update);
    if (update.type == UpdateType.message) {
      _messageController.add(MessageContext(
        televerse.api,
        update.message!,
        update: update,
      ));
    } else if (update.type == UpdateType.editedMessage) {
      _editedMessageController.add(MessageContext(
        televerse.api,
        update.editedMessage!,
        update: update,
      ));
    } else if (update.type == UpdateType.channelPost) {
      _channelPostController.add(MessageContext(
        televerse.api,
        update.channelPost!,
        update: update,
      ));
    } else if (update.type == UpdateType.editedChannelPost) {
      _editedChannelPostController.add(MessageContext(
        televerse.api,
        update.editedChannelPost!,
        update: update,
      ));
    } else if (update.type == UpdateType.inlineQuery) {
      _inlineQueryController.add(InlineQueryContext(
        televerse.api,
        update.inlineQuery!,
        update: update,
      ));
    } else if (update.type == UpdateType.chosenInlineResult) {
      _chosenInlineResultController.add(update.chosenInlineResult!);
    } else if (update.type == UpdateType.callbackQuery) {
      _callbackQueryController.add(CallbackQueryContext(
        televerse.api,
        update.callbackQuery!,
        update: update,
      ));
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
