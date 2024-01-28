part of '../../../televerse.dart';

/// Abstract class to represent a menu
abstract class TeleverseMenu<TeleverseSession extends Session, Data> {
  /// Map that represents the text and action to be done
  List<Map<Data, Handler<TeleverseSession>>> actions;

  /// Name of the menu
  String name;

  /// Converts the object to a JSON object
  Map<String, dynamic> toJson();

  /// Converts a list of rows to a list of InlineKeyboardButton
  static List<List<InlineKeyboardButton>>
      _makeInlineKeyboard<TeleverseSession extends Session>(
    List<Map<InlineMenuData, Handler<TeleverseSession>>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.keys.map((element) {
        return InlineKeyboardButton(
          text: element.text,
          callbackData: element.id,
        );
      }).toList();
    }).toList();
  }

  /// Converts a list of rows to a list of KeyboardButton
  static List<List<KeyboardButton>>
      _makeKeyboard<TeleverseSession extends Session>(
    List<Map<String, Handler<TeleverseSession>>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.keys.map((e) {
        final data = jsonDecode(e);
        final text = data['text'];
        final type = data['type'];
        switch (type) {
          case 'text':
            return KeyboardButton(text: text);
          case 'request_contact':
            return KeyboardButton(
              text: text,
              requestContact: true,
            );
          case 'request_location':
            return KeyboardButton(
              text: text,
              requestLocation: true,
            );
          case 'request_user':
            return KeyboardButton(
              text: text,
              requestUsers: KeyboardButtonRequestUsers.fromJson(data),
            );
          case 'request_chat':
            return KeyboardButton(
              text: text,
              requestChat: KeyboardButtonRequestChat.fromJson(data),
            );
          default:
            return KeyboardButton(text: text);
        }
      }).toList();
    }).toList();
  }

  /// Constructs a TeleverseMenu
  TeleverseMenu({
    List<Map<Data, Handler<TeleverseSession>>>? actions,
    String? name,
  })  : actions = actions ?? [{}],
        name = name ?? _getRandomID();
}
