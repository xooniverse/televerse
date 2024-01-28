part of '../../../televerse.dart';

/// This class is used to represent the context of an update. It contains the update and the [RawAPI] instance.
///
/// Whenever an update is received, a context is created and passed to the handler.
/// Currently Televerse support the following types of contexts:
class Context<TeleverseSession extends Session> {
  /// The RawAPI getter.
  RawAPI get api => _bot.api;

  /// The bot that received the update's informations.
  User get me => _bot.me;

  /// The RawAPI instance.
  final Bot<TeleverseSession> _bot;

  /// The [Update] instance.
  ///
  /// This represents the update for which the context is created.
  final Update update;

  /// The Session
  late TeleverseSession _session;

  /// The Session getter.
  TeleverseSession get session {
    try {
      return _session;
    } catch (e) {
      throw TeleverseException.sessionsNotEnabled;
    }
  }

  /// The Session setter.
  set session(TeleverseSession session) {
    _bot.sessions.addSession(id.id, _session);
  }

  /// The [ChatID] instance.
  ///
  /// This represents the ID of the chat from which the update was sent.
  ///
  /// Note: On `poll`, and `unknown` updates, this will throw a [TeleverseException].
  /// This is because these updates do not have a chat.
  ID get id {
    switch (update.type) {
      case UpdateType.message:
        return ChatID(update.message!.chat.id);
      case UpdateType.editedMessage:
        return ChatID(update.editedMessage!.chat.id);
      case UpdateType.channelPost:
        return ChatID(update.channelPost!.chat.id);
      case UpdateType.editedChannelPost:
        return ChatID(update.editedChannelPost!.chat.id);
      case UpdateType.inlineQuery:
        return ChatID(update.inlineQuery!.from.id);
      case UpdateType.chosenInlineResult:
        return ChatID(update.chosenInlineResult!.from.id);
      case UpdateType.callbackQuery:
        return ChatID(update.callbackQuery!.message!.chat.id);
      case UpdateType.shippingQuery:
        return ChatID(update.shippingQuery!.from.id);
      case UpdateType.preCheckoutQuery:
        return ChatID(update.preCheckoutQuery!.from.id);
      case UpdateType.myChatMember:
        return ChatID(update.myChatMember!.chat.id);
      case UpdateType.chatMember:
        return ChatID(update.chatMember!.chat.id);
      case UpdateType.chatJoinRequest:
        return ChatID(update.chatJoinRequest!.chat.id);
      case UpdateType.messageReaction:
        return ChatID(update.messageReaction!.chat.id);
      case UpdateType.messageReactionCount:
        return ChatID(update.messageReactionCount!.chat.id);
      case UpdateType.chatBoost:
        return ChatID(update.chatBoost!.chat.id);
      case UpdateType.chatBoostRemoved:
        return ChatID(update.removedChatBoost!.chat.id);
      case UpdateType.poll:
      default:
        throw TeleverseException(
          "The update type is ${update.type}, which does not have a chat.",
        );
    }
  }

  /// Creates a new context.
  Context(
    this._bot, {
    required this.update,
  }) {
    if (_bot.sessionsEnabled) {
      _session = _bot.sessions.getSession(id.id);
    }
  }

  /// Creates a new Context object for the specified update.
  static Context create(Bot t, Update update) {
    return Context(t, update: update);
  }

  /// Contains the matches of the regular expression. (Internal)
  List<RegExpMatch>? _matches;

  /// **Regular expression matches**
  ///
  /// Contains the matches of the regular expression.
  ///
  /// This will be automatically set when you use the [Bot.hears] method.
  List<RegExpMatch>? get matches => _matches;

  /// If the message is a command, the list will be filled with the command arguments.
  /// e.g. /hello @mom @dad will have a ctx.args like this: ['@mom', '@dad'].
  /// This will be empty if the message is not a command or if the message doesn't contain text
  /// NOTE: This is obviously also used for the deeplink start parameters.
  List<String>? get args {
    if (!(msg?.text?.startsWith('/') ?? false)) return [];

    return msg?.text?.clean.split(' ').sublist(1);
  }

  /// This is a shorthand getter for the [Message] recieved in the current context
  ///
  /// This can either be `Message` or `Channel Post` or `Edited Message` or `Edited Channel Post`. (Internal)
  Message? get _msg {
    Message? m = update.message ??
        update.editedMessage ??
        update.channelPost ??
        update.editedChannelPost;
    return m;
  }

  /// This is a shorthand getter for the [Message] recieved in the current context
  ///
  /// This can either be `Message` or `Channel Post` or `Edited Message` or `Edited Channel Post`.
  Message? get msg => _msg;

  /// The incoming message.
  Message? get message => update.message;

  /// The callback query of the update.
  CallbackQuery? get callbackQuery => update.callbackQuery;

  /// The incoming inline query.
  InlineQuery? get inlineQuery => update.inlineQuery;

  /// The [ChosenInlineResult] instance.
  ChosenInlineResult? get chosenInlineResult => update.chosenInlineResult;

  /// The chat boost that was removed.
  ChatBoostRemoved? get chatBoostRemoved => update.removedChatBoost;

  /// The chat boost that was updated.
  ChatBoostUpdated? get chatBoost => update.chatBoost;

  /// The [ChatJoinRequest] instance.
  ChatJoinRequest get chatJoinRequest => update.chatJoinRequest!;

  /// Shorthand getter for the [ChatMemberUpdated] instance.
  ///
  /// This can either be `chatMemberUpdated` or `myChatMemberUpdated`.
  ChatMemberUpdated? get chatMemberUpdated =>
      update.chatMember ?? update.myChatMember;

  /// The Chat Member Updated instance of ChatMember
  ChatMemberUpdated? get chatMember => update.chatMember;

  /// The Chat Member Updated instance of MyChatMember
  ChatMemberUpdated? get myChatMember => update.myChatMember;

  /// The [MessageReactionCountUpdated] object.
  MessageReactionCountUpdated? get messageReactionCount =>
      update.messageReactionCount;

  /// The [MessageReactionUpdated] object.
  MessageReactionUpdated? get messageReaction => update.messageReaction;

  /// The [PollAnswer] instance.
  PollAnswer? get pollAnswer => update.pollAnswer;

  /// The [Poll] instance.
  Poll? get poll => update.poll;

  /// The [PreCheckoutQuery] instance.
  ///
  /// This represents the pre-checkout query for which the context is created.
  PreCheckoutQuery? get preCheckoutQuery => update.preCheckoutQuery;

  /// The thread id
  int? _threadId([int? id]) {
    bool isInTopic = _msg?.isTopicMessage ?? false;
    return id ?? (isInTopic ? _msg?.messageThreadId : null);
  }

  /// A shorthand getter for the [Chat] instance from the update.
  ///
  /// This can be any of `msg.chat` or `myChatMember.chat` or `chatMember.chat` or `chatJoinRequest.chat` or `messageReaction.chat` or `messageReactionCount.chat` or `chatBoost.chat` or `removedChatBoost.chat`.
  Chat? get chat {
    return (_msg ??
            update.myChatMember ??
            update.chatMember ??
            update.chatJoinRequest ??
            update.messageReaction ??
            update.messageReactionCount ??
            update.chatBoost ??
            update.removedChatBoost)
        ?.chat;
  }

  /// Reply a Text Message to the user.
  Future<Message> reply(
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    LinkPreviewOptions? linkPreviewOptions,
    bool? disableNotification,
    bool? protectContent,
    ReplyParameters? replyParameters,
    ReplyMarkup? replyMarkup,
  }) async {
    return await api.sendMessage(
      id,
      text,
      messageThreadId: _threadId(messageThreadId),
      parseMode: parseMode,
      entities: entities,
      linkPreviewOptions: linkPreviewOptions,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyParameters: replyParameters,
      replyMarkup: replyMarkup,
    );
  }
}

/// Base handler
typedef Handler<TeleverseSession extends Session> = FutureOr<void> Function(
  Context<TeleverseSession> ctx,
);
