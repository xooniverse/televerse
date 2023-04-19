part of models;

/// This object represents an animated emoji that displays a random value.
class Dice {
  /// Emoji on which the dice throw animation is based
  final DiceEmoji emoji;

  /// Value of the dice, 1-6 for “🎲”, “🎯” and “🎳” base emoji, 1-5 for “🏀” and “⚽” base emoji, 1-64 for “🎰” base emoji
  final int value;

  /// Creates a new [Dice] object.
  const Dice({
    required this.emoji,
    required this.value,
  });

  /// Creates a new [Dice] object from json.
  factory Dice.fromJson(Map<String, dynamic> json) {
    return Dice(
      emoji: DiceEmoji.fromJson(json['emoji']!),
      value: json['value']!,
    );
  }

  /// Converts a [Dice] object to json.
  Map<String, dynamic> toJson() {
    return {
      'emoji': emoji.emoji,
      'value': value,
    };
  }
}
