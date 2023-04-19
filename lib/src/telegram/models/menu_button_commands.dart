part of models;

/// Represents a menu button, which opens the bot's list of commands.
class MenuButtonCommands extends MenuButton {
  /// Type of the button, always [MenuButtonType.commands]
  @override
  MenuButtonType get type => MenuButtonType.commands;

  /// Constructs a [MenuButtonCommands] object
  MenuButtonCommands();

  /// Creates a [MenuButtonCommands] object from JSON object
  MenuButtonCommands.fromJson(Map<String, dynamic> json);

  /// Converts a [MenuButtonCommands] object to JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
    };
  }
}
