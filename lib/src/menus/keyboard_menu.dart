// File: lib/src/menus/keyboard_menu.dart
part of '../../televerse.dart';

/// A menu button for reply keyboards with an associated handler.
class _KeyboardMenuButton<CTX extends Context> {
  /// The text displayed on the button.
  final String text;

  /// The handler function to execute when the button is pressed.
  final MenuHandler<CTX> handler;

  /// The keyboard button data.
  final KeyboardButton button;

  /// Creates a new keyboard menu button.
  const _KeyboardMenuButton({
    required this.text,
    required this.handler,
    required this.button,
  });
}

/// A static keyboard button without a handler.
class _KeyboardMenuStaticButton<CTX extends Context> {
  /// The keyboard button data.
  final KeyboardButton button;

  /// Creates a new static keyboard button.
  const _KeyboardMenuStaticButton(this.button);
}

/// Base class for keyboard menu items.
abstract class _KeyboardMenuItem<CTX extends Context> {
  const _KeyboardMenuItem();

  /// Converts this item to a KeyboardButton.
  KeyboardButton toKeyboardButton();
}

/// Keyboard menu item with handler.
class _KeyboardMenuItemWithHandler<CTX extends Context>
    extends _KeyboardMenuItem<CTX> {
  final _KeyboardMenuButton<CTX> button;

  const _KeyboardMenuItemWithHandler(this.button);

  @override
  KeyboardButton toKeyboardButton() => button.button;
}

/// Static keyboard menu item without handler.
class _KeyboardMenuItemStatic<CTX extends Context>
    extends _KeyboardMenuItem<CTX> {
  final _KeyboardMenuStaticButton<CTX> button;

  const _KeyboardMenuItemStatic(this.button);

  @override
  KeyboardButton toKeyboardButton() => button.button;
}

/// A reply keyboard menu with text handlers.
///
/// This class provides a fluent API for building reply keyboards where each
/// button can have an associated handler function. When the menu is attached
/// to a bot, the handlers are automatically registered.
///
/// Example:
/// ```dart
/// final menu = KeyboardMenu<Context>()
///   .text('Hello', (ctx) async {
///     await ctx.reply('You said hello!');
///   })
///   .text('Goodbye', (ctx) async {
///     await ctx.reply('You said goodbye!');
///   }, style: StyleType.danger)
///   .row()
///   .requestContact('Share Contact', (ctx) async {
///     await ctx.reply('Thanks for sharing your contact!');
///   }, iconCustomEmojiId: '5368324170671202286')
///   .resized()
///   .oneTime();
///
/// // Attach to bot
/// bot.attachMenu(menu);
///
/// // Use in message
/// await ctx.reply('Choose an option:', replyMarkup: menu);
/// ```
class KeyboardMenu<CTX extends Context> extends TeleverseMenu<CTX>
    implements ReplyKeyboardMarkup {
  /// The rows of menu items.
  final List<List<_KeyboardMenuItem<CTX>>> _rows = [[]];

  /// Whether to resize the keyboard.
  bool? _resizeKeyboard;

  /// Whether the keyboard is one-time.
  bool? _oneTimeKeyboard;

  /// The input field placeholder.
  String? _inputFieldPlaceholder;

  /// Whether the keyboard is selective.
  bool? _selective;

  /// Whether the keyboard is persistent.
  bool? _isPersistent;

  /// Creates a new keyboard menu.
  ///
  /// Parameters:
  /// - [name]: Optional unique name for the menu
  KeyboardMenu({super.name});

  // ===============================
  // Button Creation Methods
  // ===============================

  /// Adds a text button to the current row.
  KeyboardMenu<CTX> text(
    String text,
    MenuHandler<CTX> handler, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = _KeyboardMenuButton<CTX>(
      text: text,
      handler: handler,
      button: KeyboardButton(
        text: text,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
    _rows.last.add(_KeyboardMenuItemWithHandler(button));
    return this;
  }

  /// Adds a contact request button to the current row.
  KeyboardMenu<CTX> requestContact(
    String text,
    MenuHandler<CTX> handler, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = _KeyboardMenuButton<CTX>(
      text: text,
      handler: handler,
      button: KeyboardButton(
        text: text,
        requestContact: true,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
    _rows.last.add(_KeyboardMenuItemWithHandler(button));
    return this;
  }

  /// Adds a location request button to the current row.
  KeyboardMenu<CTX> requestLocation(
    String text,
    MenuHandler<CTX> handler, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = _KeyboardMenuButton<CTX>(
      text: text,
      handler: handler,
      button: KeyboardButton(
        text: text,
        requestLocation: true,
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
    _rows.last.add(_KeyboardMenuItemWithHandler(button));
    return this;
  }

  /// Adds a user request button to the current row.
  KeyboardMenu<CTX> users(
    String text,
    int requestId,
    MenuHandler<CTX> handler, {
    bool? userIsBot,
    bool? userIsPremium,
    int? maxQuantity,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = _KeyboardMenuButton<CTX>(
      text: text,
      handler: handler,
      button: KeyboardButton(
        text: text,
        requestUsers: KeyboardButtonRequestUsers(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
          maxQuantity: maxQuantity,
        ),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
    _rows.last.add(_KeyboardMenuItemWithHandler(button));
    return this;
  }

  /// Adds a chat request button to the current row.
  KeyboardMenu<CTX> chat(
    String text,
    int requestId,
    MenuHandler<CTX> handler, {
    bool chatIsChannel = false,
    bool? chatIsForum,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = _KeyboardMenuButton<CTX>(
      text: text,
      handler: handler,
      button: KeyboardButton(
        text: text,
        requestChat: KeyboardButtonRequestChat(
          requestId: requestId,
          chatIsChannel: chatIsChannel,
          chatIsForum: chatIsForum,
          chatHasUsername: chatHasUsername,
          chatIsCreated: chatIsCreated,
          userAdministratorRights: userAdministratorRights,
          botAdministratorRights: botAdministratorRights,
          botIsMember: botIsMember,
        ),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
    _rows.last.add(_KeyboardMenuItemWithHandler(button));
    return this;
  }

  /// Adds a poll request button to the current row.
  ///
  /// Parameters:
  /// - [text]: The text to display on the button
  /// - [handler]: The function to execute when poll is created
  /// - [type]: The type of poll to request
  /// - [iconCustomEmojiId]: Optional custom emoji ID shown before the button text
  /// - [style]: Optional button style (danger, success, or primary)
  KeyboardMenu<CTX> poll(
    String text,
    MenuHandler<CTX> handler, {
    PollType? type,
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = _KeyboardMenuButton<CTX>(
      text: text,
      handler: handler,
      button: KeyboardButton(
        text: text,
        requestPoll: KeyboardButtonPollType(type: type),
        iconCustomEmojiId: iconCustomEmojiId,
        style: style,
      ),
    );
    _rows.last.add(_KeyboardMenuItemWithHandler(button));
    return this;
  }

  /// Adds a web app button to the current row.
  KeyboardMenu<CTX> webApp(
    String text,
    String url, {
    String? iconCustomEmojiId,
    StyleType? style,
  }) {
    _ensureCurrentRow();
    final button = KeyboardButton(
      text: text,
      webApp: WebAppInfo(url: url),
      iconCustomEmojiId: iconCustomEmojiId,
      style: style,
    );
    _rows.last.add(_KeyboardMenuItemStatic(_KeyboardMenuStaticButton(button)));
    return this;
  }

  // ===============================
  // Row Management
  // ===============================

  /// Starts a new row.
  ///
  /// If the current row is empty, this method does nothing.
  KeyboardMenu<CTX> row() {
    if (_rows.last.isNotEmpty) {
      _rows.add([]);
    }
    return this;
  }

  // ===============================
  // Configuration Methods
  // ===============================

  /// Makes the keyboard resize to fit optimally.
  KeyboardMenu<CTX> resized([bool resize = true]) {
    _resizeKeyboard = resize;
    return this;
  }

  /// Makes the keyboard appear only once.
  KeyboardMenu<CTX> oneTime([bool oneTime = true]) {
    _oneTimeKeyboard = oneTime;
    return this;
  }

  /// Makes the keyboard persistent.
  KeyboardMenu<CTX> persistent([bool persistent = true]) {
    _isPersistent = persistent;
    return this;
  }

  /// Makes the keyboard selective.
  KeyboardMenu<CTX> makeSelective([bool selective = true]) {
    _selective = selective;
    return this;
  }

  /// Sets the input field placeholder.
  KeyboardMenu<CTX> placeholder(String placeholder) {
    _inputFieldPlaceholder = placeholder;
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
  List<List<KeyboardButton>> get keyboard {
    return _rows
        .where((row) => row.isNotEmpty)
        .map((row) => row.map((item) => item.toKeyboardButton()).toList())
        .toList();
  }

  @override
  bool? get resizeKeyboard => _resizeKeyboard;

  @override
  bool? get oneTimeKeyboard => _oneTimeKeyboard;

  @override
  String? get inputFieldPlaceholder => _inputFieldPlaceholder;

  @override
  bool? get selective => _selective;

  @override
  bool? get isPersistent => _isPersistent;

  @override
  ReplyMarkup toReplyMarkup() => this;

  @override
  void _registerHandlers(Bot<CTX> bot) {
    for (final row in _rows) {
      for (final item in row) {
        if (item is _KeyboardMenuItemWithHandler<CTX>) {
          final button = item.button;

          // Determine the appropriate filter based on button type
          Filter<CTX> filter;

          if (button.button.requestContact == true) {
            filter = ContactFilter<CTX>();
          } else if (button.button.requestLocation == true) {
            filter = LocationFilter<CTX>();
          } else if (button.button.requestUsers != null) {
            filter = UsersSharedFilter<CTX>();
          } else if (button.button.requestChat != null) {
            filter = ChatSharedFilter<CTX>();
          } else if (button.button.requestPoll != null) {
            filter = PollMessageFilter<CTX>();
          } else {
            // Regular text button
            filter = TextFilter<CTX>(text: button.text);
          }

          // Register the handler with the bot
          bot.on(filter, button.handler);
        }
      }
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{
      'keyboard': keyboard
          .map((row) => row.map((button) => button.toJson()).toList())
          .toList(),
    };

    if (_resizeKeyboard != null) result['resize_keyboard'] = _resizeKeyboard;
    if (_oneTimeKeyboard != null) {
      result['one_time_keyboard'] = _oneTimeKeyboard;
    }
    if (_inputFieldPlaceholder != null) {
      result['input_field_placeholder'] = _inputFieldPlaceholder;
    }
    if (_selective != null) result['selective'] = _selective;
    if (_isPersistent != null) result['is_persistent'] = _isPersistent;

    return result;
  }

  @override
  String get $type => 'ReplyKeyboardMarkup';

  @override
  String toString() {
    final buttonCount = _rows.fold(0, (sum, row) => sum + row.length);
    return 'KeyboardMenu(name: $name, rows: ${_rows.length}, buttons: $buttonCount)';
  }
}
