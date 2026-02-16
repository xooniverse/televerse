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
  const InlineKeyboard._();

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

  /// Creates an inline keyboard from a 2D array of (text, callbackData) records.
  factory InlineKeyboard.from(List<List<(String, String)>> source) {
    final buttons = source.map((row) {
      return row.map((pair) {
        return InlineKeyboardButton(text: pair.$1, callbackData: pair.$2);
      }).toList();
    }).toList();
    return InlineKeyboard(inlineKeyboard: buttons);
  }

  /// Creates an inline keyboard from a 2D array of [InlineKeyboardButton] objects.
  factory InlineKeyboard.fromButtons(List<List<InlineKeyboardButton>> buttons) {
    return InlineKeyboard(inlineKeyboard: buttons);
  }

  /// Creates a single-column inline keyboard from label-data pairs.
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

  // Static factory methods for creating individual buttons

  /// Creates a callback query button.
  static InlineKeyboardButton buttonText(String text, [String? data]) {
    return InlineKeyboardButton(text: text, callbackData: data ?? text);
  }

  /// Creates a URL button.
  static InlineKeyboardButton buttonUrl(String text, String url) {
    return InlineKeyboardButton(text: text, url: url);
  }

  /// Creates a web app button.
  static InlineKeyboardButton buttonWebApp(String text, String url) {
    return InlineKeyboardButton(
      text: text,
      webApp: WebAppInfo(url: url),
    );
  }

  /// Creates a login button.
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
  static InlineKeyboardButton buttonSwitchInline(
    String text, [
    String query = "",
  ]) {
    return InlineKeyboardButton(text: text, switchInlineQuery: query);
  }

  /// Creates an inline query button for the current chat.
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
  static InlineKeyboardButton buttonGame(String text, {CallbackGame? game}) {
    return InlineKeyboardButton(
      text: text,
      callbackGame: game ?? const CallbackGame(),
    );
  }

  /// Creates a pay button.
  static InlineKeyboardButton buttonPay(String text, {bool pay = true}) {
    return InlineKeyboardButton(text: text, pay: pay);
  }

  /// Creates a copy text button.
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
  InlineKeyboard row() {
    if (inlineKeyboard.isEmpty || inlineKeyboard.last.isEmpty) {
      return this;
    }
    return copyWith(
      inlineKeyboard: [...inlineKeyboard, <InlineKeyboardButton>[]],
    );
  }

  /// Adds an [InlineKeyboardButton] to the current row.
  InlineKeyboard add(InlineKeyboardButton button) {
    if (inlineKeyboard.isEmpty) {
      return copyWith(
        inlineKeyboard: [
          [button],
        ],
      );
    }

    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [...newKeyboard.last, button];
    return copyWith(inlineKeyboard: newKeyboard);
  }

  /// Adds multiple buttons to the current row.
  InlineKeyboard addAll(List<InlineKeyboardButton> buttons) {
    if (buttons.isEmpty) return this;

    if (inlineKeyboard.isEmpty) {
      return copyWith(inlineKeyboard: [buttons]);
    }

    final newKeyboard = [...inlineKeyboard];
    newKeyboard.last = [...newKeyboard.last, ...buttons];
    return copyWith(inlineKeyboard: newKeyboard);
  }

  /// Adds a row of buttons to the keyboard.
  InlineKeyboard addRow(List<InlineKeyboardButton> buttons) {
    return copyWith(inlineKeyboard: [...inlineKeyboard, buttons]);
  }

  /// Adds a callback query button to the current row.
  InlineKeyboard text(
    String text,
    String data, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        callbackData: data,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds a URL button to the current row.
  InlineKeyboard url(
    String text,
    String url, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        url: url,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds a web app button to the current row.
  InlineKeyboard webApp(
    String text,
    String url, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        webApp: WebAppInfo(url: url),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds a login button to the current row.
  InlineKeyboard login(
    String text,
    String url, {
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        loginUrl: LoginURL(
          url: url,
          forwardText: forwardText,
          botUsername: botUsername,
          requestWriteAccess: requestWriteAccess,
        ),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds an inline query button to the current row.
  InlineKeyboard switchInline(
    String text, {
    String query = "",
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        switchInlineQuery: query,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds an inline query button for current chat to the current row.
  InlineKeyboard switchInlineCurrentChat(
    String text, {
    String query = "",
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        switchInlineQueryCurrentChat: query,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds an inline query button for chosen chat type to the current row.
  InlineKeyboard switchInlineChosen(
    String text, {
    String query = "",
    bool? allowUserChats,
    bool? allowBotChats,
    bool? allowGroupChats,
    bool? allowChannelChats,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        switchInlineQueryChosenChat: SwitchInlineQueryChosenChat(
          query: query,
          allowUserChats: allowUserChats,
          allowBotChats: allowBotChats,
          allowGroupChats: allowGroupChats,
          allowChannelChats: allowChannelChats,
        ),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds a callback game button to the current row.
  InlineKeyboard game(
    String text, {
    CallbackGame? game,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        callbackGame: game ?? const CallbackGame(),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds a pay button to the current row.
  InlineKeyboard pay(
    String text, {
    bool pay = true,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        pay: pay,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
  }

  /// Adds a copy text button to the current row.
  InlineKeyboard copyText(
    String text, {
    required String copyText,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    return add(
      InlineKeyboardButton(
        text: text,
        copyText: CopyTextButton(text: copyText),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
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
  InlineKeyboard transpose() {
    if (isEmpty) return this;

    final maxCols = inlineKeyboard
        .map((row) => row.length)
        .reduce((a, b) => a > b ? a : b);
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

  /// Runtime type
  @override
  String get $type => runtimeType.toString();
}
