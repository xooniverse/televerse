import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/types/televerse_enum.dart';

part 'dice_emoji.g.dart';

/// This object represents dice emoji.
@JsonEnum(alwaysCreate: true)
enum DiceEmoji implements TeleverseEnum {
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
  @override
  String toJson() => _$DiceEmojiEnumMap[this]!;
}
