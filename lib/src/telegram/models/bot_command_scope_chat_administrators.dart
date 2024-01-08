part of 'models.dart';

/// Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.
class BotCommandScopeChatAdministrators implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.chatAdministrators]
  @override
  BotCommandScopeType get type => BotCommandScopeType.chatAdministrators;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  final ID chatId;

  /// Creates a new [BotCommandScopeChatAdministrators] object.
  const BotCommandScopeChatAdministrators({
    required this.chatId,
  });

  /// Creates a new [BotCommandScopeChatAdministrators] object from json.
  factory BotCommandScopeChatAdministrators.fromJson(
    Map<String, dynamic> json,
  ) {
    return BotCommandScopeChatAdministrators(
      chatId: ID.create(json['chat_id']),
    );
  }

  /// Converts a [BotCommandScopeChatAdministrators] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId,
    }..removeWhere((key, value) => value == null);
  }
}
