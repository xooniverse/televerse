// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'callback_game.freezed.dart';
part 'callback_game.g.dart';

/// A placeholder, currently holds no information. Use BotFather to set up your
/// game.
@freezed
abstract class CallbackGame with _$CallbackGame {
  /// Creates a new [CallbackGame] object.
  const factory CallbackGame() = _CallbackGame;

  /// Creates a [CallbackGame] object from JSON object.
  factory CallbackGame.fromJson(Map<String, dynamic> json) =>
      _$CallbackGameFromJson(json);
}
