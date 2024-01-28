part of '../../../televerse.dart';

/// This object represents a Inline Keyboard with the action to be done.
class InlineMenu<TeleverseSession extends Session>
    implements
        InlineKeyboardMarkup,
        TeleverseMenu<TeleverseSession, InlineMenuData> {
  /// Name of the menu
  @override
  String name;

  /// Map that represents the text and action to be done
  @override
  List<Map<InlineMenuData, Handler<TeleverseSession>>> actions;

  /// Constructs a InlineMenu
  ///
  /// The `InlineMenu` represents a `Inline Keyboard` with the action to be done.
  ///
  /// The `actions` parameter is a list of rows, each row is a map of `InlineMenuData` and `Handler`. The `InlineMenuData` represents the text and the data to be sent to the bot when the button is pressed. The `Handler` is the function to be executed when the button is pressed.
  /// The `name` parameter is the name of the menu.
  ///
  /// If you are using Televerse with sessions, you can specify the type of the session in the `TeleverseSession` generic and then the `Handler` will be `Handler<TeleverseSession>` allowing you to
  /// access the session in the handler.
  ///
  /// Example:
  ///
  /// ```dart
  /// Future<void> answer(Context ctx, String text) async {
  ///   final callbackQuery = ctx.callbackQuery!;
  ///   await ctx.api.answerCallbackQuery(
  ///     callbackQuery.id,
  ///     text: "Hello!",
  ///   );
  /// }
  ///
  /// final menu = InlineMenu()
  ///   ..text('Hello', (ctx) => answer(ctx, 'Hello!'))
  ///   ..row()
  ///   ..text('World', (ctx) => answer(ctx, 'World!'));
  /// ```
  ///
  /// ## Attach & Use
  /// Now you can attach the menu to the bot and you can use it as a reply markup.
  ///
  /// ```dart
  /// bot.attachMenu(menu);
  ///
  /// bot.start((ctx) async {
  ///  await ctx.api.sendMessage(ctx.id, 'Choose an option', replyMarkup: menu);
  /// });
  /// ```
  InlineMenu({
    List<Map<InlineMenuData, Handler<TeleverseSession>>>? actions,
    String? name,
  })  : actions = actions ?? [{}],
        inlineKeyboard = TeleverseMenu._makeInlineKeyboard<TeleverseSession>(
          actions,
        ),
        name = name ?? _getRandomID();

  /// Add a new row to the keyboard
  InlineMenu row() {
    if (actions.last.isEmpty) return this;
    actions.add({});
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(actions);
    return this;
  }

  /// Add new item to the last row
  InlineMenu text(
    String text,
    Handler<TeleverseSession> handler, {
    String? data,
  }) {
    if (actions.isEmpty) actions.add({});
    actions.last.addAll({InlineMenuData(text, data): handler});
    inlineKeyboard = TeleverseMenu._makeInlineKeyboard(actions);
    return this;
  }

  /// List of rows of the keyboard
  @override
  List<List<InlineKeyboardButton>> inlineKeyboard;

  /// Converts the object to a JSON object
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
