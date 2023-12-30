part of 'package:televerse/televerse.dart';

/// Represents an inline keyboard that appears right next to the message it belongs to. This is a shortcut for [InlineKeyboardMarkup].
///
/// With `InlineKeyboard` you can create a keyboard with buttons that can be pressed inline. This is useful for things like inline menus.
/// For example, you can create a button that will open a URL when pressed or a button that will send a callback query to your bot.
///
/// ```dart
/// // Create a new inline keyboard.
/// var keyboard = InlineKeyboard();
///
/// // Add a button with the text "Open Google" and the URL "https://google.com".
/// keyboard.addUrl("Open Google", "https://google.com");
///
/// // Add a button with the text "Send a callback query" and the data "callback_query".
/// keyboard.add("Send a callback query", "callback_query");
///
/// // Send the keyboard with the message "Hello World!".
/// ctx.api.sendMessage(ctx.id, "Hello World!", replyMarkup: keyboard);
/// ```
///
/// You can also add multiple rows to the keyboard. This is useful if you want to create a menu with multiple pages. Simply use the [InlineKeyboard.row] method to add a new row.
/// ```dart
/// // Create a new inline keyboard.
/// var keyboard = InlineKeyboard();
///
/// // Add a button with the text "Open Google" and the URL "https://google.com".
/// keyboard.addUrl("Open Google", "https://google.com");
///
/// // Add a new row.
/// keyboard.row();
///
/// // Add a button with the text "Send a callback query" and the data "callback_query".
/// keyboard.add("Send a callback query", "callback_query");
///
/// // Send the keyboard with the message "Hello World!".
/// ctx.api.sendMessage(ctx.id, "Hello World!", replyMarkup: keyboard);
/// ```
///
/// Additionally, you can also add - web apps by using the [InlineKeyboard.addWebApp] method,
class InlineKeyboard extends InlineKeyboardMarkup {
  /// Creates a new [InlineKeyboard].
  ///
  /// Inline Keyboard is an easy way to create a keyboard with buttons that can be pressed inline. This is useful for things like inline menus.
  ///
  /// Televerse provides a shortcut for [InlineKeyboardMarkup] called [InlineKeyboard]. This is a wrapper around [InlineKeyboardMarkup] that provides a more convenient way to create inline keyboards.
  ///
  /// Telegram supports multiple types of inline buttons. For each of them, Televerse provides a method to add them to the keyboard. These methods are:
  /// - [InlineKeyboard.add] - Adds a button with given the `text` and `data`. When the button is pressed, a callback query with the given `data` will be sent to your bot.
  /// - [InlineKeyboard.addUrl] - Adds a button with given the `text` and `url`. When the button is pressed, the given `url` will be opened.
  /// - [InlineKeyboard.addWebApp] - Adds a button with given the `text` and `url`. When the button is pressed, the given `url` will be opened as a web app.
  ///
  /// You can also add multiple rows to the keyboard. This is useful if you want to create a menu with multiple pages. Simply use the [InlineKeyboard.row] method to add a new row.
  ///
  /// Simply you can create a inline keyboard as follows:
  /// ```dart
  /// // Create a new inline keyboard.
  /// var keyboard = InlineKeyboard()
  ///   .addUrl("Open Google", "https://google.com")
  ///   .row()
  ///   .add("Send a callback query", "callback_query");
  ///
  /// // Send the keyboard with the message "Hello World!".
  /// ctx.api.sendMessage(ctx.id, "Hello World!", replyMarkup: keyboard);
  /// ```
  InlineKeyboard() : super(inlineKeyboard: [[]]);

  /// Adds a new row to the current keyboard.
  InlineKeyboard row() {
    if (inlineKeyboard.last.isEmpty) return this;
    inlineKeyboard.add([]);
    return this;
  }

  /// Adds a Inline Keyboard Button with given [text] and [data] to the current row.
  InlineKeyboard add(String text, String data) {
    inlineKeyboard.last.add(
      InlineKeyboardButton(
        text: text,
        callbackData: data,
      ),
    );
    return this;
  }

  /// Adds a button with a URL to your web app that will be launched when the button is pressed.
  InlineKeyboard addWebApp(String text, String url) {
    inlineKeyboard.last.add(
      InlineKeyboardButton(
        text: text,
        webAppInfo: WebAppInfo(url: url),
      ),
    );
    return this;
  }

  /// Adds a button with given [text] and [url]. When tapped the given URL is opened.
  InlineKeyboard addUrl(String text, String url) {
    inlineKeyboard.last.add(
      InlineKeyboardButton(
        text: text,
        url: url,
      ),
    );
    return this;
  }
}
