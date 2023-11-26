part of 'links.dart';

/// ID links are merely an abstraction offered by the bot API to simplify construction of
/// [inputMessageEntityMentionName](https://core.telegram.org/constructor/inputMessageEntityMentionName) and
/// [inputKeyboardButtonUserProfile](https://core.telegram.org/constructor/inputKeyboardButtonUserProfile) constructors,
/// and should be ignored by normal clients.
class UserLink extends Deeplink {
  /// The ID of the user.
  final int id;

  /// Creates a new [UserLink] object.
  const UserLink(
    this.id,
  );

  /// tg:// link
  @override
  String get tg => 'tg://user?id=$id';

  /// The t.me link.
  ///
  /// This is not supported for user links.
  @override
  String get https => throw TeleverseException(
        "https://t.me/ links are not supported for user links",
      );
}
