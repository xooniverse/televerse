import 'package:televerse/src/types/bot_command_scope_type.dart';

import 'abstracts/bot_command_scope.dart';

/// Represents the scope of bot commands, covering all group and supergroup chat administrators.
class BotCommandScopeAllChatAdministrators implements BotCommandScope {
  @override
  BotCommandScopeType get type => BotCommandScopeType.allChatAdministrators;

  BotCommandScopeAllChatAdministrators();

  factory BotCommandScopeAllChatAdministrators.fromJson(
      Map<String, dynamic> json) {
    return BotCommandScopeAllChatAdministrators();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
