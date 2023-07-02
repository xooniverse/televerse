part of links;

/// Game Links
///
/// Used to share a game with a bot.
///
/// The t.me link will be in the format: `https://t.me/<bot_username>?game=<short_name>`
///
/// The tg link will be in the format: `tg://resolve?domain=<bot_username>&game=<short_name>`
class GameLink extends Deeplink {
  /// The username of the bot.
  final String username;

  /// The short name of the game.
  final String shortName;

  /// Creates a new [GameLink] object.
  const GameLink(
    this.username,
    this.shortName,
  );

  /// tg:// link
  @override
  String get tg => 'tg://resolve?domain=$username&game=$shortName';

  /// https://t.me/ link
  @override
  String get https => 'https://t.me/$username?game=$shortName';

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}
