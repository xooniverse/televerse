part of models;

/// Represents the scope of bot commands, covering all private chats.
class BotCommandScopeDefault implements BotCommandScope {
  @override
  BotCommandScopeType get type => BotCommandScopeType.defaultScope;

  BotCommandScopeDefault();

  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeDefault();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
