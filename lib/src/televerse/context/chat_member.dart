part of 'context.dart';

/// This context is created when a chat member is updated. This can be used to handle chat member updates.
///
/// This is used to handle the `chatMemberUpdated` and `myChatMemberUpdated` updates.
class ChatMemberUpdatedContext extends Context with MessageMixin {
  /// Creates a new [ChatMemberUpdatedContext] instance.
  ChatMemberUpdatedContext(
    super._bot, {
    required super.update,
  });

  /// The [ChatMemberUpdated] instance.
  ///
  /// This can either be `chatMemberUpdated` or `myChatMemberUpdated`.
  ChatMemberUpdated get chatMemberUpdated =>
      (update.chatMember ?? update.myChatMember)!;

  /// The old chat member.
  ChatMember get oldChatMember => chatMemberUpdated.oldChatMember;

  /// The new chat member.
  ChatMember get newChatMember => chatMemberUpdated.newChatMember;

  /// The [User] instance of the updated chat member.
  User get user => newChatMember.user;

  /// The ID of the updated chat member.
  ID get userID => ChatID(user.id);

  /// Flag that indicates whether the chat member is the bot.
  bool get isBot => user.isBot;

  /// Current status of the chat member.
  ChatMemberStatus get status => newChatMember.status;

  /// Old status of the chat member.
  ChatMemberStatus get oldStatus => oldChatMember.status;

  /// A flag that indicates whether the chat member is a creator.
  bool get isCreator => status == ChatMemberStatus.creator;

  /// A flag that indicates whether the chat member is an administrator.
  bool get isAdministrator => status == ChatMemberStatus.administrator;

  /// A flag that indicates whether the chat member is a member.
  bool get isMember => status == ChatMemberStatus.member;

  /// A flag that indicates whether the chat member is restricted.
  bool get isRestricted => status == ChatMemberStatus.restricted;

  /// A flag that indicates whether the chat member is left.
  bool get isLeft => status == ChatMemberStatus.left;

  /// A flag that indicates whether the chat member is kicked.
  bool get isKicked => status == ChatMemberStatus.kicked;

  /// Send a message to the updated chat member.
  ///
  /// This will only work if the user has started a chat with the bot.
  /// If the user has not started a chat with the bot, this will throw a [TeleverseException].
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
    return await api.sendMessage(
      userID,
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
