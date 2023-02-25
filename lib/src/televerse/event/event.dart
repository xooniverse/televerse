library televerse.event;

import 'dart:async';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

part 'on.dart';

/// This class is used to handle events. The [Event] class is extended to [Televerse] class and is used to handle events. The [Event] class contains all the event streams and methods to handle events.
///
/// You probably won't need to use this class directly, but you can use it to handle events.
class Event {
  /// If [sync] is true, events may be fired directly by the stream's subscriptions during an [StreamController.add], [StreamController.addError] or [StreamController.close] call. The returned stream controller is a [SynchronousStreamController], and must be used with the care and attention necessary to not break the [Stream] contract. See [Completer.sync] for some explanations on when a synchronous dispatching can be used. If in doubt, keep the controller non-sync.
  ///
  /// If [sync] is false, the event will always be fired at a later time, after the code adding the event has completed. In that case, no guarantees are given with regard to when multiple listeners get the events, except that each listener will get all events in the correct order. Each subscription handles the events individually. If two events are sent on an async controller with two listeners, one of the listeners may get both events before the other listener gets any. A listener must be subscribed both when the event is initiated (that is, when [add] is called) and when the event is later delivered, in order to receive the event.
  final bool sync;

  /// Create a new Event instance.
  ///
  /// You can pass a [sync] parameter to the constructor. If [sync] is true, the event streams will be synchronous. If [sync] is false, the event streams will be asynchronous.
  ///
  /// If [sync] is true, events may be fired directly by the stream's subscriptions during an [StreamController.add], [StreamController.addError] or [StreamController.close] call. The returned stream controller is a [SynchronousStreamController], and must be used with the care and attention necessary to not break the [Stream] contract. See [Completer.sync] for some explanations on when a synchronous dispatching can be used. If in doubt, keep the controller non-sync.
  ///
  /// If [sync] is false, the event will always be fired at a later time, after the code adding the event has completed. In that case, no guarantees are given with regard to when multiple listeners get the events, except that each listener will get all events in the correct order. Each subscription handles the events individually. If two events are sent on an async controller with two listeners, one of the listeners may get both events before the other listener gets any. A listener must be subscribed both when the event is initiated (that is, when [add] is called) and when the event is later delivered, in order to receive the event.
  Event({this.sync = false})
      : _updateStreamController = StreamController<Update>.broadcast(
          sync: sync,
        );

  /// Stream Controller to handle updates.
  final StreamController<Update> _updateStreamController;

  /// **onMessage** is a stream of [MessageContext] which is emitted when a message of any type is is received.
  Stream<MessageContext> get onMessage =>
      onUpdate(UpdateType.message).map(mapper<MessageContext>);

  /// **onEditedMessage** is a stream of [MessageContext] which is emitted when a message is edited.
  Stream<MessageContext> get onEditedMessage =>
      onUpdate(UpdateType.editedMessage).map(mapper<MessageContext>);

  /// **onChannelPost** is a stream of [MessageContext] which is emitted when a message is sent to a channel.
  Stream<MessageContext> get onChannelPost =>
      onUpdate(UpdateType.channelPost).map(mapper<MessageContext>);

  /// **onEditedChannelPost** is a stream of [MessageContext] which is emitted when a message is edited in a channel.
  Stream<MessageContext> get onEditedChannelPost =>
      onUpdate(UpdateType.editedChannelPost).map(mapper<MessageContext>);

  /// **onInlineQuery** is a stream of [InlineQueryContext] which is emitted when an inline query is received.
  Stream<InlineQueryContext> get onInlineQuery =>
      onUpdate(UpdateType.inlineQuery).map(mapper<InlineQueryContext>);

  /// **onChosenInlineResult** is a stream of [ChosenInlineResult] which is emitted when a user chooses an inline result.
  Stream<ChosenInlineResult> get onChosenInlineResult => onUpdate(
        UpdateType.chosenInlineResult,
      ).map(mapper<ChosenInlineResult>);

  /// **onCallbackQuery** is a stream of [CallbackQueryContext] which is emitted when a callback query is received.
  Stream<CallbackQueryContext> get onCallbackQuery => onUpdate(
        UpdateType.callbackQuery,
      ).map(mapper<CallbackQueryContext>);

  /// **onShippingQuery** is a stream of [ShippingQuery] which is emitted when a shipping query is received.
  Stream<ShippingQuery> get onShippingQuery => onUpdate(
        UpdateType.shippingQuery,
      ).map(mapper<ShippingQuery>);

  /// **onPreCheckoutQuery** is a stream of [PreCheckoutQuery] which is emitted when a pre-checkout query is received.
  Stream<PreCheckoutQuery> get onPreCheckoutQuery =>
      onUpdate(UpdateType.preCheckoutQuery).map(mapper<PreCheckoutQuery>);

  /// **onPoll** is a stream of [Poll] which is emitted when a poll is received.
  Stream<Poll> get onPoll => onUpdate(UpdateType.poll).map(mapper<Poll>);

  /// **onPollAnswer** is a stream of [PollAnswer] which is emitted when a poll answer is received.
  Stream<PollAnswer> get onPollAnswer => onUpdate(
        UpdateType.pollAnswer,
      ).map(mapper<PollAnswer>);

  /// **onMyChatMember** is a stream of [ChatMemberUpdated] which is emitted when the bot's chat member status is updated.
  Stream<ChatMemberUpdated> get onMyChatMember =>
      onUpdate(UpdateType.myChatMember).map(mapper<ChatMemberUpdated>);

  /// **onChatMember** is a stream of [ChatMemberUpdated] which is emitted when a chat member's status is updated.
  Stream<ChatMemberUpdated> get onChatMember => onUpdate(
        UpdateType.chatMember,
      ).map(mapper<ChatMemberUpdated>);

  /// **onChatJoinRequest** is a stream of [ChatJoinRequest] which is emitted when a user requests to join a chat.
  Stream<ChatJoinRequest> get onChatJoinRequest =>
      onUpdate(UpdateType.chatJoinRequest)
          .map<ChatJoinRequest>(mapper<ChatJoinRequest>);

  /// **onUpdate** is a stream of [Update] which is emitted when any update is received.
  Stream<Update> onUpdate([UpdateType? type]) {
    if (type == null) {
      return _updateStreamController.stream;
    } else {
      return _updateStreamController.stream.where(
        (update) => update.type == type,
      );
    }
  }

  T mapper<T>(Update update) {
    if (T == MessageContext && update.type == UpdateType.message) {
      return MessageContext(
        Televerse.instance.api,
        update.message!,
        update: update,
      ) as T;
    }

    if (T == MessageContext && update.type == UpdateType.editedMessage) {
      return MessageContext(
        Televerse.instance.api,
        update.editedMessage!,
        update: update,
      ) as T;
    }

    if (T == MessageContext && update.type == UpdateType.channelPost) {
      return MessageContext(
        Televerse.instance.api,
        update.channelPost!,
        update: update,
      ) as T;
    }

    if (T == MessageContext && update.type == UpdateType.editedChannelPost) {
      return MessageContext(
        Televerse.instance.api,
        update.editedChannelPost!,
        update: update,
      ) as T;
    }

    if (T == InlineQueryContext) {
      return InlineQueryContext(
        Televerse.instance.api,
        update.inlineQuery!,
        update: update,
      ) as T;
    }

    if (T == CallbackQueryContext) {
      return CallbackQueryContext(
        Televerse.instance.api,
        update.callbackQuery!,
        update: update,
      ) as T;
    }

    if (T == ChosenInlineResult) {
      return update.chosenInlineResult! as T;
    }

    if (T == ShippingQuery) {
      return update.shippingQuery! as T;
    }

    if (T == PreCheckoutQuery) {
      return update.preCheckoutQuery! as T;
    }

    if (T == Poll) {
      return update.poll! as T;
    }

    if (T == PollAnswer) {
      return update.pollAnswer! as T;
    }

    if (T == ChatMemberUpdated && update.type == UpdateType.myChatMember) {
      return update.myChatMember! as T;
    }

    if (T == ChatMemberUpdated && update.type == UpdateType.chatMember) {
      return update.chatMember! as T;
    }

    if (T == ChatJoinRequest) {
      return update.chatJoinRequest! as T;
    }

    return update as T;
  }

  /// Use this method to emit an update to the streams.
  void emitUpdate(Update update, Televerse televerse) {
    _updateStreamController.add(update);
  }
}
