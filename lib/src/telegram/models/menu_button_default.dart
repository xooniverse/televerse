part of models;

/// Describes that no specific value for the menu button was set.
class MenuButtonDefault extends MenuButton {
  @override
  MenuButtonType get type => MenuButtonType.defaultButton;

  MenuButtonDefault();

  MenuButtonDefault.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
    };
  }
}
