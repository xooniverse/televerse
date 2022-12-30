import 'package:televerse/src/telegram/models/menu_button_commands.dart';
import 'package:televerse/src/telegram/models/menu_button_default.dart';
import 'package:televerse/src/telegram/models/menu_button_web_app.dart';
import 'package:televerse/src/types/menu_button_type.dart';

abstract class MenuButton {
  MenuButtonType get type;

  static MenuButton create(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'commands':
        return MenuButtonCommands.fromJson(json);
      case 'web_app':
        return MenuButtonWebApp.fromJson(json);
      default:
        return MenuButtonDefault.fromJson(json);
    }
  }

  const MenuButton();

  Map<String, dynamic> toJson();
}
