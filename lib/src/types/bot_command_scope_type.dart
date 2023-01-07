part of types;

/// This object represents the scope to which bot commands are applied. Currently, the following 7 scopes are supported:
/// - [BotCommandScopeType.defaultScope]: The default scope. Default commands are used if no commands with a narrower scope are specified for the user.
/// - [BotCommandScopeType.allPrivateChats]: All private chats.
/// - [BotCommandScopeType.allGroupChats]: All group and supergroup chats.
/// - [BotCommandScopeType.allChatAdministrators]: All group and supergroup chat administrators.
/// - [BotCommandScopeType.chat]: A specific chat.
/// - [BotCommandScopeType.chatAdministrators]: All administrators of a specific group or supergroup chat.
/// - [BotCommandScopeType.chatMember]: A specific member of a group or supergroup chat.
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
