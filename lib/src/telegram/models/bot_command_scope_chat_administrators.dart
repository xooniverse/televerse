part of models;

/// Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.
class BotCommandScopeChatAdministrators implements BotCommandScope {
  @override
  BotCommandScopeType get type => BotCommandScopeType.chatAdministrators;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  ID chatId;

  BotCommandScopeChatAdministrators({
    required this.chatId,
  });

  factory BotCommandScopeChatAdministrators.fromJson(
    Map<String, dynamic> json,
  ) {
    return BotCommandScopeChatAdministrators(
      chatId: ID.create(json['chat_id']),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId,
    };
  }
}
