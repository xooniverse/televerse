// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'dice.freezed.dart';
part 'dice.g.dart';

/// This object represents an animated emoji that displays a random value.
@freezed
abstract class Dice with _$Dice {
  /// Creates an animated emoji with a random value
  ///
  /// [emoji] Emoji on which the dice throw animation is based [value] Value of
  /// the dice
  const factory Dice({
    /// Emoji on which the dice throw animation is based
    @JsonKey(name: 'emoji') required DiceEmoji emoji,

    /// Value of the dice.
    ///
    /// 1-6 for "🎲", "🎯" and "🎳" base emoji, 1-5 for "🏀" and "⚽" base
    /// emoji, 1-64 for "🎰" base emoji
    @JsonKey(name: 'value') required int value,
  }) = _Dice;

  /// Creates a [Dice] from a JSON map
  factory Dice.fromJson(Map<String, dynamic> json) => _$DiceFromJson(json);
}
