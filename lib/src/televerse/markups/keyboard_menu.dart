part of '../../../televerse.dart';

class _KeyboardMenuTextButton<CTX extends Context> extends _TMenuButton<CTX> {
  const _KeyboardMenuTextButton(
    super.text,
    Handler<CTX> handler, {
    super.options,
  }) : super(hasHandler: true, handler: handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
    };
  }
}

class _KeyboardMenuRequestUsersButton<CTX extends Context>
    extends _TMenuButton<CTX> {
  final KeyboardButtonRequestUsers requestUsers;

  const _KeyboardMenuRequestUsersButton(
    super.text,
    this.requestUsers,
    Handler<CTX> handler, {
    super.options,
  }) : super(hasHandler: true, handler: handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      "request_users": requestUsers.toJson(),
    };
  }
}

class _KeyboardMenuRequestChatButton<CTX extends Context>
    extends _TMenuButton<CTX> {
  final KeyboardButtonRequestChat requestChat;

  const _KeyboardMenuRequestChatButton(
    super.text,
    this.requestChat,
    Handler<CTX> handler, {
    super.options,
  }) : super(hasHandler: true, handler: handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      "request_chat": requestChat.toJson(),
    };
  }
}

class _KeyboardMenuRequestContactButton<CTX extends Context>
    extends _TMenuButton<CTX> {
  const _KeyboardMenuRequestContactButton(
    super.text,
    Handler<CTX> handler, {
    super.options,
  }) : super(hasHandler: true, handler: handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'request_contact': true,
    };
  }
}

class _KeyboardMenuRequestLocationButton<CTX extends Context>
    extends _TMenuButton<CTX> {
  const _KeyboardMenuRequestLocationButton(
    super.text,
    Handler<CTX> handler, {
    super.options,
  }) : super(hasHandler: true, handler: handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'request_location': true,
    };
  }
}

class _KeyboardMenuRequestPollButton<CTX extends Context>
    extends _TMenuButton<CTX> {
  final KeyboardButtonPollType requestPoll;

  const _KeyboardMenuRequestPollButton(
    super.text,
    this.requestPoll, {
    super.options,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      "request_poll": requestPoll.toJson(),
    };
  }
}

class _KeyboardMenuWebAppButton<CTX extends Context> extends _TMenuButton<CTX> {
  final String url;

  const _KeyboardMenuWebAppButton(
    super.text,
    this.url,
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'web_app': {
        "url": url,
      },
    };
  }
}

/// This object represents a Keyboard menu with the actions to be done.
class KeyboardMenu<CTX extends Context>
    implements ReplyKeyboardMarkup, TeleverseMenu<CTX> {
  /// Name of the menu
  @override
  String name;

  /// Map that represents the text and action to be done
  final List<List<_TMenuButton<CTX>>> _buttons;

  /// Constructs a KeyboardMenu
  ///
  /// The `KeyboardMenu` represents a keyboard with the actions to be performed.
  ///
  /// The `actions` parameter is a list of rows, where each row is a map of `String` and `Handler`. The `key` (String) will be the text that is shown to the user as button text. The `Handler` is the function to be executed when the button is pressed.
  /// The `name` parameter is the name of the menu.
  ///
  /// See also:
  /// - [Handler]
  ///
  /// Check out our example for more information >> [keyboard_menu_bot.dart](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/keyboard_menu_bot.dart)
  KeyboardMenu({
    String? name,
    this.inputFieldPlaceholder,
    this.isPersistent,
    this.oneTimeKeyboard,
    this.resizeKeyboard,
    this.selective,
  })  : _buttons = [[]],
        keyboard = [[]],
        name = name ?? _getRandomID();

  /// Add a new row to the keyboard
  KeyboardMenu<CTX> row() {
    if (_buttons.last.isEmpty) return this;
    _buttons.add([]);
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Add new item to the last row
  KeyboardMenu<CTX> text(
    String text,
    Handler<CTX> handler, {
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuTextButton<CTX>(
        text,
        handler,
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Request contact from the user
  KeyboardMenu<CTX> requestContact(
    String text,
    Handler<CTX> handler, {
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestContactButton<CTX>(
        text,
        handler,
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Request location from the user
  KeyboardMenu<CTX> requestLocation(
    String text,
    Handler<CTX> handler, {
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestLocationButton<CTX>(
        text,
        handler,
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Request the user to select a user from the list
  KeyboardMenu<CTX> requestUser({
    required String text,
    required Handler<CTX> handler,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestUsersButton<CTX>(
        text,
        KeyboardButtonRequestUsers(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
          maxQuantity: 1,
        ),
        handler,
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Request the user to select multiple users from the list
  KeyboardMenu<CTX> requestUsers({
    required String text,
    required Handler<CTX> handler,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
    int? maxQuantity,
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestUsersButton<CTX>(
        text,
        KeyboardButtonRequestUsers(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
          maxQuantity: maxQuantity,
        ),
        handler,
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Requests the user to select a chat from the list.
  KeyboardMenu<CTX> requestChat({
    required String text,
    required Handler<CTX> handler,
    required int requestId,
    bool chatIsChannel = false,
    bool? chatIsForum,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestChatButton<CTX>(
        text,
        KeyboardButtonRequestChat(
          requestId: requestId,
          chatIsChannel: chatIsChannel,
          chatIsForum: chatIsForum,
          chatHasUsername: chatHasUsername,
          chatIsCreated: chatIsCreated,
          userAdministratorRights: userAdministratorRights,
          botAdministratorRights: botAdministratorRights,
          botIsMember: botIsMember,
        ),
        handler,
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Add a web app button to the last row
  KeyboardMenu<CTX> webApp(String text, String url) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_KeyboardMenuWebAppButton<CTX>(text, url));
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// Add a poll button to the last row
  KeyboardMenu<CTX> requestPoll(
    String text, {
    PollType? type,
    ScopeOptions<CTX>? options,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestPollButton<CTX>(
        text,
        KeyboardButtonPollType(type: type),
        options: options,
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard<CTX>(_buttons);
    return this;
  }

  /// List of rows of the keyboard
  @override
  List<List<KeyboardButton>> keyboard;

  /// Converts the object to a JSON object
  @override
  Map<String, dynamic> toJson() {
    return {
      'keyboard': keyboard.map((row) {
        return row.map((button) {
          return button.toJson();
        }).toList();
      }).toList(),
      'input_field_placeholder': inputFieldPlaceholder,
      'is_persistent': isPersistent,
      'one_time_keyboard': oneTimeKeyboard,
      'resize_keyboard': resizeKeyboard,
      'selective': selective,
    }..removeWhere(_nullFilter);
  }

  /// Optional. The placeholder to be shown in the input field when the keyboard is active; 1-64 characters
  @override
  String? inputFieldPlaceholder;

  /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden. Defaults to false, in which case the custom keyboard can be hidden and opened with a keyboard icon.
  @override
  bool? isPersistent;

  /// Optional. Requests clients to hide the keyboard as soon as it's been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to false.
  @override
  bool? oneTimeKeyboard;

  /// Optional. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app's standard keyboard.
  @override
  bool? resizeKeyboard;

  /// Optional. Use this parameter if you want to show the keyboard to specific users only.
  /// Targets:
  ///   1) users that are @mentioned in the text of the [Message] object;
  ///   2) if the bot's message is a reply (has [Message.replyToMessage]), sender of the original message.Example: A user requests to change the bot‘s language, bot replies to the request with a keyboard to select the new language. Other users in the group don’t see the keyboard.
  @override
  bool? selective;

  /// Makes the menu resized
  KeyboardMenu<CTX> resized() {
    resizeKeyboard = true;
    return this;
  }

  /// Makes the menu persistent
  KeyboardMenu<CTX> persistent() {
    isPersistent = true;
    return this;
  }

  /// Makes the menu one time
  KeyboardMenu<CTX> oneTime() {
    oneTimeKeyboard = true;
    return this;
  }

  /// Makes the menu selective
  KeyboardMenu<CTX> makeSelective() {
    selective = true;
    return this;
  }

  @override
  String get $type => runtimeType.toString();
}
