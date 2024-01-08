part of 'models.dart';

/// Represents the scope of bot commands, covering a specific chat.
class BotCommandScopeChat implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.chat]
  @override
  BotCommandScopeType get type => BotCommandScopeType.chat;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  final ID chatId;

  /// Creates a new [BotCommandScopeChat] object.
  const BotCommandScopeChat({
    required this.chatId,
  });

  /// Creates a new [BotCommandScopeChat] object from json.
  factory BotCommandScopeChat.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeChat(
      chatId: ID.create(json['chat_id']),
    );
  }

  /// Converts a [BotCommandScopeChat] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId.toJson(),
    }..removeWhere((key, value) => value == null);
  }
}
