// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'game_high_score.freezed.dart';
part 'game_high_score.g.dart';

/// This object represents one row of the high scores table for a game.
@freezed
abstract class GameHighScore with _$GameHighScore {
  /// Constructs a [GameHighScore] object
  const factory GameHighScore({
    /// Position in high score table for the game
    @JsonKey(name: 'position') required int position,

    /// User
    @JsonKey(name: 'user') required User user,

    /// Score
    @JsonKey(name: 'score') required int score,
  }) = _GameHighScore;

  /// De-serializes a [GameHighScore] object from a JSON map
  factory GameHighScore.fromJson(Map<String, dynamic> json) =>
      _$GameHighScoreFromJson(json);
}
