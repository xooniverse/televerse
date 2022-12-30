import 'package:televerse/src/types/bot_command_scope_type.dart';

abstract class BotCommandScope {
  BotCommandScopeType get type;

  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
    };
  }
}
