/// ## [Telegram Deeplinks](https://core.telegram.org/api/links)
///
/// Telegram supports different types of deeplinks. This includes opening a chat with a user, opening a group with a specific message,
/// adding a bot to a group / channel, to name a few.
///
/// Televerse provides a convenient way to create these deeplinks. Simply use the [TelegramDeeplink] class to create a deeplink.
library links;

part 'bot.dart';
part 'bot_admin_rights.dart';
part 'game.dart';
part 'settings.dart';
part 'share.dart';
part 'username.dart';
part 'phone_number.dart';
part 'proxy.dart';

/// This class represents a Telegram deeplink.
abstract class Deeplink {
  /// Creates a new [Deeplink] object.
  const Deeplink();

  /// tg:// link
  String get tg;

  /// https://t.me/ link
  String get https;

  /// By default, this method returns the [tg] link.
  @override
  String toString();

  /// Encode parameter
  String _encodeParameter(String? parameter) {
    if (parameter == null || parameter.isEmpty) return '';

    return Uri.encodeFull(parameter);
  }
}
