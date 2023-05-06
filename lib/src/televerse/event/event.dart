/// Televerse Event
///
/// This library contains the event handling system of Televerse. It contains the [Event] class which is used to handle events.
/// The [Event] class is extended to [Televerse] class and is used to handle events. The [Event] class contains all the event streams and methods to handle events.
library televerse.event;

import 'dart:async';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

part 'on.dart';

/// This class is used to handle events. The [Event] class is extended to [Televerse] class and is used to handle events. The [Event] class contains all the event streams and methods to handle events.
///
/// You probably won't need to use this class directly, but you can use it to handle events.
class Event {
  /// The [RawAPI] instance.
  late final RawAPI _api;

  /// Set the [RawAPI] instance.
  set api(RawAPI api) => _api = api;

  /// If [sync] is true, events may be fired directly by the stream's subscriptions during an [StreamController.add], [StreamController.addError] or [StreamController.close] call. The returned stream controller is a [SynchronousStreamController], and must be used with the care and attention necessary to not break the [Stream] contract. See [Completer.sync] for some explanations on when a synchronous dispatching can be used. If in doubt, keep the controller non-sync.
  ///
  /// If [sync] is false, the event will always be fired at a later time, after the code adding the event has completed. In that case, no guarantees are given with regard to when multiple listeners get the events, except that each listener will get all events in the correct order. Each subscription handles the events individually. If two events are sent on an async controller with two listeners, one of the listeners may get both events before the other listener gets any. A listener must be subscribed both when the event is initiated (that is, when `add` is called) and when the event is later delivered, in order to receive the event.
  final bool sync;

  /// Create a new Event instance.
  ///
  /// You can pass a [sync] parameter to the constructor. If [sync] is true, the event streams will be synchronous. If [sync] is false, the event streams will be asynchronous.
  ///
  /// If [sync] is true, events may be fired directly by the stream's subscriptions during an [StreamController.add], [StreamController.addError] or [StreamController.close] call. The returned stream controller is a [SynchronousStreamController], and must be used with the care and attention necessary to not break the [Stream] contract. See [Completer.sync] for some explanations on when a synchronous dispatching can be used. If in doubt, keep the controller non-sync.
  ///
  /// If [sync] is false, the event will always be fired at a later time, after the code adding the event has completed. In that case, no guarantees are given with regard to when multiple listeners get the events, except that each listener will get all events in the correct order. Each subscription handles the events individually. If two events are sent on an async controller with two listeners, one of the listeners may get both events before the other listener gets any. A listener must be subscribed both when the event is initiated (that is, when `add` is called) and when the event is later delivered, in order to receive the event.
  Event({this.sync = false})
      : _updateStreamController = StreamController<Update>.broadcast(
          sync: sync,
        );

  /// Stream Controller to handle updates.
  final StreamController<Update> _updateStreamController;

  /// **onMessage** is a stream of [MessageContext] which is emitted when a message of any type is is received.
  Stream<MessageContext> get onMessage =>
      onUpdate(UpdateType.message).map(_mapper<MessageContext>);

  /// **onEditedMessage** is a stream of [MessageContext] which is emitted when a message is edited.
  Stream<MessageContext> get onEditedMessage =>
      onUpdate(UpdateType.editedMessage).map(_mapper<MessageContext>);

  /// **onChannelPost** is a stream of [MessageContext] which is emitted when a message is sent to a channel.
  Stream<MessageContext> get onChannelPost =>
      onUpdate(UpdateType.channelPost).map(_mapper<MessageContext>);

  /// **onEditedChannelPost** is a stream of [MessageContext] which is emitted when a message is edited in a channel.
  Stream<MessageContext> get onEditedChannelPost =>
      onUpdate(UpdateType.editedChannelPost).map(_mapper<MessageContext>);

  /// **onInlineQuery** is a stream of [InlineQueryContext] which is emitted when an inline query is received.
  Stream<InlineQueryContext> get onInlineQuery =>
      onUpdate(UpdateType.inlineQuery).map(_mapper<InlineQueryContext>);

  /// **onChosenInlineResult** is a stream of [ChosenInlineResult] which is emitted when a user chooses an inline result.
  Stream<ChosenInlineResultContext> get onChosenInlineResult => onUpdate(
        UpdateType.chosenInlineResult,
      ).map(_mapper<ChosenInlineResultContext>);

  /// **onCallbackQuery** is a stream of [CallbackQueryContext] which is emitted when a callback query is received.
  Stream<CallbackQueryContext> get onCallbackQuery => onUpdate(
        UpdateType.callbackQuery,
      ).map(_mapper<CallbackQueryContext>);

  /// **onShippingQuery** is a stream of [ShippingQuery] which is emitted when a shipping query is received.
  Stream<ShippingQueryContext> get onShippingQuery => onUpdate(
        UpdateType.shippingQuery,
      ).map(_mapper<ShippingQueryContext>);

  /// **onPreCheckoutQuery** is a stream of [PreCheckoutQuery] which is emitted when a pre-checkout query is received.
  Stream<PreCheckoutQueryContext> get onPreCheckoutQuery =>
      onUpdate(UpdateType.preCheckoutQuery)
          .map(_mapper<PreCheckoutQueryContext>);

  /// **onPoll** is a stream of [Poll] which is emitted when a poll is received.
  Stream<PollContext> get onPoll =>
      onUpdate(UpdateType.poll).map(_mapper<PollContext>);

  /// **onPollAnswer** is a stream of [PollAnswer] which is emitted when a poll answer is received.
  Stream<PollAnswerContext> get onPollAnswer => onUpdate(
        UpdateType.pollAnswer,
      ).map(_mapper<PollAnswerContext>);

  /// **onMyChatMember** is a stream of [ChatMemberUpdated] which is emitted when the bot's chat member status is updated.
  Stream<ChatMemberUpdatedContext> get onMyChatMember =>
      onUpdate(UpdateType.myChatMember).map(_mapper<ChatMemberUpdatedContext>);

  /// **onChatMember** is a stream of [ChatMemberUpdated] which is emitted when a chat member's status is updated.
  Stream<ChatMemberUpdatedContext> get onChatMember => onUpdate(
        UpdateType.chatMember,
      ).map(_mapper<ChatMemberUpdatedContext>);

  /// **onChatJoinRequest** is a stream of [ChatJoinRequest] which is emitted when a user requests to join a chat.
  Stream<ChatJoinRequestContext> get onChatJoinRequest =>
      onUpdate(UpdateType.chatJoinRequest).map(_mapper<ChatJoinRequestContext>);

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

  /// Maps the update to the corresponding context.
  T _mapper<T>(Update update) {
    if (T == MessageContext && update.type == UpdateType.message) {
      return MessageContext(
        _api,
        update.message!,
        update: update,
      ) as T;
    }

    if (T == MessageContext && update.type == UpdateType.editedMessage) {
      return MessageContext(
        _api,
        update.editedMessage!,
        update: update,
      ) as T;
    }

    if (T == MessageContext && update.type == UpdateType.channelPost) {
      return MessageContext(
        _api,
        update.channelPost!,
        update: update,
      ) as T;
    }

    if (T == MessageContext && update.type == UpdateType.editedChannelPost) {
      return MessageContext(
        _api,
        update.editedChannelPost!,
        update: update,
      ) as T;
    }

    if (T == InlineQueryContext) {
      return InlineQueryContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == CallbackQueryContext) {
      return CallbackQueryContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == ChosenInlineResultContext) {
      return ChosenInlineResultContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == ShippingQuery) {
      return update.shippingQuery! as T;
    }

    if (T == PreCheckoutQuery) {
      return update.preCheckoutQuery! as T;
    }

    if (T == PollContext) {
      return PollContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == PollAnswerContext) {
      return PollAnswerContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == ChatMemberUpdatedContext &&
        update.type == UpdateType.myChatMember) {
      return ChatMemberUpdatedContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == ChatMemberUpdatedContext && update.type == UpdateType.chatMember) {
      return ChatMemberUpdatedContext(
        _api,
        update: update,
      ) as T;
    }

    if (T == ChatJoinRequestContext) {
      return ChatJoinRequestContext(
        _api,
        update: update,
      ) as T;
    }

    return update as T;
  }

  /// Use this method to emit an update to the streams.
  void emitUpdate(Update update, Televerse televerse) {
    _updateStreamController.add(update);
  }
}
