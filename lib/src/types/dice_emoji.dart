import 'package:freezed_annotation/freezed_annotation.dart';

part 'dice_emoji.g.dart';

/// This object represents dice emoji.
@JsonEnum(alwaysCreate: true)
enum DiceEmoji {
  /// 🎲
  @JsonValue("🎲")
  dice,

  /// 🎯
  @JsonValue("🎯")
  dart,

  /// 🏀
  @JsonValue("🏀")
  basketball,

  /// ⚽
  @JsonValue("⚽")
  football,

  /// 🎳
  @JsonValue("🎳")
  bowling,

  /// 🎰
  @JsonValue("🎰")
  slotMachine;

  /// Converts the [DiceEmoji] to its corresponding JSON value.
  String toJson() => _$DiceEmojiEnumMap[this]!;
}
