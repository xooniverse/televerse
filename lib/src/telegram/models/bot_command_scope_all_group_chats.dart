part of 'models.dart';

/// Represents the scope of bot commands, covering all group and supergroup chats.
class BotCommandScopeAllGroupChats extends BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.allGroupChats]
  @override
  BotCommandScopeType get type => BotCommandScopeType.allGroupChats;

  /// Creates a new [BotCommandScopeAllGroupChats] object.
  const BotCommandScopeAllGroupChats();

  /// Creates a new [BotCommandScopeAllGroupChats] object from json.
  factory BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeAllGroupChats();
  }

  /// Converts a [BotCommandScopeAllGroupChats] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    }..removeWhere(_nullFilter);
  }
}
