part of models;

/// Represents the scope of bot commands, covering all group and supergroup chat administrators.
class BotCommandScopeAllChatAdministrators implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.allChatAdministrators]
  @override
  BotCommandScopeType get type => BotCommandScopeType.allChatAdministrators;

  /// Creates a new [BotCommandScopeAllChatAdministrators] object.
  BotCommandScopeAllChatAdministrators();

  /// Creates a new [BotCommandScopeAllChatAdministrators] object from json.
  factory BotCommandScopeAllChatAdministrators.fromJson(
    Map<String, dynamic> json,
  ) {
    return BotCommandScopeAllChatAdministrators();
  }

  /// Converts a [BotCommandScopeAllChatAdministrators] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
