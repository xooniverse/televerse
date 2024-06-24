part of '../../../televerse.dart';

/// This class is used to represent the context of an update. It contains the update and the [RawAPI] instance.
///
/// Whenever an update is received, a context is created and passed to the handler.
/// Currently Televerse support the following types of contexts:
class Context {
  /// The RawAPI getter.
  RawAPI get api => _bot.api.._addContext(this);

  /// The bot that received the update's informations.
  User get me => _bot.me;

  /// The RawAPI instance.
  final Bot _bot;

  /// The [Update] instance.
  ///
  /// This represents the update for which the context is created.
  final Update update;

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
  Context(
    this._bot, {
    required this.update,
  });

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

  /// The thread id
  int? _threadId([int? id]) {
    bool isInTopic = msg?.isTopicMessage ?? false;
    return id ?? (isInTopic ? msg?.messageThreadId : null);
  }

  /// A shorthand getter for the [Chat] instance from the update.
  ///
  /// This can be any of `msg.chat` or `myChatMember.chat` or `chatMember.chat` or `chatJoinRequest.chat` or `messageReaction.chat` or `messageReactionCount.chat` or `chatBoost.chat` or `removedChatBoost.chat`.
  Chat? get chat => update.chat;

  /// A shorthand getter for the [User] instance from the update.
  User? get from => update.from;

  /// Internal getter for the file id
  String? get _fileId {
    return msg?.photo?.last.fileId ??
        msg?.animation?.fileId ??
        msg?.audio?.fileId ??
        msg?.document?.fileId ??
        msg?.video?.fileId ??
        msg?.videoNote?.fileId ??
        msg?.voice?.fileId ??
        msg?.sticker?.fileId;
  }

  /// The Chat ID for internal use
  int? get _chatId {
    return chat?.id;
  }

  /// The message id for internal use
  int? get _msgId {
    return msg?.messageId ??
        messageReaction?.messageId ??
        messageReactionCount?.messageId ??
        callbackQuery?.message?.messageId;
  }

  /// Internal getter for inline message id
  String? get _inlineMsgId {
    return callbackQuery?.inlineMessageId ??
        chosenInlineResult?.inlineMessageId;
  }

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
}

/// Base handler
typedef Handler = FutureOr<void> Function(
  Context ctx,
);
