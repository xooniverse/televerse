part of games;

/// A placeholder, currently holds no information. Use BotFather to set up your game.
class CallbackGame {
  /// Creates a new [CallbackGame] object.
  CallbackGame();

  /// Creates a new [CallbackGame] object from json.
  factory CallbackGame.fromJson(Map<String, dynamic> json) {
    return CallbackGame();
  }

  /// Converts a [CallbackGame] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson() {
    return {};
  }
}
