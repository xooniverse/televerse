part of models;

/// Represents the scope of bot commands, covering all private chats.
class BotCommandScopeDefault implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.defaultScope]
  @override
  BotCommandScopeType get type => BotCommandScopeType.defaultScope;

  /// Creates a new [BotCommandScopeDefault] object.
  const BotCommandScopeDefault();

  /// Creates a new [BotCommandScopeDefault] object from json.
  factory BotCommandScopeDefault.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeDefault();
  }

  /// Converts a [BotCommandScopeDefault] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
