part of games;

/// A placeholder, currently holds no information. Use BotFather to set up your game.
class CallbackGame {
  CallbackGame();

  factory CallbackGame.fromJson(Map<String, dynamic> json) {
    return CallbackGame();
  }

  Map<String, dynamic> toJson() {
    return {};
  }
}
