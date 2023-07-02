/// ## [Telegram Deeplinks](https://core.telegram.org/api/links)
///
/// Telegram supports different types of deeplinks. This includes opening a chat with a user, opening a group with a specific message,
/// adding a bot to a group / channel, to name a few.
///
/// Televerse provides a convenient way to create these deeplinks.
library links;

import 'package:televerse/televerse.dart';

part 'bot.dart';
part 'bot_admin_rights.dart';
part 'game.dart';
part 'settings.dart';
part 'share.dart';
part 'username.dart';
part 'phone_number.dart';
part 'proxy.dart';
part 'user.dart';
part 'text.dart';

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

  /// Creates a [BotLink] with the given [username] and [startParameter].
  static BotLink botLink(
    String username, {
    String? startParameter,
  }) {
    return BotLink(
      username,
      startParameter: startParameter,
    );
  }

  /// Creates a [GroupBotLink] with the given [username], [startParameter] and [admin].
  static GroupBotLink groupBotLink(
    String username, {
    String? startParameter,
    BotAdminRights? admin,
  }) {
    return GroupBotLink(
      username,
      parameter: startParameter,
      admin: admin,
    );
  }

  /// Creates a [ChannelBotLink] with the given [username] and [admin].
  static ChannelBotLink channelBotLink(
    String username, {
    required BotAdminRights admin,
  }) {
    return ChannelBotLink(
      username,
      admin: admin,
    );
  }

  /// Creates a [GameLink] with the given [username] and [shortName].
  static GameLink gameLink(
    String username,
    String shortName,
  ) {
    return GameLink(
      username,
      shortName,
    );
  }

  /// Creates a [PhoneNumberLink] with the given [phoneNumber].
  ///
  /// The phone number should be in the format `+<country code><phone number>`.
  static PhoneNumberLink phoneNumberLink(
    String phoneNumber,
  ) {
    return PhoneNumberLink(
      phoneNumber,
    );
  }

  /// Creates a [UsernameLink] with the given [username].
  static UsernameLink usernameLink(
    String username,
  ) {
    return UsernameLink(
      username,
    );
  }

  /// Creates a SettingsLink
  static SettingsLinks settingsLink() {
    return SettingsLinks._();
  }

  /// Creates a [ShareLink] with the given [url] and [text].
  static ShareLink shareLink(
    String url, {
    String? text,
  }) {
    return ShareLink(
      url,
      text: text,
    );
  }

  /// Creates a [MTProxyLink] with the given [server], [port] and [secret].
  static MTProxyLink mtProxyLink({
    required String server,
    required int port,
    required String secret,
  }) {
    return MTProxyLink(
      server: server,
      port: port,
      secret: secret,
    );
  }

  /// Creates a [Socks5Link] with the given [server], [port], [username] and [password].
  static Socks5Link socks5Link({
    required String server,
    required int port,
    String? username,
    String? password,
  }) {
    return Socks5Link(
      server: server,
      port: port,
      username: username,
      password: password,
    );
  }
}
