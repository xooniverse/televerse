part of games;

/// This object represents one row of the high scores table for a game.
class GameHighScore {
  /// Position in high score table for the game
  int position;

  /// User
  User user;

  /// Score
  int score;

  GameHighScore({
    required this.position,
    required this.user,
    required this.score,
  });

  factory GameHighScore.fromJson(Map<String, dynamic> json) {
    return GameHighScore(
      position: json['position'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      score: json['score'] as int,
    );
  }
}
