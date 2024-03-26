part of '../../../televerse.dart';

class _KeyboardMenuTextButton<TS extends Session> extends _TMenuButton<TS> {
  const _KeyboardMenuTextButton(
    super.text,
    Handler<TS> handler,
  ) : super(hasHandler: true, handler: handler as Handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
    };
  }
}

class _KeyboardMenuRequestUsersButton<TS extends Session>
    extends _TMenuButton<TS> {
  final KeyboardButtonRequestUsers requestUsers;

  const _KeyboardMenuRequestUsersButton(
    super.text,
    this.requestUsers,
  ) : super(hasHandler: true);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      ...requestUsers.toJson(),
    };
  }
}

class _KeyboardMenuRequestChatButton<TS extends Session>
    extends _TMenuButton<TS> {
  final KeyboardButtonRequestChat requestChat;

  const _KeyboardMenuRequestChatButton(
    super.text,
    this.requestChat,
    Handler<TS> handler,
  ) : super(hasHandler: true, handler: handler as Handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      ...requestChat.toJson(),
    };
  }
}

class _KeyboardMenuRequestContactButton<TS extends Session>
    extends _TMenuButton<TS> {
  const _KeyboardMenuRequestContactButton(
    super.text,
    Handler<TS> handler,
  ) : super(hasHandler: true, handler: handler as Handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'request_contact': true,
    };
  }
}

class _KeyboardMenuRequestLocationButton<TS extends Session>
    extends _TMenuButton<TS> {
  const _KeyboardMenuRequestLocationButton(
    super.text,
    Handler<TS> handler,
  ) : super(hasHandler: true, handler: handler as Handler);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'request_location': true,
    };
  }
}

class _KeyboardMenuRequestPollButton<TS extends Session>
    extends _TMenuButton<TS> {
  final KeyboardButtonPollType requestPoll;

  const _KeyboardMenuRequestPollButton(
    super.text,
    this.requestPoll,
  ) : super(hasHandler: true);

  @override
  Map<String, dynamic> toJson() {
    return {
      'text': text,
      ...requestPoll.toJson(),
    };
  }
}

class _KeyboardMenuWebAppButton<TS extends Session> extends _TMenuButton<TS> {
  final String url;

  const _KeyboardMenuWebAppButton(
    super.text,
    this.url,
  );

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

/// This object represents a Keyboard menu with the actions to be done.
class KeyboardMenu<TeleverseSession extends Session>
    implements ReplyKeyboardMarkup, TeleverseMenu<TeleverseSession> {
  /// Name of the menu
  @override
  String name;

  /// Map that represents the text and action to be done
  final List<List<_TMenuButton<TeleverseSession>>> _buttons;

  /// Constructs a KeyboardMenu
  ///
  /// The `KeyboardMenu` represents a keyboard with the actions to be performed.
  ///
  /// The `actions` parameter is a list of rows, where each row is a map of `String` and `Handler`. The `key` (String) will be the text that is shown to the user as button text. The `Handler` is the function to be executed when the button is pressed.
  /// The `name` parameter is the name of the menu.
  ///
  /// If you are using Televerse with sessions, you can specify the type of the session in the `TeleverseSession` generic. In this case, the `Handler` will be `Handler<TeleverseSession>`, allowing you to access the session in the handler.
  ///
  /// See also:
  /// - [Handler]
  /// - [Session]
  ///
  /// Check out our example for more information >> [keyboard_menu_bot.dart](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/keyboard_menu_bot.dart)
  KeyboardMenu({
    String? name,
    this.inputFieldPlaceholder,
    this.isPersistent,
    this.oneTimeKeyboard,
    this.resizeKeyboard,
    this.selective,
  })  : _buttons = [],
        keyboard = [[]],
        name = name ?? _getRandomID();

  /// Add a new row to the keyboard
  KeyboardMenu row() {
    if (_buttons.last.isEmpty) return this;
    _buttons.add([]);
    keyboard = TeleverseMenu._makeKeyboard<TeleverseSession>(_buttons);
    return this;
  }

  /// Add new item to the last row
  KeyboardMenu text(String text, Handler handler) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_KeyboardMenuTextButton(text, handler));
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Request contact from the user
  KeyboardMenu requestContact(String text, Handler handler) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_KeyboardMenuRequestContactButton(text, handler));
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Request location from the user
  KeyboardMenu requestLocation(String text, Handler handler) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_KeyboardMenuRequestLocationButton(text, handler));
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Request the user to select a user from the list
  KeyboardMenu requestUser({
    required String text,
    required Handler handler,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestUsersButton(
        text,
        KeyboardButtonRequestUsers(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
          maxQuantity: 1,
        ),
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Request the user to select multiple users from the list
  KeyboardMenu requestUsers({
    required String text,
    required Handler handler,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
    int? maxQuantity,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestUsersButton(
        text,
        KeyboardButtonRequestUsers(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
          maxQuantity: maxQuantity,
        ),
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Requests the user to select a chat from the list.
  KeyboardMenu requestChat({
    required String text,
    required Handler handler,
    required int requestId,
    bool chatIsChannel = false,
    bool? chatIsForum,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
  }) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(
      _KeyboardMenuRequestChatButton(
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
      ),
    );
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Add a web app button to the last row
  KeyboardMenu webApp(String text, String url) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_KeyboardMenuWebAppButton(text, url));
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
    return this;
  }

  /// Add a poll button to the last row
  KeyboardMenu requestPoll(String text, KeyboardButtonPollType requestPoll) {
    if (_buttons.isEmpty) _buttons.add([]);
    _buttons.last.add(_KeyboardMenuRequestPollButton(text, requestPoll));
    keyboard = TeleverseMenu._makeKeyboard(_buttons);
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
    }..removeWhere((key, value) => value == null);
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
  KeyboardMenu resized() {
    resizeKeyboard = true;
    return this;
  }

  /// Makes the menu persistent
  KeyboardMenu persistent() {
    isPersistent = true;
    return this;
  }

  /// Makes the menu one time
  KeyboardMenu oneTime() {
    oneTimeKeyboard = true;
    return this;
  }

  /// Makes the menu selective
  KeyboardMenu makeSelective() {
    selective = true;
    return this;
  }
}
