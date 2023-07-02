part of links;

/// Used to link to public users, groups and channels, [see here for more info on how to handle them »](https://core.telegram.org/api/invites#public-usernames).
class UsernameLink extends Deeplink {
  /// Username of the user, group or channel.
  final String username;

  /// Creates a new [UsernameLink] object.
  const UsernameLink(
    this.username,
  );

  /// tg:// link
  @override
  String get tg => 'tg://resolve?domain=$username';

  /// https://t.me/ link
  @override
  String get https => 'https://t.me/$username';

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}
