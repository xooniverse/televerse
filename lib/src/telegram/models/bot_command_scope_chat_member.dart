part of 'models.dart';

/// Represents the scope of bot commands, covering a specific member of a group or supergroup chat.
class BotCommandScopeChatMember implements BotCommandScope {
  /// Scope type, always be [BotCommandScopeType.chatMember]
  @override
  BotCommandScopeType get type => BotCommandScopeType.chatMember;

  /// Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
  ID chatId;

  /// Unique identifier of the target user
  int userId;

  /// Creates a new [BotCommandScopeChatMember] object.
  BotCommandScopeChatMember({
    required this.chatId,
    required this.userId,
  });

  /// Creates a new [BotCommandScopeChatMember] object from json.
  factory BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) {
    return BotCommandScopeChatMember(
      chatId: ID.create(json['chat_id']),
      userId: json['user_id'] as int,
    );
  }

  /// Converts a [BotCommandScopeChatMember] to a [Map] for JSON encoding.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'chat_id': chatId.toJson(),
      'user_id': userId,
    }..removeWhere((key, value) => value == null);
  }
}
