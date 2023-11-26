part of 'models.dart';

/// A class representing a mention.
///
/// This class can be very helpful when you want to mention a user in a message.
///
/// Example:
/// When you want to mention a user in a message, you can use this class to represent the mention
/// instead of manually creating the mention URL.
///
/// ```dart
/// // Create a new UserMention object.
/// final mention = UserMention(123456789, "Jake");
///
/// // And just send the message.
/// // Make sure to set the parseMode to ParseMode.html or ParseMode.markdown.
/// bot.api.sendMessage(
///   chatId,
///   "Hello $mention!",
///   parseMode: ParseMode.html,
/// );
///
/// // There we go! The user will be mentioned in the message. :)
/// ```
class UserMention {
  /// The user id.
  ///
  /// This is the id of the user who should be mentioned.
  final int id;

  /// The text of the mention.
  ///
  /// This is the text that will be displayed as the mention.
  final String text;

  /// Parse Mode
  ///
  /// By default, the text will be parsed in HTML mode. You can change this by setting the [parseMode] parameter.
  final ParseMode parseMode;

  /// Constructs a new [UserMention] instance.
  ///
  /// - The [id] is the id of the user who should be mentioned.
  /// - The [text] is the text that will be displayed as the mention.
  ///
  /// By default, the text will be parsed in HTML mode. You can change this by setting the [parseMode] parameter.
  const UserMention(
    this.id,
    this.text, {
    this.parseMode = ParseMode.html,
  });

  /// Returns a string representation of the mention.
  @override
  String toString() {
    if (parseMode == ParseMode.html) {
      return '<a href="tg://user?id=$id">$text</a>';
    } else {
      return '[$text](tg://user?id=$id)';
    }
  }
}
