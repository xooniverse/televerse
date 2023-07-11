import 'dart:io';
import 'package:televerse/televerse.dart';

/// Creates the bot instance
final bot = Bot(Platform.environment["BOT_TOKEN"]!);

// Create the menu
final startMenu = InlineMenu(name: "Start Menu")
    .text("Hello", helloCallback)
    .row()
    .text("Start", firstCallback)
    .text("Finish", finishCallback);

/// This is a general bot that tests different features of the library.
void main() async {
  // Attach it to the bot
  bot.attachMenu(startMenu);

  // Start the bot and listen for /start command updates
  bot.start((ctx) {
    // Reply with the menu
    ctx.reply(
      "Hello, choose an option:",
      replyMarkup: startMenu,
    );
  });
}

// When a user clicks on the "Hello" button, the bot will answer with "Cool!"
void helloCallback(CallbackQueryContext ctx) {
  ctx.answer(text: "Cool!");
}

// When a user clicks on the "First" button, the bot will answer with
// "That's what you like :)" in an alert
void firstCallback(CallbackQueryContext ctx) {
  ctx.answerWithAlert(text: "That's what you like :)");
}

// When a user clicks on the "Second" button, the bot will edit the message
// with "How was that?"
void finishCallback(CallbackQueryContext ctx) {
  ctx.editMessage("How was that?");

  // Removes the menu listeners from the bot
  bot.removeMenu(startMenu);
}
