part of '../../../televerse.dart';

/// The [Keyboard] class can be used to represent a [ReplyKeyboardMarkup]. This is an easy method to show a keyboard to the user.
class Keyboard extends ReplyKeyboardMarkup {
  /// Creates a `Keyboard` object with no buttons. You can add buttons using the [add] method.
  ///
  /// ```dart
  /// // Create a new keyboard.
  /// var keyboard = Keyboard();
  ///
  /// // Add a button with the text "Hello World!".
  /// keyboard.addText("Hello World!");
  ///
  /// // Send the keyboard with the message "Hello World!".
  /// ctx.api.sendMessage(ctx.id, "Hello World!", replyMarkup: keyboard);
  /// ```
  Keyboard() : super(keyboard: [[]]);

  /// Adds a Row of [KeyboardButton] to the keyboard.
  Keyboard addRow(List<KeyboardButton> row) {
    keyboard.add(row);
    return this;
  }

  /// Adds a [KeyboardButton] to show
  Keyboard add(KeyboardButton button) {
    keyboard.last.add(button);
    return this;
  }

  /// This method adds a new [KeyboardButton] with the passed [text] to the end of the row.
  Keyboard addText(String text) {
    return add(KeyboardButton(text: text));
  }

  /// Adds a new [KeyboardButton] tapping which the user's contact is requested with the specified [text] on it.
  Keyboard requestContact(String text) {
    return add(KeyboardButton(text: text, requestContact: true));
  }

  /// Makes the current [Keyboard] resized.
  Keyboard resized() {
    resizeKeyboard = true;
    return this;
  }

  /// Makes the current [Keyboard] one time only
  Keyboard oneTime() {
    oneTimeKeyboard = true;
    return this;
  }

  /// Makes the current keyboard persistent - always shown to the user
  Keyboard persistent() {
    isPersistent = true;
    return this;
  }

  /// Makes the current keyboard selective.
  ///
  /// That is the keyboard will be presented to specific users in a group.
  ///
  /// Read more here: https://core.telegram.org/bots/api#replykeyboardmarkup
  Keyboard makeSelective() {
    selective = true;
    return this;
  }

  /// Adds a placeholder value in input field
  Keyboard addPlaceholder(String placeholder) {
    inputFieldPlaceholder = placeholder;
    return this;
  }

  /// Adds a button with given [text] which requests user's location when tapped.
  Keyboard requestLocation(String text) {
    return add(KeyboardButton(text: text, requestLocation: true));
  }

  /// Adds a new row to the current keyboard.
  Keyboard row() {
    keyboard.add([]);
    return this;
  }

  /// Requests the user to select a user from the list.
  ///
  /// [text] is the text to show on the button.
  ///
  /// [requestId] is the signed 32-bit identifier of the request.
  ///
  /// [userIsBot] is an optional parameter. Pass True to request a bot, pass False to request a regular user. If not specified, no additional restrictions are applied.
  ///
  /// [userIsPremium] is an optional parameter. Pass True to request a premium user, pass False to request a non-premium user. If not specified, no additional restrictions are applied.
  Keyboard requestUser({
    required String text,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
  }) {
    return add(
      KeyboardButton(
        text: text,
        requestUser: KeyboardButtonRequestUser(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
        ),
      ),
    );
  }

  /// Requests the user to select a chat from the list.
  ///
  /// [text] is the text to show on the button.
  ///
  /// [requestId] is the signed 32-bit identifier of the request.
  ///
  /// [chatIsChannel] Pass True to request a channel chat, pass False to request a group or a supergroup chat.
  ///
  /// [chatHasUsername] Optional. Pass True to request a supergroup or a channel with a username, pass False to request a chat without a username. If not specified, no additional restrictions are applied.
  ///
  /// [chatIsCreated] Optional. Pass True to request a chat owned by the user. Otherwise, no additional restrictions are applied.
  ///
  /// [userAdministratorRights] Optional. A JSON-serialized object listing the required administrator rights of the user in the chat. If not specified, no additional restrictions are applied.
  ///
  /// [botAdministratorRights] Optional. A JSON-serialized object listing the required administrator rights of the bot in the chat. The rights must be a subset of user_administrator_rights. If not specified, no additional restrictions are applied.
  ///
  /// [botIsMember] Optional. Pass True to request a chat with the bot as a member. Otherwise, no additional restrictions are applied.
  Keyboard requestChat({
    required String text,
    required int requestId,
    bool chatIsChannel = false,
    bool? chatIsForum,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
  }) {
    return add(
      KeyboardButton(
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
      ),
    );
  }
}
