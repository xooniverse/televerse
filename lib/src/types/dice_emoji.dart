part of 'types.dart';

/// This object represents dice emoji.
enum DiceEmoji {
  /// 🎲
  dice("🎲"),

  /// 🎯
  dart("🎯"),

  /// 🏀
  basketball("🏀"),

  /// ⚽
  football("⚽"),

  /// 🎳
  bowling("🎳"),

  /// 🎰
  slotMachine("🎰");

  /// The value of this enum.
  const DiceEmoji(this.emoji);

  /// The emoji of this enum.
  final String emoji;

  /// Constructs a new [DiceEmoji] from a [String].
  factory DiceEmoji.fromJson(String emoji) {
    return DiceEmoji.values.firstWhere((e) => e.emoji == emoji);
  }

  /// Converts this [DiceEmoji] to a [String].
  factory DiceEmoji.fromEmoji(String emoji) {
    return DiceEmoji.values.firstWhere((e) => e.emoji == emoji);
  }
}
