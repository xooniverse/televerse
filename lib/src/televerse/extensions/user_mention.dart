part of extensions;

/// Extensions for the [User] class.
///
/// This extension adds a [mention] getter to the [User] class.
/// This getter returns a [UserMention] object. This can be very helpful when you want to mention a user in a message.
///
/// Example:
/// When you want to mention a user in a message, you can use this extension to represent the mention
/// instead of manually creating the mention URL.
///
/// ```dart
/// bot.start((ctx) {
///   final mention = ctx.from.mention;
///   ctx.reply("Hello $mention!");
/// });
/// ```
extension Mention on User {
  /// Example:
  /// When you want to mention a user in a message, you can use this extension to represent the mention
  /// instead of manually creating the mention URL.
  ///
  /// ```dart
  /// bot.start((ctx) {
  ///   final mention = ctx.from.mention;
  ///   ctx.reply("Hello $mention!");
  /// });
  /// ```
  ///
  /// Things to note:
  /// - By default this mention object will be parsed in HTML mode.
  /// - The text of the mention will be the username of the user. If the username is `null`, the first name of the user will be used.
  ///
  /// If you want to change the parse mode or the text of the mention, you can use the [mentionWith] method.
  UserMention get mention => UserMention(id, username ?? firstName);

  /// Returns a [UserMention] object with the passed [text] and [parseMode].
  UserMention mentionWith(
    String text, {
    ParseMode parseMode = ParseMode.html,
  }) =>
      UserMention(id, text, parseMode: parseMode);
}
