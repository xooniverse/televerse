part of 'links.dart';

/// This class represents a Telegram bot deeplink.
///
/// This can be useful to start a conversation with a bot.
/// You can optionall pass a [startParameter] to the bot.
///
/// The t.me link will be in the format: `https://t.me/<bot_username>?start=<parameter>`
///
/// The tg link will be in the format: `tg://resolve?domain=<bot_username>&start=<parameter>`
///
class BotLink extends Deeplink {
  /// The username of the bot.
  final String username;

  /// Start parameter, up to 64 base64url characters: if provided and the bot_username is indeed a bot, the text input bar should be replaced with a Start button (even if the user has already started the bot) that should invoke messages.startBot with the appropriate parameter once clicked.
  final String? startParameter;

  /// Creates a new [BotLink] object.
  const BotLink(
    this.username, {
    this.startParameter,
  });

  /// Encode the [startParameter] to base64url.
  String get _encodedStartParameter => _encodeParameter(startParameter);

  /// tg:// link
  @override
  String get tg {
    final url = 'https://t.me/$username';
    if (startParameter != null) {
      return 'tg://resolve?domain=$username&start=$_encodedStartParameter';
    } else {
      return url;
    }
  }

  /// https://t.me/ link
  @override
  String get https {
    final url = 'https://t.me/$username';
    if (startParameter != null) {
      return '$url?start=$_encodedStartParameter';
    } else {
      return url;
    }
  }

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}

/// This class represents a Telegram group deeplink.
///
/// Used to add bots to groups or channels.
/// First of all, check that the `bot_username` indeed links to a bot.
///
/// The t.me link will be in the format: `t.me/<bot_username>?startgroup=<parameter>&admin=<permissions>`
/// Or `t.me/<bot_username>?startgroup&admin=<permissions>`
///
/// The tg link will be in the format: `tg://resolve?domain=<bot_username>&startgroup=<parameter>&admin=<permissions>`
/// Or `tg://resolve?domain=<bot_username>&startgroup&admin=<permissions>`
///
/// - If the admin parameter is not provided:
///   - Bring up a dialog selection of groups where the user can add members
///   - Add the bot to the group
///   - If a parameter is provided, invoke messages.startBot with the appropriate parameter
/// - If the admin parameter is provided:
///   - Bring up a dialog selection of groups where the user can add/edit admins
///   - If the bot is already an admin of the group, combine existing admin rights with the admin rights in admin
///   - Add the bot as admin/modify admin permissions to the new rights
///   - If a parameter is provided, invoke messages.startBot with the appropriate parameter
class GroupBotLink extends Deeplink {
  /// The username of the bot.
  final String username;

  /// Start parameter, only for group links, up to 64 base64url characters:
  ///
  /// If provided and the `username` is indeed a bot, [messages.startBot](https://core.telegram.org/method/messages.startBot)
  /// with the appropriate `parameter` should be invoked after adding the bot to the group.
  final String? parameter;

  /// A combination of the following identifiers separated by +, each corresponding
  /// to the appropriate flag in the [chatAdminRights »](https://core.telegram.org/constructor/chatAdminRights) constructor.
  final BotAdminRights? admin;

  /// Creates a new [GroupBotLink] object.
  const GroupBotLink(
    this.username, {
    this.parameter,
    this.admin,
  });

  /// Encode the [parameter] to base64url.
  String get _encodedParameter => _encodeParameter(parameter);

  /// tg:// link
  @override
  String get tg {
    final url = 'tg://resolve?domain=$username&startgroup';
    if (parameter == null && admin == null) {
      return url;
    } else {
      final params = <String>[];
      if (parameter != null) params.add('=$_encodedParameter');
      if (admin != null) params.add('&admin=${admin!.param}');
      return '$url${params.join('')}';
    }
  }

  /// https://t.me/ link
  @override
  String get https {
    final url = 'https://t.me/$username?startgroup';
    if (parameter == null && admin == null) {
      return url;
    } else {
      final params = <String>[];
      if (parameter != null) params.add('=$_encodedParameter');
      if (admin != null) params.add('&admin=${admin!.param}');
      return '$url${params.join('')}';
    }
  }

  /// By default, this method returns the [tg] link.
  @override
  String toString() => tg;
}

/// This class represents a Telegram channel deeplink.
///
/// Used to add bots to channels. This works in the same way as [GroupBotLink].
///
/// The t.me link will be in the format: `t.me/<bot_username>?startchannel&admin=<permissions>`
///
/// The tg link will be in the format: `tg://resolve?domain=<bot_username>&startchannel&admin=<permissions>`
class ChannelBotLink extends Deeplink {
  /// The username of the bot.
  final String username;

  /// A combination of the following identifiers separated by +, each corresponding
  /// to the appropriate flag in the [chatAdminRights »](https://core.telegram.org/constructor/chatAdminRights) constructor.
  final BotAdminRights admin;

  /// Creates a new [ChannelBotLink] object.
  const ChannelBotLink(
    this.username, {
    required this.admin,
  });

  /// tg:// link
  @override
  String get tg {
    return 'tg://resolve?domain=$username&startchannel&admin=${admin.param}';
  }

  /// https://t.me/ link
  @override
  String get https {
    return 'https://t.me/$username?startchannel&admin=${admin.param}';
  }
}
