part of models;

/// This object represents a bot command.
class BotCommand {
  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  final String command;

  /// Description of the command, 3-256 characters.
  final String description;

  BotCommand({
    required this.command,
    required this.description,
  });

  static BotCommand fromJson(Map<String, dynamic> json) {
    return BotCommand(
      command: json['command']!,
      description: json['description']!,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'command': command,
      'description': description,
    };
  }

  @override
  String toString() => json.encode(this);
}
