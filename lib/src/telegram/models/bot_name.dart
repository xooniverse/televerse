part of 'models.dart';

/// This object represents the bot's name.
class BotName {
  /// The bot's name
  final String name;

  /// Creates a new BotName object
  const BotName({
    required this.name,
  });

  /// Constructs [BotName] from JSON
  factory BotName.fromJson(Map<String, dynamic> json) {
    return BotName(
      name: json['name'],
    );
  }

  /// Converts [BotName] to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}
