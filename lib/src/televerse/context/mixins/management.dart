part of televerse;

mixin ManagementMixin on Context {
  /// **Ban the user**
  ///
  /// This method will ban the user who sent the message in the current context.
  Future<bool> banAuthor({
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    return await api.banChatMember(
      id,
      update.message!.from!.id,
      untilDate: untilDate,
      revokeMessages: revokeMessages,
    );
  }

  /// Ban Sender Chat
  ///
  /// This method will ban the chat that sent the message in the current context.
  Future<bool> banSenderChat({
    DateTime? untilDate,
    bool? revokeMessages,
  }) async {
    return await api.banChatSenderChat(
      id,
      update.message!.senderChat!.id,
    );
  }

  /// Delete Chat Photo
  ///
  /// This method will delete the chat photo in the current context.
  Future<bool> deleteChatPhoto() async {
    return await api.deleteChatPhoto(id);
  }

  /// Promote Chat Member
  ///
  /// This method will promote the chat member in the current context.
  Future<bool> promoteAuthor({
    bool? isAnonymous,
    bool? canManageChat,
    bool? canPostMessages,
    bool? canEditMessages,
    bool? canDeleteMessages,
    bool? canManageVideoChats,
    bool? canRestrictMembers,
    bool? canPromoteMembers,
    bool? canChangeInfo,
    bool? canInviteUsers,
    bool? canPinMessages,
    bool? canManageTopics,
  }) async {
    return await api.promoteChatMember(
      id,
      update.message!.from!.id,
      isAnonymous: isAnonymous,
      canManageChat: canManageChat,
      canPostMessages: canPostMessages,
      canEditMessages: canEditMessages,
      canDeleteMessages: canDeleteMessages,
      canManageVideoChats: canManageVideoChats,
      canRestrictMembers: canRestrictMembers,
      canPromoteMembers: canPromoteMembers,
      canChangeInfo: canChangeInfo,
      canInviteUsers: canInviteUsers,
      canPinMessages: canPinMessages,
      canManageTopics: canManageTopics,
    );
  }

  /// Restrict Chat Member
  ///
  /// This method will restrict the chat member in the current context.
  Future<bool> restrictAuthor(
    ChatPermissions permissions, {
    DateTime? untilDate,
  }) async {
    return await api.restrictChatMember(
      id,
      update.message!.from!.id,
      permissions,
      untilDate: untilDate,
    );
  }

  /// Export Chat Invite Link
  ///
  /// This method will export the chat invite link in the current context.
  Future<String> exportChatInviteLink() async {
    return await api.exportChatInviteLink(id);
  }

  /// Revoke Chat Invite Link
  ///
  /// This method will revoke the chat invite link in the current context.
  Future<ChatInviteLink> revokeChatInviteLink(String link) async {
    return await api.revokeChatInviteLink(id, link);
  }

  /// Pin Chat Message
  ///
  /// This method will pin the chat message in the current context.
  Future<bool> pinChatMessage({
    bool? disableNotification,
  }) async {
    return await api.pinChatMessage(
      id,
      update.message!.messageId,
      disableNotification: disableNotification,
    );
  }

  /// Unpin Chat Message
  ///
  /// This method will unpin the chat message in the current context.
  Future<bool> unpinChatMessage(int messageId) async {
    return await api.unpinChatMessage(
      id,
      messageId,
    );
  }

  /// Get Chat
  ///
  /// This method will get the chat in the current context.
  Future<Chat> getChat() async {
    return await api.getChat(id);
  }

  /// Get Chat Administrators
  ///
  /// This method will get the chat administrators in the current context.
  Future<List<ChatMember>> getChatAdministrators() async {
    return await api.getChatAdministrators(id);
  }

  /// Get Chat Member
  ///
  /// This method will get the chat member in the current context.
  Future<ChatMember> getChatMember(int userId) async {
    return await api.getChatMember(id, userId);
  }

  /// Leave Chat
  ///
  /// This method will leave the chat in the current context.
  Future<bool> leaveChat() async {
    return await api.leaveChat(id);
  }
}
