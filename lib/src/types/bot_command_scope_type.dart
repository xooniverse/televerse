import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents the scope to which bot commands are applied. Currently, the following 7 scopes are supported:
/// - [BotCommandScopeType.default_] : The default scope. Default commands are used if no commands with a narrower scope are specified for the user.
/// - [BotCommandScopeType.allPrivateChats] : All private chats.
/// - [BotCommandScopeType.allGroupChats] : All group and supergroup chats.
/// - [BotCommandScopeType.allChatAdministrators] : All group and supergroup chat administrators.
/// - [BotCommandScopeType.chat] : A specific chat.
/// - [BotCommandScopeType.chatAdministrators] : All administrators of a specific group or supergroup chat.
/// - [BotCommandScopeType.chatMember] : A specific member of a group or supergroup chat.
enum BotCommandScopeType {
  /// The default scope. Default commands are used if no commands with a narrower scope are specified for the user.
  @JsonValue("default")
  default_,

  /// All private chats.
  @JsonValue("all_private_chats")
  allPrivateChats,

  /// All group and supergroup chats.
  @JsonValue("all_group_chats")
  allGroupChats,

  /// All group and supergroup chat administrators.
  @JsonValue("all_chat_administrators")
  allChatAdministrators,

  /// A specific chat.
  @JsonValue("chat")
  chat,

  /// All administrators of a specific group or supergroup chat.
  @JsonValue("chat_administrators")
  chatAdministrators,

  /// A specific member of a group or supergroup chat.
  @JsonValue("chat_member")
  chatMember,
}
