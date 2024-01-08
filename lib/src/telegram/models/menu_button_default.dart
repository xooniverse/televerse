part of 'models.dart';

/// Describes that no specific value for the menu button was set.
class MenuButtonDefault extends MenuButton {
  /// Type of the button, always [MenuButtonType.defaultButton]
  @override
  MenuButtonType get type => MenuButtonType.defaultButton;

  /// Constructs a [MenuButtonDefault] object
  const MenuButtonDefault();

  /// Creates a [MenuButtonDefault] object from JSON object
  MenuButtonDefault.fromJson(Map<String, dynamic> json);

  /// Converts a [MenuButtonDefault] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
    };
  }
}
