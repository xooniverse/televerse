import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'inline_keyboard.freezed.dart';
part 'inline_keyboard.g.dart';

/// Represents an inline keyboard that appears right next to the message it
/// belongs to. This is a shortcut for [InlineKeyboardMarkup].
///
/// With `InlineKeyboard` you can create a keyboard with buttons that can be
/// pressed inline. This is useful for things like inline menus. For example,
/// you can create a button that will open a URL when pressed or a button that
/// will send a callback query to your bot.
///
/// ```dart
/// // Create a new inline keyboard.
/// var keyboard = InlineKeyboard()
///   ..addUrl("Open Google", "https://google.com")
///   ..row()
///   ..add("Send a callback query", "callback_query");
///
/// // Send the keyboard with the message "Hello World!".
/// ctx.api.sendMessage(ctx.id, "Hello World!", replyMarkup: keyboard);
/// ```
@freezed
class InlineKeyboard with _$InlineKeyboard implements InlineKeyboardMarkup {
  /// Creates a new [InlineKeyboard].
  ///
  /// Inline Keyboard is an easy way to create a keyboard with buttons that can
  /// be pressed inline. This is useful for things like inline menus.
  factory InlineKeyboard({
    @Default([<InlineKeyboardButton>[]])
    @JsonKey(name: 'inline_keyboard')
    List<List<InlineKeyboardButton>> inlineKeyboard,
  }) = _InlineKeyboard;

  InlineKeyboard._();

  /// Adds a new row to the current keyboard.
  InlineKeyboard row() {
    if (inlineKeyboard.last.isEmpty) return this;
    return InlineKeyboard(inlineKeyboard: [...inlineKeyboard, []]);
  }

  /// Adds a Inline Keyboard Button with given [text] and [data] to the current
  /// row.
  InlineKeyboard add(String text, String data) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        callbackData: data,
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button with a URL to your web app that will be launched when the
  /// button is pressed.
  InlineKeyboard addWebApp(String text, String url) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        webApp: WebAppInfo(url: url),
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button with given [text] and [url]. When tapped the given URL is
  /// opened.
  InlineKeyboard addUrl(String text, String url) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        url: url,
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button with given [text] and login url ([url])
  InlineKeyboard addLogin(
    String text,
    String url, {
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
  }) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        loginUrl: LoginURL(
          url: url,
          forwardText: forwardText,
          botUsername: botUsername,
          requestWriteAccess: requestWriteAccess,
        ),
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button with the given [text] label when tapped prompts user to
  /// prompt the user to select one of their chats, open that chat and insert
  /// the bot's username and the specified inline [query] in the input field
  InlineKeyboard switchInlineQuery(String text, [String query = ""]) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        switchInlineQuery: query,
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button with the given [text] label when tapped the button will
  /// insert the bot's username and the specified inline [query] in the current
  /// chat's input field.
  InlineKeyboard switchInlineQueryCurrentChat(
    String text, [
    String query = "",
  ]) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        switchInlineQueryCurrentChat: query,
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button with the given [text] label when tapped the button will
  /// prompt the user to select one of their chats of the specified type, open
  /// that chat and insert the bot's username and the specified inline query in
  /// the input field.
  InlineKeyboard switchInlineQueryChosenChat(
    String text, {
    String query = "",
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        switchInlineQueryChosenChat: SwitchInlineQueryChosenChat(
          query: query,
          allowUserChats: allowUserChats,
          allowBotChats: allowBotChats,
          allowGroupChats: allowGroupChats,
          allowChannelChats: allowChannelChats,
        ),
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a callback game button to the keyboard
  InlineKeyboard game(String text, {CallbackGame game = const CallbackGame()}) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        callbackGame: game,
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a [Pay Button](https://core.telegram.org/bots/api#payments) to the
  /// keyboard
  InlineKeyboard pay(String text, {bool pay = true}) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        pay: pay,
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Adds a button which when pressed copies an arbitrary text specified by
  /// [copyText]
  InlineKeyboard copyText(String text, {required String copyText}) {
    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      InlineKeyboardButton(
        text: text,
        copyText: CopyTextButton(
          text: copyText,
        ),
      ),
    ];
    return InlineKeyboard(inlineKeyboard: newKeyboard);
  }

  /// Creates an InlineKeyboard from JSON
  factory InlineKeyboard.fromJson(Map<String, dynamic> json) => InlineKeyboard(
        inlineKeyboard: (json['inline_keyboard'] as List)
            .map(
              (row) => (row as List)
                  .map(
                    (button) => InlineKeyboardButton.fromJson(
                      button as Map<String, dynamic>,
                    ),
                  )
                  .toList(),
            )
            .toList(),
      );

  /// Converts the InlineKeyboard to JSON
  @override
  Map<String, dynamic> toJson() {
    return {
      'inline_keyboard': inlineKeyboard
          .map((row) => row.map((button) => button.toJson()).toList())
          .toList(),
    };
  }
}
