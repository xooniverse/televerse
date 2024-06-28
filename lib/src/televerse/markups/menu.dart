part of '../../../televerse.dart';

/// Abstract internal class to represent a menu button
abstract class _TMenuButton<CTX extends Context> {
  final bool hasHandler;
  final String text;
  final Handler<CTX>? handler;
  final ScopeOptions<CTX>? options;

  const _TMenuButton(
    this.text, {
    this.hasHandler = false,
    this.handler,
    this.options,
  });

  Map<String, dynamic> toJson();

  /// Only for InlineMenuCallbackDataButton
  String? getData() {
    return null;
  }
}

/// Abstract class to represent a menu
abstract class TeleverseMenu<CTX extends Context> {
  /// Name of the menu
  final String name;

  /// Converts the object to a JSON object
  Map<String, dynamic> toJson();

  /// Converts a list of rows to a list of InlineKeyboardButton
  static List<List<InlineKeyboardButton>>
      _makeInlineKeyboard<CTX extends Context>(
    List<List<_TMenuButton<CTX>>>? rows,
  ) {
    if (rows == null) return [];
    return rows.map((row) {
      return row.map((e) {
        return InlineKeyboardButton.fromJson(e.toJson());
      }).toList();
    }).toList();
  }

  /// Converts a list of rows to a list of KeyboardButton
  static List<List<KeyboardButton>> _makeKeyboard<CTX extends Context>(
    List<List<_TMenuButton<CTX>>>? rows,
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
