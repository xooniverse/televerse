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

  const DiceEmoji(this.emoji);
  final String emoji;

  factory DiceEmoji.fromJson(String emoji) {
    return DiceEmoji.values.firstWhere((e) => e.emoji == emoji);
  }

  factory DiceEmoji.fromEmoji(String emoji) {
    return DiceEmoji.values.firstWhere((e) => e.emoji == emoji);
  }
}
