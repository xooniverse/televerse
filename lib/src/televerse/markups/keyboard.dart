// File: lib/src/televerse/markups/keyboard.dart
// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

part 'keyboard.freezed.dart';
part 'keyboard.g.dart';

/// Represents a custom keyboard that appears below the message it belongs to.
/// This is a utility wrapper around [ReplyKeyboardMarkup] that provides a
/// fluent API for building keyboards.
///
/// The `Keyboard` class makes it easy to create custom keyboards that will be
/// shown to the user below the message. Users can tap buttons to send text
/// messages or perform special actions like sharing location or contact.
///
/// ## Basic Usage
///
/// ```dart
/// // Create a simple text keyboard
/// final keyboard = Keyboard()
///   .text("Hello")
///   .text("World")
///   .row()
///   .text("New Row");
///
/// // Send with message
/// await ctx.reply("Choose an option:", replyMarkup: keyboard);
/// ```
///
/// ## Advanced Usage
///
/// ```dart
/// // Create keyboard with special buttons
/// final keyboard = Keyboard()
///   .text("Regular Button")
///   .row()
///   .contact("Share Contact")
///   .location("Share Location")
///   .row()
///   .users(text: "Select User", requestId: 1)
///   .resized()
///   .oneTime()
///   .persistent();
/// ```
///
/// ## Building from Arrays
///
/// ```dart
/// // From string array
/// final keyboard = Keyboard.from([
///   ["Button 1", "Button 2"],
///   ["Button 3", "Button 4"]
/// ]);
///
/// // From button objects
/// final buttons = [
///   [Keyboard.buttonText("A"), Keyboard.buttonText("B")],
///   [Keyboard.buttonContact("C"), Keyboard.buttonLocation("D")]
/// ];
/// final keyboard = Keyboard.fromButtons(buttons);
/// ```
@freezed
abstract class Keyboard with _$Keyboard implements ReplyKeyboardMarkup {
  /// Private Constructor
  const Keyboard._();

  /// Creates a new [Keyboard] instance.
  ///
  /// Parameters:
  /// - [keyboard]: Array of button rows, each represented by an Array of [KeyboardButton] objects
  /// - [resizeKeyboard]: Requests clients to resize the keyboard vertically for optimal fit
  /// - [oneTimeKeyboard]: Requests clients to hide the keyboard as soon as it's been used
  /// - [inputFieldPlaceholder]: The placeholder to be shown in the input field when the keyboard is active
  /// - [selective]: Use this parameter if you want to show the keyboard to specific users only
  /// - [isPersistent]: Requests clients to always show the keyboard when the regular keyboard is hidden
  const factory Keyboard({
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

  /// Creates a keyboard from a 2D array of strings.
  ///
  /// This is a convenience constructor that automatically converts strings
  /// to [KeyboardButton] objects.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard.from([
  ///   ["Yes", "No"],
  ///   ["Maybe", "Cancel"]
  /// ]);
  /// ```
  factory Keyboard.from(List<List<String>> source) {
    final buttons = source
        .map((row) => row.map((text) => KeyboardButton(text: text)).toList())
        .toList();
    return Keyboard(keyboard: buttons);
  }

  /// Creates a keyboard from a 2D array of [KeyboardButton] objects.
  ///
  /// This gives you full control over button types and properties.
  ///
  /// Example:
  /// ```dart
  /// final buttons = [
  ///   [Keyboard.buttonText("Hello"), Keyboard.buttonContact("Contact")],
  ///   [Keyboard.buttonLocation("Location")]
  /// ];
  /// final keyboard = Keyboard.fromButtons(buttons);
  /// ```
  factory Keyboard.fromButtons(List<List<KeyboardButton>> buttons) {
    return Keyboard(keyboard: buttons);
  }

  /// Creates a single-column keyboard from a list of strings.
  ///
  /// Each string becomes a button on its own row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard.column(["Option 1", "Option 2", "Option 3"]);
  /// ```
  factory Keyboard.column(List<String> texts) {
    final buttons = texts.map((text) => [KeyboardButton(text: text)]).toList();
    return Keyboard(keyboard: buttons);
  }

  /// Creates a single-row keyboard from a list of strings.
  ///
  /// All strings become buttons in the same row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard.singleRow(["Yes", "No", "Maybe"]);
  /// ```
  factory Keyboard.singleRow(List<String> texts) {
    final buttons = texts.map((text) => KeyboardButton(text: text)).toList();
    return Keyboard(keyboard: [buttons]);
  }

  /// Creates a keyboard with a grid layout.
  ///
  /// Distributes the provided texts into rows with the specified number of columns.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard.grid(
  ///   ["1", "2", "3", "4", "5", "6"],
  ///   columns: 3
  /// ); // Creates 2 rows with 3 buttons each
  /// ```
  factory Keyboard.grid(List<String> texts, {required int columns}) {
    if (columns <= 0) {
      throw ArgumentError('Columns must be greater than 0');
    }

    final buttons = <List<KeyboardButton>>[];
    for (int i = 0; i < texts.length; i += columns) {
      final rowTexts = texts.skip(i).take(columns);
      final row = rowTexts.map((text) => KeyboardButton(text: text)).toList();
      buttons.add(row);
    }

    return Keyboard(keyboard: buttons);
  }

  /// Creates a new [Keyboard] from JSON.
  factory Keyboard.fromJson(Map<String, dynamic> json) =>
      _$KeyboardFromJson(json);

  // Static factory methods for creating individual buttons (renamed with 'button' prefix)

  /// Creates a simple text button.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonText("Click me");
  /// ```
  static KeyboardButton buttonText(String text) {
    return KeyboardButton(text: text);
  }

  /// Creates a button that requests the user's contact information.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonContact("Share Contact");
  /// ```
  static KeyboardButton buttonContact(String text) {
    return KeyboardButton(text: text, requestContact: true);
  }

  /// Creates a button that requests the user's location.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonLocation("Share Location");
  /// ```
  static KeyboardButton buttonLocation(String text) {
    return KeyboardButton(text: text, requestLocation: true);
  }

  /// Creates a button that requests the user to select users.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonUsers(
  ///   text: "Select Users",
  ///   requestId: 1,
  ///   userIsBot: false,
  /// );
  /// ```
  static KeyboardButton buttonUsers({
    required String text,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
    int? maxQuantity,
    bool? requestName,
    bool? requestUsername,
    bool? requestPhoto,
  }) {
    return KeyboardButton(
      text: text,
      requestUsers: KeyboardButtonRequestUsers(
        requestId: requestId,
        userIsBot: userIsBot,
        userIsPremium: userIsPremium,
        maxQuantity: maxQuantity,
        requestName: requestName,
        requestUsername: requestUsername,
        requestPhoto: requestPhoto,
      ),
    );
  }

  /// Creates a button that requests the user to select a chat.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonChat(
  ///   text: "Select Chat",
  ///   requestId: 1,
  ///   chatIsChannel: false,
  /// );
  /// ```
  static KeyboardButton buttonChat({
    required String text,
    required int requestId,
    bool chatIsChannel = false,
    bool? chatIsForum,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
    bool? requestTitle,
    bool? requestUsername,
    bool? requestPhoto,
  }) {
    return KeyboardButton(
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
        requestTitle: requestTitle,
        requestUsername: requestUsername,
        requestPhoto: requestPhoto,
      ),
    );
  }

  /// Creates a button that requests a poll from the user.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonPoll(
  ///   text: "Create Poll",
  ///   type: PollType.quiz,
  /// );
  /// ```
  static KeyboardButton buttonPoll({
    required String text,
    PollType? type,
  }) {
    return KeyboardButton(
      text: text,
      requestPoll: KeyboardButtonPollType(type: type),
    );
  }

  /// Creates a web app button.
  ///
  /// Example:
  /// ```dart
  /// final button = Keyboard.buttonWebApp("Open App", "https://example.com");
  /// ```
  static KeyboardButton buttonWebApp(String text, String url) {
    return KeyboardButton(
      text: text,
      webApp: WebAppInfo(url: url),
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
  /// final keyboard = Keyboard()
  ///   .text("Button 1")
  ///   .text("Button 2")
  ///   .row() // Start new row
  ///   .text("Button 3");
  /// ```
  Keyboard row() {
    if (keyboard.isEmpty || keyboard.last.isEmpty) {
      return this;
    }
    return copyWith(keyboard: [...keyboard, <KeyboardButton>[]]);
  }

  /// Adds a [KeyboardButton] to the current row.
  ///
  /// If no rows exist, creates the first row.
  ///
  /// Example:
  /// ```dart
  /// final button = KeyboardButton(text: "Custom Button");
  /// final keyboard = Keyboard().add(button);
  /// ```
  Keyboard add(KeyboardButton button) {
    final newKeyboard = [...keyboard];
    newKeyboard.last = [...newKeyboard.last, button];
    return copyWith(keyboard: newKeyboard);
  }

  /// Adds multiple buttons to the current row.
  ///
  /// Example:
  /// ```dart
  /// final buttons = [
  ///   KeyboardButton(text: "A"),
  ///   KeyboardButton(text: "B"),
  /// ];
  /// final keyboard = Keyboard().addAll(buttons);
  /// ```
  Keyboard addAll(List<KeyboardButton> buttons) {
    if (buttons.isEmpty) return this;

    if (keyboard.isEmpty) {
      // Create first row with all buttons
      return copyWith(keyboard: [buttons]);
    }

    final newKeyboard = [...keyboard];
    newKeyboard.last = [...newKeyboard.last, ...buttons];
    return copyWith(keyboard: newKeyboard);
  }

  /// Adds a row of buttons to the keyboard.
  ///
  /// This creates a new row regardless of the current state.
  ///
  /// Example:
  /// ```dart
  /// final buttons = [
  ///   KeyboardButton(text: "A"),
  ///   KeyboardButton(text: "B"),
  /// ];
  /// final keyboard = Keyboard().addRow(buttons);
  /// ```
  Keyboard addRow(List<KeyboardButton> buttons) {
    final newKeyboard =
        keyboard.map((row) => List<KeyboardButton>.from(row)).toList();
    newKeyboard.add(List<KeyboardButton>.from(buttons));
    return copyWith(keyboard: newKeyboard);
  }

  /// Adds a text button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().text("Hello");
  /// ```
  Keyboard text(String text) {
    return add(Keyboard.buttonText(text));
  }

  /// Adds multiple text buttons to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().texts(["Yes", "No", "Maybe"]);
  /// ```
  Keyboard texts(List<String> texts) {
    final buttons = texts.map((text) => Keyboard.buttonText(text)).toList();
    return addAll(buttons);
  }

  /// Adds a contact request button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().contact("Share Contact");
  /// ```
  Keyboard contact(String text) {
    return add(Keyboard.buttonContact(text));
  }

  /// Adds a location request button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().location("Share Location");
  /// ```
  Keyboard location(String text) {
    return add(Keyboard.buttonLocation(text));
  }

  /// Adds a user selection button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().users(
  ///   text: "Select User",
  ///   requestId: 1,
  ///   userIsBot: false,
  /// );
  /// ```
  Keyboard users({
    required String text,
    required int requestId,
    bool? userIsBot,
    bool? userIsPremium,
    int? maxQuantity,
    bool? requestName,
    bool? requestUsername,
    bool? requestPhoto,
  }) {
    return add(
      Keyboard.buttonUsers(
        text: text,
        requestId: requestId,
        userIsBot: userIsBot,
        userIsPremium: userIsPremium,
        maxQuantity: maxQuantity,
        requestName: requestName,
        requestUsername: requestUsername,
        requestPhoto: requestPhoto,
      ),
    );
  }

  /// Adds a chat selection button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().chat(
  ///   text: "Select Chat",
  ///   requestId: 1,
  ///   chatIsChannel: false,
  /// );
  /// ```
  Keyboard chat({
    required String text,
    required int requestId,
    bool chatIsChannel = false,
    bool? chatIsForum,
    bool? chatHasUsername,
    bool? chatIsCreated,
    ChatAdministratorRights? userAdministratorRights,
    ChatAdministratorRights? botAdministratorRights,
    bool? botIsMember,
    bool? requestTitle,
    bool? requestUsername,
    bool? requestPhoto,
  }) {
    return add(
      Keyboard.buttonChat(
        text: text,
        requestId: requestId,
        chatIsChannel: chatIsChannel,
        chatIsForum: chatIsForum,
        chatHasUsername: chatHasUsername,
        chatIsCreated: chatIsCreated,
        userAdministratorRights: userAdministratorRights,
        botAdministratorRights: botAdministratorRights,
        botIsMember: botIsMember,
        requestTitle: requestTitle,
        requestUsername: requestUsername,
        requestPhoto: requestPhoto,
      ),
    );
  }

  /// Adds a poll creation button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().poll("Create Poll", type: PollType.quiz);
  /// ```
  Keyboard poll(String text, {PollType? type}) {
    return add(Keyboard.buttonPoll(text: text, type: type));
  }

  /// Adds a web app button to the current row.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().webApp("Open App", "https://example.com");
  /// ```
  Keyboard webApp(String text, String url) {
    return add(Keyboard.buttonWebApp(text, url));
  }

  // Configuration methods

  /// Makes the keyboard resize to fit the screen optimally.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().text("Hello").resized();
  /// ```
  Keyboard resized([bool resize = true]) => copyWith(resizeKeyboard: resize);

  /// Makes the keyboard appear only once and hide after use.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().text("Hello").oneTime();
  /// ```
  Keyboard oneTime([bool oneTime = true]) => copyWith(oneTimeKeyboard: oneTime);

  /// Makes the keyboard persistent (always visible).
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().text("Hello").persistent();
  /// ```
  Keyboard persistent([bool persistent = true]) =>
      copyWith(isPersistent: persistent);

  /// Makes the keyboard selective to specific users.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard().text("Hello").selective();
  /// ```
  Keyboard makeSelective([bool selective = true]) =>
      copyWith(selective: selective);

  /// Adds a placeholder text to the input field.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard()
  ///   .text("Hello")
  ///   .placeholder("Type your message...");
  /// ```
  Keyboard placeholder(String text) => copyWith(inputFieldPlaceholder: text);

  // Utility methods

  /// Returns true if the keyboard has no buttons.
  bool get isEmpty => keyboard.isEmpty || keyboard.every((row) => row.isEmpty);

  /// Returns true if the keyboard has buttons.
  bool get isNotEmpty => !isEmpty;

  /// Returns the total number of buttons in the keyboard.
  int get buttonCount => keyboard.fold(0, (sum, row) => sum + row.length);

  /// Returns the number of rows in the keyboard.
  int get rowCount => keyboard.length;

  /// Creates a new keyboard with the rows and columns transposed.
  ///
  /// This flips the keyboard layout, turning rows into columns and vice versa.
  ///
  /// Example:
  /// ```dart
  /// final keyboard = Keyboard.from([
  ///   ["A", "B"],
  ///   ["C", "D"]
  /// ]).transpose(); // Results in [["A", "C"], ["B", "D"]]
  /// ```
  Keyboard transpose() {
    if (isEmpty) return this;

    final maxCols =
        keyboard.map((row) => row.length).reduce((a, b) => a > b ? a : b);
    final transposed = <List<KeyboardButton>>[];

    for (int col = 0; col < maxCols; col++) {
      final newRow = <KeyboardButton>[];
      for (int row = 0; row < keyboard.length; row++) {
        if (col < keyboard[row].length) {
          newRow.add(keyboard[row][col]);
        }
      }
      if (newRow.isNotEmpty) {
        transposed.add(newRow);
      }
    }

    return copyWith(keyboard: transposed);
  }

  /// Creates a keyboard that removes the current custom keyboard.
  ///
  /// This creates a [ReplyKeyboardRemove] object that tells Telegram
  /// to hide the custom keyboard and show the default system keyboard.
  ///
  /// Example:
  /// ```dart
  /// await ctx.reply("Keyboard removed", replyMarkup: Keyboard.remove());
  /// ```
  static ReplyKeyboardRemove remove({bool? selective}) {
    return ReplyKeyboardRemove(selective: selective);
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.writeln('Keyboard(');
    buffer.writeln('  rows: ${keyboard.length},');
    buffer.writeln('  buttons: $buttonCount,');
    if (resizeKeyboard == true) buffer.writeln('  resized: true,');
    if (oneTimeKeyboard == true) buffer.writeln('  oneTime: true,');
    if (isPersistent == true) buffer.writeln('  persistent: true,');
    if (selective == true) buffer.writeln('  selective: true,');
    if (inputFieldPlaceholder != null) {
      buffer.writeln('  placeholder: "$inputFieldPlaceholder",');
    }
    buffer.write(')');
    return buffer.toString();
  }

  /// Runtime type
  @override
  String get $type => runtimeType.toString();
}
