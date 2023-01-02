part of models;

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
