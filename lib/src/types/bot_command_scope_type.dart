enum BotCommandScopeType {
  defaultScope("default"),
  allPrivateChats("all_private_chats"),
  allGroupChats("all_group_chats"),
  allChatAdministrators("all_chat_administrators"),
  chat("chat"),
  chatAdministrators("chat_administrators"),
  chatMember("chat_member");

  final String type;
  const BotCommandScopeType(this.type);

  factory BotCommandScopeType.fromJson(String type) {
    return BotCommandScopeType.values.firstWhere((e) => e.type == type);
  }

  String toJson() => type;
}
