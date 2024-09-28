part of '../../../televerse.dart';

/// This class is used to represent the context of an update. It contains the update and the [RawAPI] instance.
///
/// Whenever an update is received, a context is created and passed to the handler.
/// Currently Televerse support the following types of contexts:
class Context {
  /// The RawAPI getter.
  final RawAPI api;

  /// The bot that received the update's informations.
  final User me;

  /// The [Update] instance.
  ///
  /// This represents the update for which the context is created.
  final Update update;

  /// Possibly the [ChatID] of the chat which the update belongs to.
  ///
  /// This is a lighter version of [id]. Instead of throwing an exception,
  /// this getter will return null if the udpate does not have a chat.
  ChatID? get maybeId {
    if (_chatId == null) return null;
    return ChatID(_chatId!);
  }

  /// The [ChatID] instance.
  ///
  /// This represents the ID of the chat from which the update was sent.
  ///
  /// Note: On `poll`, and `unknown` updates, this will throw a [TeleverseException].
  /// This is because these updates do not have a chat.
  ID get id {
    if (chat == null) {
      throw TeleverseException(
        "The update type is ${update.type}, which does not have a chat.",
        type: TeleverseExceptionType.updateTypeDoesNotHaveChat,
      );
    }
    return ChatID(chat!.id);
  }

  /// Creates a new context.
  Context({
    required this.api,
    required this.me,
    required this.update,
  }) {
    api._addContext(this);
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
  List<String> get args {
    if (!(msg?.text?.startsWith('/') ?? false)) return [];

    return msg?.text?.clean.split(' ').sublist(1) ?? [];
  }

  /// (Internal) Arbitary message getter
  ///
  /// Populated when `msg` is first accessed.
  Message? __msg;

  /// The thread id
  int? _threadId([int? id]) {
    bool isInTopic = msg?.isTopicMessage ?? false;
    return id ?? (isInTopic ? msg?.messageThreadId : null);
  }

  /// (Internal) Chat Instance.
  ///
  /// Will be populated when `ctx.chat` is first accessed.
  Chat? _chat;

  /// A shorthand getter for the [Chat] instance from the update.
  ///
  /// This can be any of `msg.chat` or `myChatMember.chat` or `chatMember.chat` or `chatJoinRequest.chat` or `messageReaction.chat` or `messageReactionCount.chat` or `chatBoost.chat` or `removedChatBoost.chat`.
  Chat? get chat {
    if (_chat != null) {
      return _chat!;
    }
    _chat = update.chat;
    return _chat;
  }

  /// (Internal) The user isntance from the udpate.
  ///
  /// Populated when `from` is first accessed.
  User? _from;

  /// A shorthand getter for the [User] instance from the update.
  User? get from {
    if (_from != null) return _from;
    _from = update.from;
    return _from;
  }

  /// (Internal) The File ID.
  ///
  /// Populated when the `fileId` is initially accessed.
  String? __fileId;

  /// Internal getter for the file id
  String? get _fileId {
    if (__fileId != null) {
      return __fileId;
    }
    __fileId = msg?.photo?.last.fileId ??
        msg?.animation?.fileId ??
        msg?.audio?.fileId ??
        msg?.document?.fileId ??
        msg?.video?.fileId ??
        msg?.videoNote?.fileId ??
        msg?.voice?.fileId ??
        msg?.sticker?.fileId;
    return __fileId;
  }

  /// The File ID if the incoming message contains a File of any kind.
  ///
  /// This includes Photo, Animation, Audio, Document, Video, Video Note, Voice, or Sticker
  String? get fileId => _fileId;

  /// The Chat ID for internal use
  int? get _chatId {
    return chat?.id;
  }

  /// (Internal) Message ID.
  ///
  /// Populated when the `messageId` is first accessed.
  int? __msgId;

  /// The message id for internal use
  int? get _msgId {
    if (__msgId != null) return __msgId;

    __msgId = msg?.messageId ??
        messageReaction?.messageId ??
        messageReactionCount?.messageId ??
        callbackQuery?.message?.messageId;
    return __msgId;
  }

  /// The Message ID of the incoming message.
  int? get messageId => _msgId;

  /// (Internal) Inline Message ID
  ///
  /// Populated when `inlineMessageId` is first accessed.
  String? __inlineMsgId;

  /// Internal getter for inline message id
  String? get _inlineMsgId {
    if (__inlineMsgId != null) return __inlineMsgId;

    __inlineMsgId =
        callbackQuery?.inlineMessageId ?? chosenInlineResult?.inlineMessageId;
    return __inlineMsgId;
  }

  /// Inline Message ID from the incoming update.
  ///
  /// This can be Inline Message ID from a Callback Query generated from an inline message or Chosen Inline Result.
  String? get inlineMessageId => _inlineMsgId;

  /// Executes the middleware on the current context
  Future<void> use(MiddlewareBase middleware) async {
    if (middleware is Middleware) {
      await middleware.handle(this, () async {});
    }

    if (middleware is Transformer) {
      _transformers.add(middleware);
    }
  }

  /// Transformers for this particular context
  final List<Transformer> _transformers = [];

  /// This Map can be used as a storage entity for middlewares.
  final Map<String, dynamic> middlewareStorage = {};

  /// Internal method to check if the context contains necessary information
  /// to call the context aware methods.
  void _verifyInfo(
    List<dynamic> info,
    APIMethod method, {
    String? description,
  }) {
    if (info.contains(null)) {
      throw TeleverseException(
        "The context does not contain necessary information to call the method `$method`.",
        description: description,
        type: TeleverseExceptionType.invalidParameter,
      );
    }
  }

  /// Determine whether the update is a text message
  bool hasText() => msg?.text != null;

  /// Determine whether the update contains a photo
  bool hasPhoto() => msg?.photo != null;

  /// Determine whether the update contains a video
  bool hasVideo() => msg?.video != null;

  /// Determine whether the update contains a document
  bool hasDocument() => msg?.document != null;

  /// Determine whether the update contains a location
  bool hasLocation() => msg?.location != null;

  /// Determine whether the update contains a live location
  bool hasLiveLocation() => msg?.location?.livePeriod != null;

  /// Determine whether the update contains a GIF/Animation
  bool hasAnimation() => msg?.animation != null;

  /// Determine whether the update is part of media group
  bool hasMediaGroup() => msg?.mediaGroupId != null;

  /// Determine whether the incoming message has a message effect added to it
  bool hasEffect() => msg?.hasEffect == true;

  /// Determine whether the update contains a paid media
  bool hasPaidMedia() => msg?.paidMedia != null;

  /// Determine whether the update contains a contact
  bool hasContact() => msg?.contact != null;

  /// Determine whether the update is a service message
  bool isServiceMessage() {
    return msg?.leftChatMember != null ||
        msg?.newChatTitle != null ||
        msg?.newChatPhoto != null ||
        msg?.deleteChatPhoto == true ||
        msg?.groupChatCreated == true ||
        msg?.supergroupChatCreated == true ||
        msg?.channelChatCreated == true ||
        msg?.messageAutoDeleteTimerChanged != null ||
        msg?.successfulPayment != null ||
        msg?.refundedPayment != null ||
        msg?.usersShared != null ||
        msg?.chatShared != null ||
        msg?.writeAccessAllowed != null ||
        msg?.proximityAlertTriggered != null ||
        msg?.boostAdded != null ||
        msg?.chatBackgroundSet != null ||
        msg?.forumTopicCreated != null ||
        msg?.forumTopicEdited != null ||
        msg?.forumTopicClosed != null ||
        msg?.forumTopicReopened != null ||
        msg?.generalForumTopicHidden != null ||
        msg?.generalForumTopicUnhidden != null ||
        msg?.giveawayCreated != null ||
        msg?.giveawayCompleted != null ||
        msg?.videoChatScheduled != null ||
        msg?.videoChatStarted != null ||
        msg?.videoChatEnded != null ||
        msg?.videoChatParticipantsInvited != null ||
        msg?.webAppData != null;
  }
}

/// Base handler
typedef Handler<CTX extends Context> = FutureOr<void> Function(
  CTX ctx,
);
