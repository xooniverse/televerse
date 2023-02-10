part of models;

/// This object describes the bot's menu button in a private chat. It should be one of [MenuButtonCommands] or [MenuButtonWebApp] or [MenuButtonDefault].
///
// If a menu button other than MenuButtonDefault is set for a private chat, then it is applied in the chat. Otherwise the default menu button is applied. By default, the menu button opens the list of bot commands.
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
