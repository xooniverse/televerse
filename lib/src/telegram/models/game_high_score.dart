part of 'models.dart';

/// This object represents one row of the high scores table for a game.
class GameHighScore {
  /// Position in high score table for the game
  final int position;

  /// User
  final User user;

  /// Score
  final int score;

  /// Constructs a [GameHighScore] object
  const GameHighScore({
    required this.position,
    required this.user,
    required this.score,
  });

  /// De-serializes a [GameHighScore] object from a JSON map
  factory GameHighScore.fromJson(Map<String, dynamic> json) {
    return GameHighScore(
      position: json['position'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      score: json['score'] as int,
    );
  }

  /// Serializes a [GameHighScore] object to a JSON map
  /// Returns a [Map<String, dynamic>] containing the serialized object
  Map<String, dynamic> toJson() {
    return {
      'position': position,
      'user': user.toJson(),
      'score': score,
    };
  }
}
