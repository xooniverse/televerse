// File: lib/src/televerse/markups/inline_keyboard.dart
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'inline_keyboard.freezed.dart';
part 'inline_keyboard.g.dart';

/// Represents an inline keyboard that appears right next to the message it
/// belongs to. This is a utility wrapper around [InlineKeyboardMarkup] that
/// provides a fluent API for building inline keyboards.
///
/// With `InlineKeyboard` you can create keyboards with buttons that can be
/// pressed inline. This is useful for creating interactive menus, handling
/// callbacks, opening URLs, launching web apps, and more.
///
/// ## Basic Usage
///
/// ```dart
/// // Create a simple inline keyboard
/// final keyboard = InlineKeyboard()
///   .text("Button 1", "callback_1")
///   .text("Button 2", "callback_2")
///   .row()
///   .url("Visit Website", "https://example.com");
///
/// // Send with message
/// await ctx.reply("Choose an option:", replyMarkup: keyboard);
/// ```
///
/// ## Advanced Usage
///
/// ```dart
/// // Create keyboard with various button types
/// final keyboard = InlineKeyboard()
///   .text("Callback", "data")
///   .url("Website", "https://example.com")
///   .row()
///   .webApp("Open App", "https://app.example.com")
///   .switchInline("Share", "query")
///   .row()
///   .login("Login", "https://auth.example.com")
///   .pay("Pay Now");
/// ```
///
/// ## Building from Arrays
///
/// ```dart
/// // From callback data pairs
/// final keyboard = InlineKeyboard.from([
///   [["Button 1", "data1"], ["Button 2", "data2"]],
///   [["Button 3", "data3"]]
/// ]);
///
/// // From button objects
/// final buttons = [
///   [InlineKeyboard.buttonText("A", "a"), InlineKeyboard.buttonUrl("B", "https://b.com")],
///   [InlineKeyboard.buttonText("C", "c")]
/// ];
/// final keyboard = InlineKeyboard.fromButtons(buttons);
/// ```
@freezed
abstract class InlineKeyboard
    with _$InlineKeyboard
    implements InlineKeyboardMarkup {
  /// Private Constructor
  InlineKeyboard._();

  /// Creates a new [InlineKeyboard] instance.
  ///
  /// Parameters:
  /// - [inlineKeyboard]: Array of button rows, each represented by an Array of [InlineKeyboardButton] objects
  const factory InlineKeyboard({
    /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
    @Default([<InlineKeyboardButton>[]])
    @JsonKey(name: 'inline_keyboard')
    List<List<InlineKeyboardButton>> inlineKeyboard,
  }) = _InlineKeyboard;

  /// Creates an inline keyboard from a 2D array of label-data pairs.
  ///
  /// Each inner array represents a row, and each pair represents [text, callbackData].
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard.from([
  ///   [["Yes", "yes"], ["No", "no"]],
  ///   [["Maybe", "maybe"], ["Cancel", "cancel"]]
  /// ]);
  /// ```
  factory InlineKeyboard.from(List<List<List<String>>> source) {
    final buttons = source.map((row) {
      return row.map((pair) {
        if (pair.length != 2) {
          throw ArgumentError(
            'Each button pair must contain exactly 2 elements: [text, data]',
          );
        }
        return InlineKeyboardButton(text: pair[0], callbackData: pair[1]);
      }).toList();
    }).toList();
    return InlineKeyboard(inlineKeyboard: buttons);
  }

  /// Creates an inline keyboard from a 2D array of [InlineKeyboardButton] objects.
  ///
  /// This gives you full control over button types and properties.
  ///
  /// Example:
  /// ```dart
  /// final buttons = [
  ///   [InlineKeyboard.buttonText("Hello", "hello"), InlineKeyboard.buttonUrl("World", "https://world.com")],
  ///   [InlineKeyboard.buttonWebApp("App", "https://app.com")]
  /// ];
  /// final keyboard = InlineKeyboard.fromButtons(buttons);
  /// ```
  factory InlineKeyboard.fromButtons(List<List<InlineKeyboardButton>> buttons) {
    return InlineKeyboard(inlineKeyboard: buttons);
  }

  /// Creates a single-column inline keyboard from label-data pairs.
  ///
  /// Each pair becomes a button on its own row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard.column([
  ///   ["Option 1", "opt1"],
  ///   ["Option 2", "opt2"],
  ///   ["Option 3", "opt3"]
  /// ]);
  /// ```
  factory InlineKeyboard.column(List<List<String>> pairs) {
    final buttons = pairs.map((pair) {
      if (pair.length != 2) {
        throw ArgumentError(
          'Each button pair must contain exactly 2 elements: [text, data]',
        );
      }
      return [InlineKeyboardButton(text: pair[0], callbackData: pair[1])];
    }).toList();
    return InlineKeyboard(inlineKeyboard: buttons);
  }

  /// Creates a single-row inline keyboard from label-data pairs.
  ///
  /// All pairs become buttons in the same row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard.singleRow([
  ///   ["Yes", "yes"],
  ///   ["No", "no"],
  ///   ["Maybe", "maybe"]
  /// ]);
  /// ```
  factory InlineKeyboard.singleRow(List<List<String>> pairs) {
    final buttons = pairs.map((pair) {
      if (pair.length != 2) {
        throw ArgumentError(
          'Each button pair must contain exactly 2 elements: [text, data]',
        );
      }
      return InlineKeyboardButton(text: pair[0], callbackData: pair[1]);
    }).toList();
    return InlineKeyboard(inlineKeyboard: [buttons]);
  }

  /// Creates an inline keyboard with a grid layout.
  ///
  /// Distributes the provided label-data pairs into rows with the specified number of columns.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard.grid([
  ///   ["1", "1"], ["2", "2"], ["3", "3"],
  ///   ["4", "4"], ["5", "5"], ["6", "6"]
  /// ], columns: 3); // Creates 2 rows with 3 buttons each
  /// ```
  factory InlineKeyboard.grid(
    List<List<String>> pairs, {
    required int columns,
  }) {
    if (columns <= 0) {
      throw ArgumentError('Columns must be greater than 0');
    }

    final buttons = <List<InlineKeyboardButton>>[];
    for (int i = 0; i < pairs.length; i += columns) {
      final rowPairs = pairs.skip(i).take(columns);
      final row = rowPairs.map((pair) {
        if (pair.length != 2) {
          throw ArgumentError(
            'Each button pair must contain exactly 2 elements: [text, data]',
          );
        }
        return InlineKeyboardButton(text: pair[0], callbackData: pair[1]);
      }).toList();
      buttons.add(row);
    }

    return InlineKeyboard(inlineKeyboard: buttons);
  }

  /// Creates a new [InlineKeyboard] from JSON.
  factory InlineKeyboard.fromJson(Map<String, dynamic> json) =>
      _$InlineKeyboardFromJson(json);

  // Static factory methods for creating individual buttons (renamed with 'button' prefix)

  /// Creates a callback query button.
  ///
  /// The button contains text and custom payload that will be sent back
  /// to your bot when the button is pressed.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonText("Click me", "button_clicked");
  /// ```
  static InlineKeyboardButton buttonText(String text, [String? data]) {
    return InlineKeyboardButton(text: text, callbackData: data ?? text);
  }

  /// Creates a URL button.
  ///
  /// Telegram clients will open the provided URL when the button is pressed.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonUrl("Visit Website", "https://example.com");
  /// ```
  static InlineKeyboardButton buttonUrl(String text, String url) {
    return InlineKeyboardButton(text: text, url: url);
  }

  /// Creates a web app button.
  ///
  /// Opens a Web App when the button is pressed.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonWebApp("Open App", "https://app.example.com");
  /// ```
  static InlineKeyboardButton buttonWebApp(String text, String url) {
    return InlineKeyboardButton(text: text, webApp: WebAppInfo(url: url));
  }

  /// Creates a login button.
  ///
  /// Can be used as a replacement for the Telegram Login Widget.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonLogin(
  ///   "Login",
  ///   "https://auth.example.com",
  ///   forwardText: "Login to Example",
  /// );
  /// ```
  static InlineKeyboardButton buttonLogin(
    String text,
    String url, {
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
  }) {
    return InlineKeyboardButton(
      text: text,
      loginUrl: LoginURL(
        url: url,
        forwardText: forwardText,
        botUsername: botUsername,
        requestWriteAccess: requestWriteAccess,
      ),
    );
  }

  /// Creates an inline query button.
  ///
  /// Prompts the user to select a chat, opens that chat and inserts
  /// the bot's username and the specified inline query in the input field.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonSwitchInline("Share", "check this out");
  /// ```
  static InlineKeyboardButton buttonSwitchInline(
    String text, [
    String query = "",
  ]) {
    return InlineKeyboardButton(text: text, switchInlineQuery: query);
  }

  /// Creates an inline query button for the current chat.
  ///
  /// Inserts the bot's username and the specified inline query
  /// in the current chat's input field.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonSwitchInlineCurrent("Search here", "cats");
  /// ```
  static InlineKeyboardButton buttonSwitchInlineCurrent(
    String text, [
    String query = "",
  ]) {
    return InlineKeyboardButton(
      text: text,
      switchInlineQueryCurrentChat: query,
    );
  }

  /// Creates an inline query button for chosen chat type.
  ///
  /// Prompts the user to select one of their chats of the specified type,
  /// opens that chat and inserts the bot's username and query in the input field.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonSwitchInlineChosen(
  ///   "Share to Group",
  ///   query: "check this out",
  ///   allowGroupChats: true,
  /// );
  /// ```
  static InlineKeyboardButton buttonSwitchInlineChosen(
    String text, {
    String query = "",
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) {
    return InlineKeyboardButton(
      text: text,
      switchInlineQueryChosenChat: SwitchInlineQueryChosenChat(
        query: query,
        allowUserChats: allowUserChats,
        allowBotChats: allowBotChats,
        allowGroupChats: allowGroupChats,
        allowChannelChats: allowChannelChats,
      ),
    );
  }

  /// Creates a callback game button.
  ///
  /// Used for games. When pressed, opens the game.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonGame("Play Game");
  /// ```
  static InlineKeyboardButton buttonGame(String text, {CallbackGame? game}) {
    return InlineKeyboardButton(
      text: text,
      callbackGame: game ?? const CallbackGame(),
    );
  }

  /// Creates a pay button.
  ///
  /// Used for payments. This button must be the first button in the first row
  /// and can only be used in invoice messages.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonPay("Pay Now");
  /// ```
  static InlineKeyboardButton buttonPay(String text, {bool pay = true}) {
    return InlineKeyboardButton(text: text, pay: pay);
  }

  /// Creates a copy text button.
  ///
  /// When clicked, the specified text will be copied to the clipboard.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboard.buttonCopyText("Copy Code", copyText: "ABC123");
  /// ```
  static InlineKeyboardButton buttonCopyText(
    String text, {
    required String copyText,
  }) {
    return InlineKeyboardButton(
      text: text,
      copyText: CopyTextButton(text: copyText),
    );
  }

  // Instance methods for building keyboards

  /// Adds a new row to the keyboard.
  ///
  /// If the current row is empty, this method does nothing.
  /// Otherwise, it starts a new row for subsequent buttons.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard()
  ///   .text("Button 1", "data1")
  ///   .text("Button 2", "data2")
  ///   .row() // Start new row
  ///   .text("Button 3", "data3");
  /// ```
  InlineKeyboard row() {
    if (inlineKeyboard.isEmpty || inlineKeyboard.last.isEmpty) {
      return this;
    }
    return copyWith(
      inlineKeyboard: [...inlineKeyboard, <InlineKeyboardButton>[]],
    );
  }

  /// Adds an [InlineKeyboardButton] to the current row.
  ///
  /// If no rows exist, creates the first row.
  ///
  /// Example:
  /// ```dart
  /// final button = InlineKeyboardButton(text: "Custom", callbackData: "custom");
  /// final keyboard = InlineKeyboard().add(button);
  /// ```
  InlineKeyboard add(InlineKeyboardButton button) {
    final newKeyboard = inlineKeyboard.isEmpty
        ? [<InlineKeyboardButton>[]]
        : [...inlineKeyboard];
    newKeyboard.last.add(button);
    return copyWith(inlineKeyboard: newKeyboard);
  }

  /// Adds multiple buttons to the current row.
  ///
  /// Example:
  /// ```dart
  /// final buttons = [
  ///   InlineKeyboardButton(text: "A", callbackData: "a"),
  ///   InlineKeyboardButton(text: "B", callbackData: "b"),
  /// ];
  /// final keyboard = InlineKeyboard().addAll(buttons);
  /// ```
  InlineKeyboard addAll(List<InlineKeyboardButton> buttons) {
    final newKeyboard = inlineKeyboard.isEmpty
        ? [<InlineKeyboardButton>[]]
        : [...inlineKeyboard];
    newKeyboard.last.addAll(buttons);
    return copyWith(inlineKeyboard: newKeyboard);
  }

  /// Adds a row of buttons to the keyboard.
  ///
  /// This creates a new row regardless of the current state.
  ///
  /// Example:
  /// ```dart
  /// final buttons = [
  ///   InlineKeyboardButton(text: "A", callbackData: "a"),
  ///   InlineKeyboardButton(text: "B", callbackData: "b"),
  /// ];
  /// final keyboard = InlineKeyboard().addRow(buttons);
  /// ```
  InlineKeyboard addRow(List<InlineKeyboardButton> buttons) {
    return copyWith(inlineKeyboard: [...inlineKeyboard, buttons]);
  }

  /// Adds a callback query button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().text("Click me", "clicked");
  /// ```
  InlineKeyboard text(String text, [String? data]) {
    return add(InlineKeyboard.buttonText(text, data));
  }

  /// Adds a URL button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().url("Visit", "https://example.com");
  /// ```
  InlineKeyboard url(String text, String url) {
    return add(InlineKeyboard.buttonUrl(text, url));
  }

  /// Adds a web app button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().webApp("Open App", "https://app.example.com");
  /// ```
  InlineKeyboard webApp(String text, String url) {
    return add(InlineKeyboard.buttonWebApp(text, url));
  }

  /// Adds a login button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().login("Login", "https://auth.example.com");
  /// ```
  InlineKeyboard login(
    String text,
    String url, {
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
  }) {
    return add(
      InlineKeyboard.buttonLogin(
        text,
        url,
        forwardText: forwardText,
        botUsername: botUsername,
        requestWriteAccess: requestWriteAccess,
      ),
    );
  }

  /// Adds an inline query button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().switchInline("Share", "check this out");
  /// ```
  InlineKeyboard switchInline(String text, [String query = ""]) {
    return add(InlineKeyboard.buttonSwitchInline(text, query));
  }

  /// Adds an inline query button for current chat to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().switchInlineCurrent("Search", "cats");
  /// ```
  InlineKeyboard switchInlineCurrent(String text, [String query = ""]) {
    return add(InlineKeyboard.buttonSwitchInlineCurrent(text, query));
  }

  /// Adds an inline query button for chosen chat type to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().switchInlineChosen(
  ///   "Share to Group",
  ///   query: "check this out",
  ///   allowGroupChats: true,
  /// );
  /// ```
  InlineKeyboard switchInlineChosen(
    String text, {
    String query = "",
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
  }) {
    return add(
      InlineKeyboard.buttonSwitchInlineChosen(
        text,
        query: query,
        allowUserChats: allowUserChats,
        allowBotChats: allowBotChats,
        allowGroupChats: allowGroupChats,
        allowChannelChats: allowChannelChats,
      ),
    );
  }

  /// Adds a callback game button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().game("Play Game");
  /// ```
  InlineKeyboard game(String text, {CallbackGame? game}) {
    return add(InlineKeyboard.buttonGame(text, game: game));
  }

  /// Adds a pay button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().pay("Pay Now");
  /// ```
  InlineKeyboard pay(String text, {bool pay = true}) {
    return add(InlineKeyboard.buttonPay(text, pay: pay));
  }

  /// Adds a copy text button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard().copyText("Copy", copyText: "ABC123");
  /// ```
  InlineKeyboard copyText(String text, {required String copyText}) {
    return add(InlineKeyboard.buttonCopyText(text, copyText: copyText));
  }

  // Utility methods

  /// Returns true if the keyboard has no buttons.
  bool get isEmpty =>
      inlineKeyboard.isEmpty || inlineKeyboard.every((row) => row.isEmpty);

  /// Returns true if the keyboard has buttons.
  bool get isNotEmpty => !isEmpty;

  /// Returns the total number of buttons in the keyboard.
  int get buttonCount => inlineKeyboard.fold(0, (sum, row) => sum + row.length);

  /// Returns the number of rows in the keyboard.
  int get rowCount => inlineKeyboard.length;

  /// Creates a new keyboard with the rows and columns transposed.
  ///
  /// This flips the keyboard layout, turning rows into columns and vice versa.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = InlineKeyboard.from([
  ///   [["A", "a"], ["B", "b"]],
  ///   [["C", "c"], ["D", "d"]]
  /// ]).transpose(); // Results in [["A", "C"], ["B", "D"]]
  /// ```
  InlineKeyboard transpose() {
    if (isEmpty) return this;

    final maxCols =
        inlineKeyboard.map((row) => row.length).reduce((a, b) => a > b ? a : b);
    final transposed = <List<InlineKeyboardButton>>[];

    for (int col = 0; col < maxCols; col++) {
      final newRow = <InlineKeyboardButton>[];
      for (int row = 0; row < inlineKeyboard.length; row++) {
        if (col < inlineKeyboard[row].length) {
          newRow.add(inlineKeyboard[row][col]);
        }
      }
      if (newRow.isNotEmpty) {
        transposed.add(newRow);
      }
    }

    return copyWith(inlineKeyboard: transposed);
  }

  /// Converts the InlineKeyboard to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'inline_keyboard': inlineKeyboard
          .map((row) => row.map((button) => button.toJson()).toList())
          .toList(),
    };
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('InlineKeyboard(');
    buffer.writeln('  rows: ${inlineKeyboard.length},');
    buffer.writeln('  buttons: $buttonCount,');
    buffer.write(')');
    return buffer.toString();
  }
}
