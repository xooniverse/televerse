part of 'types.dart';

/// This object represents the Menu Button Type. Read about the [Menu Button](https://core.telegram.org/bots/api#menubutton) here.
enum MenuButtonType {
  /// Menu Button shows a list of commands
  commands("commands"),

  /// Menu Button opens a web app
  webApp("web_app"),

  /// The default button
  defaultButton("default"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [MenuButtonType].
  const MenuButtonType(this.value);

  /// Constructs a new [MenuButtonType] from a [String].
  static MenuButtonType fromJson(String value) {
    return MenuButtonType.values.firstWhere((e) => e.value == value);
  }

  /// Converts this [MenuButtonType] to a [String].
  String toJson() {
    return value;
  }
}
