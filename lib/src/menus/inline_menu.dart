// File: lib/src/menus/inline_menu.dart
part of '../../televerse.dart';

/// A menu button for inline keyboards with an associated handler.
class _InlineMenuButton<CTX extends Context> {
  /// The text displayed on the button.
  final String text;

  /// The callback data sent when the button is pressed.
  final String data;

  /// The handler function to execute when the button is pressed.
  final MenuHandler<CTX> handler;

  /// Creates a new inline menu button.
  const _InlineMenuButton({
    required this.text,
    required this.data,
    required this.handler,
  });

  /// Converts this button to an InlineKeyboardButton.
  InlineKeyboardButton toKeyboardButton() {
    return InlineKeyboardButton(
      text: text,
      callbackData: data,
    );
  }
}

/// A special inline menu button without a handler (for URLs, web apps, etc.).
class _InlineMenuStaticButton<CTX extends Context> {
  /// The InlineKeyboardButton to display.
  final InlineKeyboardButton button;

  /// Creates a new static inline menu button.
  const _InlineMenuStaticButton(this.button);
}

/// Base class for inline menu items (can be button with handler or static button).
abstract class _InlineMenuItem<CTX extends Context> {
  const _InlineMenuItem();

  /// Converts this item to an InlineKeyboardButton.
  InlineKeyboardButton toKeyboardButton();
}

/// Inline menu item with handler.
class _InlineMenuItemWithHandler<CTX extends Context>
    extends _InlineMenuItem<CTX> {
  final _InlineMenuButton<CTX> button;

  const _InlineMenuItemWithHandler(this.button);

  @override
  InlineKeyboardButton toKeyboardButton() => button.toKeyboardButton();
}

/// Static inline menu item without handler.
class _InlineMenuItemStatic<CTX extends Context> extends _InlineMenuItem<CTX> {
  final _InlineMenuStaticButton<CTX> button;

  const _InlineMenuItemStatic(this.button);

  @override
  InlineKeyboardButton toKeyboardButton() => button.button;
}

/// An inline keyboard menu with callback handlers.
///
/// This class provides a fluent API for building inline keyboards where each
/// button can have an associated handler function. When the menu is attached
/// to a bot, the handlers are automatically registered.
///
/// Example:
/// ```dart
/// final menu = InlineMenu<Context>()
///   .text('Option 1', 'opt1', (ctx) async {
///     await ctx.answerCallbackQuery(text: 'You chose option 1!');
///   })
///   .text('Option 2', 'opt2', (ctx) async {
///     await ctx.answerCallbackQuery(text: 'You chose option 2!');
///   })
///   .row()
///   .url('Visit Website', 'https://example.com');
///
/// // Attach to bot
/// bot.attachMenu(menu);
///
/// // Use in message
/// await ctx.reply('Choose an option:', replyMarkup: menu);
/// ```
class InlineMenu<CTX extends Context> extends TeleverseMenu<CTX>
    implements InlineKeyboardMarkup {
  /// The rows of menu items.
  final List<List<_InlineMenuItem<CTX>>> _rows = [[]];

  /// Creates a new inline menu.
  ///
  /// Parameters:
  /// - [name]: Optional unique name for the menu
  InlineMenu({super.name});

  // ===============================
  // Button Creation Methods
  // ===============================

  /// Adds a callback button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [data]: The callback data to send (defaults to text if not provided)
  /// - [handler]: The function to execute when the button is pressed
  ///
  /// Example:
  /// ```dart
  /// menu.text('Click me', 'clicked', (ctx) async {
  ///   await ctx.answerCallbackQuery(text: 'Button was clicked!');
  /// });
  /// ```
  InlineMenu<CTX> text(
    String text,
    String data,
    MenuHandler<CTX> handler,
  ) {
    _ensureCurrentRow();
    final button = _InlineMenuButton<CTX>(
      text: text,
      data: data,
      handler: handler,
    );
    _rows.last.add(_InlineMenuItemWithHandler(button));
    return this;
  }

  /// Adds a URL button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [url]: The URL to open when the button is pressed
  ///
  /// Example:
  /// ```dart
  /// menu.url('Visit Website', 'https://example.com');
  /// ```
  InlineMenu<CTX> url(String text, String url) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(text: text, url: url);
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  /// Adds a web app button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [url]: The web app URL to open
  ///
  /// Example:
  /// ```dart
  /// menu.webApp('Open App', 'https://myapp.example.com');
  /// ```
  InlineMenu<CTX> webApp(String text, String url) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(
      text: text,
      webApp: WebAppInfo(url: url),
    );
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  /// Adds a login button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [url]: The login URL
  /// - [forwardText]: Optional text to forward
  /// - [botUsername]: Optional bot username
  /// - [requestWriteAccess]: Whether to request write access
  ///
  /// Example:
  /// ```dart
  /// menu.login('Login', 'https://auth.example.com');
  /// ```
  InlineMenu<CTX> login(
    String text,
    String url, {
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
  }) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(
      text: text,
      loginUrl: LoginURL(
        url: url,
        forwardText: forwardText,
        botUsername: botUsername,
        requestWriteAccess: requestWriteAccess,
      ),
    );
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  /// Adds a switch inline query button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [query]: The inline query to insert
  ///
  /// Example:
  /// ```dart
  /// menu.switchInline('Share', 'check this out');
  /// ```
  InlineMenu<CTX> switchInline(String text, String query) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(
      text: text,
      switchInlineQuery: query,
    );
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  /// Adds a switch inline query current chat button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [query]: The inline query to insert
  ///
  /// Example:
  /// ```dart
  /// menu.switchInlineCurrent('Search here', 'cats');
  /// ```
  InlineMenu<CTX> switchInlineCurrent(String text, String query) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(
      text: text,
      switchInlineQueryCurrentChat: query,
    );
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  /// Adds a game button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [game]: Optional game data
  ///
  /// Example:
  /// ```dart
  /// menu.game('Play Game');
  /// ```
  InlineMenu<CTX> game(String text, {CallbackGame? game}) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(
      text: text,
      callbackGame: game ?? const CallbackGame(),
    );
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  /// Adds a pay button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  ///
  /// Example:
  /// ```dart
  /// menu.pay('Pay Now');
  /// ```
  InlineMenu<CTX> pay(String text) {
    _ensureCurrentRow();
    final button = InlineKeyboardButton(text: text, pay: true);
    _rows.last.add(_InlineMenuItemStatic(_InlineMenuStaticButton(button)));
    return this;
  }

  // ===============================
  // Row Management
  // ===============================

  /// Starts a new row.
  ///
  /// If the current row is empty, this method does nothing.
  ///
  /// Example:
  /// ```dart
  /// menu.text('Button 1', 'btn1', handler1)
  ///     .text('Button 2', 'btn2', handler2)
  ///     .row()  // Start new row
  ///     .text('Button 3', 'btn3', handler3);
  /// ```
  InlineMenu<CTX> row() {
    if (_rows.last.isNotEmpty) {
      _rows.add([]);
    }
    return this;
  }

  // ===============================
  // Helper Methods
  // ===============================

  /// Ensures there's a current row to add buttons to.
  void _ensureCurrentRow() {
    if (_rows.isEmpty) {
      _rows.add([]);
    }
  }

  // ===============================
  // Implementation
  // ===============================

  @override
  List<List<InlineKeyboardButton>> get inlineKeyboard {
    return _rows
        .where((row) => row.isNotEmpty)
        .map((row) => row.map((item) => item.toKeyboardButton()).toList())
        .toList();
  }

  @override
  ReplyMarkup toReplyMarkup() => this;

  @override
  void _registerHandlers(Bot<CTX> bot) {
    for (final row in _rows) {
      for (final item in row) {
        if (item is _InlineMenuItemWithHandler<CTX>) {
          final button = item.button;

          // Register callback query handler for this button
          bot.on(
            CallbackQueryFilter<CTX>(data: button.data),
            button.handler,
          );
        }
      }
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'inline_keyboard': inlineKeyboard
          .map((row) => row.map((button) => button.toJson()).toList())
          .toList(),
    };
  }

  @override
  String get $type => 'InlineKeyboardMarkup';

  @override
  String toString() {
    final buttonCount = _rows.fold(0, (sum, row) => sum + row.length);
    return 'InlineMenu(name: $name, rows: ${_rows.length}, buttons: $buttonCount)';
  }
}
