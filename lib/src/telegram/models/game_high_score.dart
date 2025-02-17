import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';

part 'game_high_score.freezed.dart';
part 'game_high_score.g.dart';

/// This object represents one row of the high scores table for a game.
@freezed
class GameHighScore with _$GameHighScore {
  /// Constructs a [GameHighScore] object
  const factory GameHighScore({
    /// Position in high score table for the game
    required int position,

    /// User
    required User user,

    /// Score
    required int score,
  }) = _GameHighScore;

  /// De-serializes a [GameHighScore] object from a JSON map
  factory GameHighScore.fromJson(Map<String, dynamic> json) =>
      _$GameHighScoreFromJson(json);
}
