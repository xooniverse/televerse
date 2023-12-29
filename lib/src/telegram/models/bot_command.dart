part of 'models.dart';

/// This object represents a bot command.
class BotCommand {
  /// Text of the command, 1-32 characters. Can contain only lowercase English letters, digits and underscores.
  final String command;

  /// Description of the command, 3-256 characters.
  final String description;

  /// Creates a new [BotCommand] object.
  BotCommand({
    required this.command,
    required this.description,
  });

  /// Creates a new [BotCommand] object from json.
  static BotCommand fromJson(Map<String, dynamic> json) {
    return BotCommand(
      command: json['command']!,
      description: json['description']!,
    );
  }

  /// Converts a [BotCommand] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {
      'command': command,
      'description': description,
    };
  }

  /// Converts a [BotCommand] instance to a [String].
  @override
  String toString() => json.encode(this);
}
