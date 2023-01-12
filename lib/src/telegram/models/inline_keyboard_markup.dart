part of models;

/// This object represents an inline keyboard that appears right next to the message it belongs to.
class InlineKeyboardMarkup extends ReplyMarkup {
  /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
  List<List<InlineKeyboardButton>> inlineKeyboard;

  InlineKeyboardMarkup({
    required this.inlineKeyboard,
  });

  factory InlineKeyboardMarkup.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardMarkup(
      inlineKeyboard: (json['inline_keyboard'] as List)
          .map((e) =>
              (e as List).map((e) => InlineKeyboardButton.fromJson(e)).toList())
          .toList(),
    );
  }

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
}
