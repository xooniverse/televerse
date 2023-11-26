part of 'context.dart';

/// This class is used to represent the context of a chat join request update.
class ChatJoinRequestContext extends Context with MessageMixin {
  /// The [ChatJoinRequest] instance.
  ///
  /// This represents the chat join request for which the context is created.
  ChatJoinRequest get chatJoinRequest => update.chatJoinRequest!;

  /// Creates a new [ChatJoinRequestContext] instance.
  ChatJoinRequestContext(super._bot, {required super.update});

  /// The user who requested to join the chat
  User get user => chatJoinRequest.user;

  /// The User ID getter.
  ID get userId => ChatID(user.id);

  /// The invite link used by the user to join the chat
  ChatInviteLink? get inviteLink => chatJoinRequest.inviteLink;

  /// Accepts the chat join request.
  ///
  /// Returns `true` if the request was accepted successfully, `false` otherwise.
  Future<bool> approve() async {
    return api.approveChatJoinRequest(id, user.id);
  }

  /// Rejects the chat join request.
  ///
  /// Returns `true` if the request was rejected successfully, `false` otherwise.
  Future<bool> reject() async {
    return api.declineChatJoinRequest(id, user.id);
  }

  /// Reply to the user who requested to join the chat.
  ///
  /// Returns the [Message] sent.
  Future<Message> replyToUser(
    String text, {
    int? messageThreadId,
    ParseMode? parseMode,
    List<MessageEntity>? entities,
    bool? disableWebPagePreview,
    bool? disableNotification,
    bool? protectContent,
    int? replyToMessageId,
    bool? allowSendingWithoutReply,
    ReplyMarkup? replyMarkup,
  }) async {
    return api.sendMessage(
      userId,
      text,
      messageThreadId: messageThreadId,
      parseMode: parseMode,
      entities: entities,
      disableWebPagePreview: disableWebPagePreview,
      disableNotification: disableNotification,
      protectContent: protectContent,
      replyToMessageId: replyToMessageId,
      allowSendingWithoutReply: allowSendingWithoutReply,
      replyMarkup: replyMarkup,
    );
  }
}
