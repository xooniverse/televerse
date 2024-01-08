part of 'models.dart';

/// This object represents the bot's description.
class BotDescription {
  /// Bot's description.
  final String description;

  /// Creates the Bot Description object.
  const BotDescription({
    required this.description,
  });

  /// Creates the Bot Description object from a JSON object.
  factory BotDescription.fromJson(Map<String, dynamic> json) {
    return BotDescription(
      description: json['description'] as String,
    );
  }

  /// Creates a JSON object from the Bot Description object.
  Map<String, dynamic> toJson() {
    return {
      'description': description,
    };
  }
}
