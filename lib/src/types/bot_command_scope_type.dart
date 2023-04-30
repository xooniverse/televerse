part of types;

/// This object represents the scope to which bot commands are applied. Currently, the following 7 scopes are supported:
/// - [BotCommandScopeType.defaultScope] : The default scope. Default commands are used if no commands with a narrower scope are specified for the user.
/// - [BotCommandScopeType.allPrivateChats] : All private chats.
/// - [BotCommandScopeType.allGroupChats] : All group and supergroup chats.
/// - [BotCommandScopeType.allChatAdministrators] : All group and supergroup chat administrators.
/// - [BotCommandScopeType.chat] : A specific chat.
/// - [BotCommandScopeType.chatAdministrators] : All administrators of a specific group or supergroup chat.
/// - [BotCommandScopeType.chatMember] : A specific member of a group or supergroup chat.
enum BotCommandScopeType {
  /// The default scope. Default commands are used if no commands with a narrower scope are specified for the user.
  defaultScope("default"),

  /// All private chats.
  allPrivateChats("all_private_chats"),

  /// All group and supergroup chats.
  allGroupChats("all_group_chats"),

  /// All group and supergroup chat administrators.
  allChatAdministrators("all_chat_administrators"),

  /// A specific chat.
  chat("chat"),

  /// All administrators of a specific group or supergroup chat.
  chatAdministrators("chat_administrators"),

  /// A specific member of a group or supergroup chat.
  chatMember("chat_member");

  /// The value of this enum.
  final String type;

  /// Constructs a new [BotCommandScopeType].
  const BotCommandScopeType(this.type);

  /// Constructs a new [BotCommandScopeType] from a [String].
  factory BotCommandScopeType.fromJson(String type) {
    return BotCommandScopeType.values.firstWhere((e) => e.type == type);
  }

  /// Converts this [BotCommandScopeType] to a [String].
  String toJson() => type;
}
