part of models;

/// This object represents the bot's short description.
class BotShortDescription {
  /// Bot's short description.
  final String shortDescription;

  /// Creates the Bot Short Description object.
  BotShortDescription({
    required this.shortDescription,
  });

  /// Creates the Bot Short Description object from a JSON object.
  factory BotShortDescription.fromJson(Map<String, dynamic> json) {
    return BotShortDescription(
      shortDescription: json['short_description'] as String,
    );
  }

  /// Creates a JSON object from the Bot Short Description object.
  Map<String, dynamic> toJson() {
    return {
      'short_description': shortDescription,
    };
  }
}
