part of models;

/// This object describes the bot's menu button in a private chat. It should be one of [MenuButtonCommands] or [MenuButtonWebApp] or [MenuButtonDefault].
///
// If a menu button other than MenuButtonDefault is set for a private chat, then it is applied in the chat. Otherwise the default menu button is applied. By default, the menu button opens the list of bot commands.
abstract class MenuButton {
  /// Type of the MenuButton.
  MenuButtonType get type;

  /// Creates a new [MenuButton] object.
  /// This method decides which [MenuButton] subclass to use based on the [type] field.
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

  /// Creates a new [MenuButton] object.
  const MenuButton();

  /// Converts a [MenuButton] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
