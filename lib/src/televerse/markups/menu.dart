part of televerse;

/// Abstract class to represent a menu
abstract class TeleverseMenu<CTX extends Context,
    CtxHandler extends FutureOr<void> Function(CTX)> {
  /// Map that represents the text and action to be done
  List<Map<String, CtxHandler>> actions;

  /// Name of the menu
  String? name;

  /// Converts the object to a JSON object
  Map<String, dynamic> toJson();

  /// Converts a list of rows to a list of InlineKeyboardButton
  static List<List<InlineKeyboardButton>> _makeInlineKeyboard(
    List<Map<String, CallbackQueryHandler>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.keys.map((element) {
        return InlineKeyboardButton(text: element, callbackData: element);
      }).toList();
    }).toList();
  }

  /// Converts a list of rows to a list of KeyboardButton
  static List<List<KeyboardButton>> _makeKeyboard(
    List<Map<String, MessageHandler>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.keys.map((element) {
        return KeyboardButton(text: element);
      }).toList();
    }).toList();
  }

  /// Constructs a TeleverseMenu
  TeleverseMenu({
    List<Map<String, CtxHandler>>? actions,
    this.name,
  }) : actions = actions ?? [{}];
}
