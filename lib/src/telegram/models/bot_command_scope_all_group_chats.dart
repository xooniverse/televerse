import 'package:televerse/src/telegram/models/abstracts/bot_command_scope.dart';
import 'package:televerse/src/types/bot_command_scope_type.dart';

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
