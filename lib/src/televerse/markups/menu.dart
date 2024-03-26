part of '../../../televerse.dart';

/// Abstract internal class to represent a menu button
abstract class _TMenuButton<TS extends Session> {
  final bool hasHandler;
  final String text;
  final Handler<TS>? handler;

  const _TMenuButton(
    this.text, {
    this.hasHandler = false,
    this.handler,
  });

  Map<String, dynamic> toJson();

  /// Only for InlineMenuCallbackDataButton
  String? getData() {
    return null;
  }
}

/// Abstract class to represent a menu
abstract class TeleverseMenu<TeleverseSession extends Session> {
  /// Name of the menu
  final String name;

  /// Converts the object to a JSON object
  Map<String, dynamic> toJson();

  /// Converts a list of rows to a list of InlineKeyboardButton
  static List<List<InlineKeyboardButton>>
      _makeInlineKeyboard<TeleverseSession extends Session>(
    List<List<_TMenuButton<TeleverseSession>>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.map((e) {
        return InlineKeyboardButton.fromJson(e.toJson());
      }).toList();
    }).toList();
  }

  /// Converts a list of rows to a list of KeyboardButton
  static List<List<KeyboardButton>>
      _makeKeyboard<TeleverseSession extends Session>(
    List<List<_TMenuButton<TeleverseSession>>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.map((e) {
        return KeyboardButton.fromJson(e.toJson());
      }).toList();
    }).toList();
  }

  /// Constructs a TeleverseMenu
  TeleverseMenu({
    String? name,
  }) : name = name ?? _getRandomID();
}
