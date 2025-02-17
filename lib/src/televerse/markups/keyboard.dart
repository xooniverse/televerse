import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'keyboard.freezed.dart';
part 'keyboard.g.dart';

/// Represents a keyboard that appears below the message it belongs to.
/// This is a shortcut for [ReplyKeyboardMarkup].
///
/// With `Keyboard` you can create a keyboard with buttons that will be shown
/// to the user below the message. This is useful for creating custom keyboards
/// that users can interact with.
///
/// ```dart
/// // Create a new keyboard
/// var keyboard = Keyboard()
///   ..addText("Hello World!")
///   ..row()
///   ..requestLocation("Send Location");
///
/// // Send the keyboard with a message
/// ctx.api.sendMessage(ctx.id, "Choose an option:", replyMarkup: keyboard);
/// ```
@freezed
class Keyboard with _$Keyboard implements ReplyKeyboardMarkup {
  /// Creates a new [Keyboard].
  ///
  /// Keyboard is an easy way to create a custom keyboard that will be shown
  /// to the user below the message.
  factory Keyboard({
    /// Array of button rows, each represented by an Array of KeyboardButton objects
    @Default([<KeyboardButton>[]])
    @JsonKey(name: 'keyboard')
    List<List<KeyboardButton>> keyboard,

    /// Optional. Requests clients to resize the keyboard vertically for optimal fit
    @JsonKey(name: 'resize_keyboard') bool? resizeKeyboard,

    /// Optional. Requests clients to hide the keyboard as soon as it's been used.
    @JsonKey(name: 'one_time_keyboard') bool? oneTimeKeyboard,

    /// Optional. The placeholder to be shown in the input field when the keyboard is active
    @JsonKey(name: 'input_field_placeholder') String? inputFieldPlaceholder,

    /// Optional. Use this parameter if you want to show the keyboard to specific users only
    @JsonKey(name: 'selective') bool? selective,

    /// Optional. Requests clients to always show the keyboard when the regular keyboard is hidden.
    @JsonKey(name: 'is_persistent') bool? isPersistent,
  }) = _Keyboard;

  Keyboard._();

  /// Adds a new row to the keyboard.
  Keyboard row() {
    if (keyboard.last.isEmpty) return this;
    return copyWith(keyboard: [...keyboard, []]);
  }

  /// Adds a new [KeyboardButton] to the current row.
  Keyboard add(KeyboardButton button) {
    final newKeyboard = [...keyboard];
    newKeyboard.last = [...newKeyboard.last, button];
    return copyWith(keyboard: newKeyboard);
  }

  /// Adds a text button to the current row.
  Keyboard addText(String text) {
    return add(KeyboardButton(text: text));
  }

  /// Shorthand method to add a text button. Same as [addText].
  Keyboard text(String text) => addText(text);

  /// Adds multiple text buttons to the current row.
  Keyboard texts(List<String> texts) {
    final newKeyboard = [...keyboard];
    newKeyboard.last = [
      ...newKeyboard.last,
      ...texts.map((text) => KeyboardButton(text: text))
    ];
    return copyWith(keyboard: newKeyboard);
  }

  /// Adds a row of [KeyboardButton]s to the keyboard.
  Keyboard addRow(List<KeyboardButton> row) {
    return copyWith(keyboard: [...keyboard, row]);
  }

  /// Adds a button that requests the user's contact information.
  Keyboard requestContact(String text) {
    return add(KeyboardButton(text: text, requestContact: true));
  }

  /// Adds a button that requests the user's location.
  Keyboard requestLocation(String text) {
    return add(KeyboardButton(text: text, requestLocation: true));
  }

  /// Makes the keyboard resize to fit the screen.
  Keyboard resized() => copyWith(resizeKeyboard: true);

  /// Makes the keyboard appear only once.
  Keyboard oneTime() => copyWith(oneTimeKeyboard: true);

  /// Makes the keyboard persistent.
  Keyboard persistent() => copyWith(isPersistent: true);

  /// Makes the keyboard selective to specific users.
  Keyboard makeSelective() => copyWith(selective: true);

  /// Adds a placeholder text to the input field.
  Keyboard addPlaceholder(String placeholder) =>
      copyWith(inputFieldPlaceholder: placeholder);

  /// Adds a button that requests the user to select a user.
  Keyboard requestUser({
    required String text,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
  }) {
    return add(
      KeyboardButton(
        text: text,
        requestUsers: KeyboardButtonRequestUsers(
          requestId: requestId,
          userIsBot: userIsBot,
          userIsPremium: userIsPremium,
        ),
      ),
    );
  }

  /// Adds a button that requests the user to select a chat.
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

  /// Creates a keyboard from JSON.
  factory Keyboard.fromJson(Map<String, dynamic> json) =>
      _$KeyboardFromJson(json);

  /// Removes the current keyboard and shows the default keyboard.
  static ReplyKeyboardRemove remove({bool? selective}) =>
      ReplyKeyboardRemove(selective: selective);
}
