part of models;

/// Represents the scope of bot commands, covering all group and supergroup chats.
class BotCommandScopeAllGroupChats extends BotCommandScope {
  @override
  BotCommandScopeType get type => BotCommandScopeType.allGroupChats;

  BotCommandScopeAllGroupChats();

  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeAllGroupChats();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
