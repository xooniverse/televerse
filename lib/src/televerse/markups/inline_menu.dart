part of televerse;

/// This object represents a Inline Keyboard with the action to be done.
class InlineMenu implements InlineKeyboardMarkup {
  /// Map that represents the text and action to be done
  List<Map<String, CallbackQueryHandler>> actions;

  /// Constructs a InlineMenu
  InlineMenu([List<Map<String, CallbackQueryHandler>>? actions])
      : actions = actions ?? [{}],
        inlineKeyboard = _make(actions);

  /// Add a new row to the keyboard
  InlineMenu row() {
    if (actions.last.isEmpty) return this;
    actions.add({});
    inlineKeyboard = _make(actions);
    return this;
  }

  /// Add new item to the last row
  InlineMenu text(String text, CallbackQueryHandler handler) {
    if (actions.isEmpty) actions.add({});
    actions.last.addAll({
      text: handler,
    });
    inlineKeyboard = _make(actions);
    return this;
  }

  @override
  List<List<InlineKeyboardButton>> inlineKeyboard;

  @override
  Map<String, dynamic> toJson() {
    return {
      'inline_keyboard': inlineKeyboard.map((row) {
        return row.map((button) {
          return button.toJson();
        }).toList();
      }).toList(),
    }..removeWhere((key, value) => value == null);
  }

  static List<List<InlineKeyboardButton>> _make(
    List<Map<String, CallbackQueryHandler>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.keys.map((element) {
        return InlineKeyboardButton(text: element, callbackData: element);
      }).toList();
    }).toList();
  }
}
