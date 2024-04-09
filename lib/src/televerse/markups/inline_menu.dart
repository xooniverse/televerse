part of '../../../televerse.dart';

/// This object represents a Keyboard with callback data.
class _InlineMenuCallbackDataButton extends _TMenuButton {
  final String data;

  const _InlineMenuCallbackDataButton(
    super.text,
    this.data,
    Handler handler,
  ) : super(hasHandler: true, handler: handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'callback_data': data,
    };
  }

  @override
  String getData() {
    return data;
  }
}

class _InlineMenuUrlButton extends _TMenuButton {
  final String url;
  const _InlineMenuUrlButton(super.text, this.url);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'url': url,
    };
  }
}

class _InlineMenuWebAppButton extends _TMenuButton {
  final String url;
  const _InlineMenuWebAppButton(super.text, this.url);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'web_app': WebAppInfo(
        url: url,
      ).toJson(),
    };
  }
}

class _InlineMenuLoginButton extends _TMenuButton {
  final String url;
  final String? forwardText;
  final String? botUsername;
  final bool? requestWriteAccess;

  const _InlineMenuLoginButton(
    super.text,
    this.url, {
    this.forwardText,
    this.botUsername,
    this.requestWriteAccess,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'login_url': LoginURL(
        url: url,
        forwardText: forwardText,
        botUsername: botUsername,
        requestWriteAccess: requestWriteAccess,
      ).toJson(),
    };
  }
}

class _InlineMenuSwitchInlineQueryButton extends _TMenuButton {
  final String query;
  const _InlineMenuSwitchInlineQueryButton(super.text, this.query);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'switch_inline_query': query,
    };
  }
}

class _InlineMenuSwitchInlineQueryCurrentChatButton extends _TMenuButton {
  final String query;
  const _InlineMenuSwitchInlineQueryCurrentChatButton(super.text, this.query);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'switch_inline_query_current_chat': query,
    };
  }
}

class _InlineMenuSwitchInlineQueryChosenChatButton extends _TMenuButton {
  final SwitchInlineQueryChosenChat switchInlineQueryChosenChat;
  const _InlineMenuSwitchInlineQueryChosenChatButton(
    super.text,
    this.switchInlineQueryChosenChat,
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'switch_inline_query_chosen_chat': switchInlineQueryChosenChat.toJson(),
    };
  }
}

class _InlineMenuCallbackGameButton extends _TMenuButton {
  final CallbackGame callbackGame;
  const _InlineMenuCallbackGameButton(super.text, this.callbackGame);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'callback_game': callbackGame.toJson(),
    };
  }
}

class _InlineMenuPayButton extends _TMenuButton {
  const _InlineMenuPayButton(super.text);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'pay': true,
    };
  }
}

/// This object represents a Inline Keyboard with the action to be done.
class InlineMenu implements InlineKeyboardMarkup, TeleverseMenu {
  /// Name of the menu
  @override
  final String name;

  /// Map that represents the text and action to be done
  final List<List<_TMenuButton>> _buttons;

  /// Constructs a InlineMenu
  ///
  /// The `InlineMenu` represents a `Inline Keyboard` with the action to be done.
  ///
  /// The `actions` parameter is a list of rows, each row is a map of `InlineMenuData` and `Handler`. The `InlineMenuData` represents the text and the data to be sent to the bot when the button is pressed. The `Handler` is the function to be executed when the button is pressed.
  /// The `name` parameter is the name of the menu.
  ///
  /// Example:
  ///
  /// ```dart
  /// Future<void> answer(Context ctx, String text) async {
  ///   final callbackQuery = ctx.callbackQuery!;
  ///   await ctx.api.answerCallbackQuery(
  ///     callbackQuery.id,
  ///     text: "Hello!",
  ///   );
  /// }
  ///
  /// final menu = InlineMenu()
  ///   ..text('Hello', (ctx) => answer(ctx, 'Hello!'))
  ///   ..row()
  ///   ..text('World', (ctx) => answer(ctx, 'World!'));
  /// ```
  ///
  /// ## Attach & Use
  /// Now you can attach the menu to the bot and you can use it as a reply markup.
  ///
  /// ```dart
  /// bot.attachMenu(menu);
  ///
  /// bot.start((ctx) async {
  ///  await ctx.api.sendMessage(ctx.id, 'Choose an option', replyMarkup: menu);
  /// });
  /// ```
  InlineMenu({
    String? name,
  })  : _buttons = [],
        inlineKeyboard = [],
        name = name ?? _getRandomID();

  /// Add a new row to the keyboard
  InlineMenu row() {
    if (_buttons.last.isEmpty) return this;
    _buttons.add([]);
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add new item to the last row
  InlineMenu text(
    String text,
    Handler handler, {
    required String data,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _InlineMenuCallbackDataButton(
        text,
        data,
        handler,
      ),
    );
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a URL button to the last row
  InlineMenu url(
    String text,
    String url,
  ) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_InlineMenuUrlButton(text, url));
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Web App button to the last row
  InlineMenu webApp(
    String text,
    String url,
  ) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_InlineMenuWebAppButton(text, url));
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Login button to the last row
  InlineMenu login(
    String text,
    String url, {
    String? forwardText,
    String? botUsername,
    bool? requestWriteAccess,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _InlineMenuLoginButton(
        text,
        url,
        forwardText: forwardText,
        botUsername: botUsername,
        requestWriteAccess: requestWriteAccess,
      ),
    );
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Switch Inline Query button to the last row
  InlineMenu switchInlineQuery(String text, String query) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _InlineMenuSwitchInlineQueryButton(
        text,
        query,
      ),
    );
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Switch Inline Query Current Chat button to the last row
  InlineMenu switchInlineQueryCurrentChat(String text, String query) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _InlineMenuSwitchInlineQueryCurrentChatButton(
        text,
        query,
      ),
    );
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Switch Inline Query Chosen Chat button to the last row
  InlineMenu switchInlineQueryChosenChat(
    String text,
    SwitchInlineQueryChosenChat switchInlineQueryChosenChat,
  ) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _InlineMenuSwitchInlineQueryChosenChatButton(
        text,
        switchInlineQueryChosenChat,
      ),
    );
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Callback Game button to the last row
  InlineMenu callbackGame(String text, CallbackGame game) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_InlineMenuCallbackGameButton(text, game));
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// Add a Pay button to the last row
  InlineMenu pay(String text) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_InlineMenuPayButton(text));
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(_buttons);
    return this;
  }

  /// List of rows of the keyboard
  @override
  List<List<InlineKeyboardButton>> inlineKeyboard;

  /// Converts the object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'inline_keyboard': inlineKeyboard.map((row) {
        return row.map((button) {
          return button.toJson();
        }).toList();
      }).toList(),
    }..removeWhere(_nullFilter);
  }
}
