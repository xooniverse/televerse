part of televerse;

class InlineKeyboard extends InlineKeyboardMarkup {
  InlineKeyboard() : super(inlineKeyboard: [[]]);

  /// Adds a new row to the current keyboard.
  InlineKeyboard row() {
    inlineKeyboard.add([]);
    return this;
  }

  /// Adds a Inline Keyboard Button with given [text] and [data] to the current row.
  InlineKeyboard add(String text, String data) {
    inlineKeyboard.last
        .add(InlineKeyboardButton(text: text, callbackData: data));
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
