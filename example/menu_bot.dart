import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
void main() async {
  /// Creates the bot instance
  final bot = Bot(Platform.environment["BOT_TOKEN"]!);

  bot.start((ctx) {
    // Create the menu
    final menu = InlineMenu()
        .text("Hello", (ctx) => ctx.answer(text: "Cool!"))
        .row()
        .text(
          "Another",
          (ctx) => ctx.answerWithAlert(text: "That's what you like :)"),
        )
        .text("Second", (ctx) => ctx.editMessage("How was that?"));

    // Attach it to the bot
    bot.attachMenu(menu);

    // Reply with the menu
    ctx.reply(
      "Hello, choose an option:",
      replyMarkup: menu,
    );
  });
}
