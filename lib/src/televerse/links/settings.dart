part of links;

/// Represents Telegram settings deeplinks.
class SettingsLinks {
  /// Private constructor to prevent instantiation.
  SettingsLinks._();

  /// Prefix
  static const _prefix = 'tg://settings';

  /// Used to bring the user to the app settings.
  static const open = _prefix;

  /// Change phone number
  ///
  /// Used to bring the user to the phone number modification page, invoking account.sendChangePhoneCode and account.changePhone.
  static const changePhoneNumber = '$_prefix/change_number';

  /// Active sessions link
  ///
  /// Used to bring the user to the active sessions page
  static const activeSessions = '$_prefix/devices';

  /// Folder settings link
  ///
  /// Used to bring the user to the [folder settings](https://core.telegram.org/api/folders).
  static const folderSettings = '$_prefix/folders';

  /// Language settings link
  ///
  /// Used to bring the user to the language settings.
  static const languageSettings = '$_prefix/language';

  /// Privacy and security settings link
  ///
  /// Used to bring the user to the privacy and security settings.
  static const privacy = '$_prefix/privacy';

  /// Theme settings link
  ///
  /// Used to bring the user to the theme settings section of the app.
  static const theme = '$_prefix/theme';
}
