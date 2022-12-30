import 'package:televerse/src/types/menu_button_type.dart';

import 'abstracts/menu_button.dart';

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
