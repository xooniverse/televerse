part of televerse;

/// The [Keyboard] class can be used to represent a [ReplyKeyboardMarkup]. This is an easy method to show a keyboard to the user.
class Keyboard extends ReplyKeyboardMarkup {
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
}
