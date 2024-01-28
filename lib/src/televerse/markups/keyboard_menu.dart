part of '../../../televerse.dart';

/// This object represents a Keyboard menu with the actions to be done.
class KeyboardMenu<TeleverseSession extends Session>
    implements ReplyKeyboardMarkup, TeleverseMenu<TeleverseSession, String> {
  /// Name of the menu
  @override
  String name;

  /// Map that represents the text and action to be done
  @override
  List<Map<String, Handler<TeleverseSession>>> actions;

  /// Constructs a KeyboardMenu
  ///
  /// The `KeyboardMenu` represents a keyboard with the actions to be performed.
  ///
  /// The `actions` parameter is a list of rows, where each row is a map of `String` and `Handler`. The `key` (String) will be the text that is shown to the user as button text. The `Handler` is the function to be executed when the button is pressed.
  /// The `name` parameter is the name of the menu.
  ///
  /// If you are using Televerse with sessions, you can specify the type of the session in the `TeleverseSession` generic. In this case, the `Handler` will be `Handler<TeleverseSession>`, allowing you to access the session in the handler.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = KeyboardMenu(
  ///   name: 'exampleMenu',
  ///   actions: [
  ///     {'Button 1': handleButton1},
  ///     {'Button 2': handleButton2},
  ///   ],
  /// );
  /// ```
  ///
  /// In this example, pressing 'Button 1' will trigger the `handleButton1` function, and pressing 'Button 2' will trigger the `handleButton2` function.
  ///
  ///
  /// Usage:
  /// ```dart
  /// final keyboard = KeyboardMenu(
  ///   name: 'exampleMenu',
  ///   actions: [
  ///     {'Button 1': handleButton1},
  ///     {'Button 2': handleButton2},
  ///   ],
  /// );
  /// ```
  /// Where `handleButton1` and `handleButton2` are functions to be executed on button press.
  ///
  /// See also:
  /// - [Handler]
  /// - [Session]
  ///
  /// Note: Ensure that the `actions` list is properly formatted with corresponding handlers for each button.
  /// If using sessions, make sure to specify the session type in the `TeleverseSession` generic.
  ///
  /// Check out our example for more information >> [keyboard_menu_bot.dart](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/keyboard_menu_bot.dart)
  KeyboardMenu({
    String? name,
    this.inputFieldPlaceholder,
    this.isPersistent,
    this.oneTimeKeyboard,
    this.resizeKeyboard,
    this.selective,
  })  : actions = [{}],
        keyboard = [[]],
        name = name ?? _getRandomID();

  /// Add a new row to the keyboard
  KeyboardMenu row() {
    if (actions.last.isEmpty) return this;
    actions.add({});
    keyboard = TeleverseMenu._makeKeyboard<TeleverseSession>(actions);
    return this;
  }

  /// Add new item to the last row
  KeyboardMenu text(String text, Handler handler) {
    if (actions.isEmpty) actions.add({});
    final data = jsonEncode({'type': 'text', 'text': text});
    actions.last.addAll({data: handler});
    keyboard = TeleverseMenu._makeKeyboard(actions);
    return this;
  }

  /// Request contact from the user
  KeyboardMenu requestContact(String text, Handler handler) {
    if (actions.isEmpty) actions.add({});
    String data = jsonEncode({'type': 'request_contact', 'text': text});
    actions.last.addAll({data: handler});
    keyboard = TeleverseMenu._makeKeyboard(actions);
    return this;
  }

  /// Request location from the user
  KeyboardMenu requestLocation(String text, Handler handler) {
    if (actions.isEmpty) actions.add({});
    String data = jsonEncode({'type': 'request_location', 'text': text});
    actions.last.addAll({data: handler});
    keyboard = TeleverseMenu._makeKeyboard(actions);
    return this;
  }

  /// Request the user to select a user from the list
  KeyboardMenu requestUser({
    required String text,
    required Handler handler,
    required int requestId,
    bool? isBot,
    bool? userIsPremium,
  }) {
    final data = jsonEncode({
      'type': 'request_user',
      'text': text,
      'request_id': requestId,
      'is_bot': isBot,
      'user_is_premium': userIsPremium,
    });
    if (actions.isEmpty) actions.add({});
    actions.last.addAll({
      data: handler,
    });
    keyboard = TeleverseMenu._makeKeyboard(actions);
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
    final data = jsonEncode({
      'type': 'request_chat',
      'text': text,
      'request_id': requestId,
      'chat_is_channel': chatIsChannel,
      'chat_is_forum': chatIsForum,
      'chat_has_username': chatHasUsername,
      'chat_is_created': chatIsCreated,
      'user_administrator_rights': userAdministratorRights?.toJson(),
      'bot_administrator_rights': botAdministratorRights?.toJson(),
      'bot_is_member': botIsMember,
    });
    if (actions.isEmpty) actions.add({});
    actions.last.addAll({
      data: handler,
    });
    keyboard = TeleverseMenu._makeKeyboard(actions);
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
