import 'package:televerse/src/types/menu_button_type.dart';

import 'abstracts/menu_button.dart';

/// Represents a menu button, which opens the bot's list of commands.
class MenuButtonCommands extends MenuButton {
  @override
  MenuButtonType get type => MenuButtonType.commands;

  MenuButtonCommands();

  MenuButtonCommands.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
    };
  }
}
