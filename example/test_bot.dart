import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
void main() async {
  /// Creates the bot instance
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);

  /// Starts the bot and sets up the /start command listener
  bot.start((ctx) {
    final keyboard = InlineKeyboard()
        .row()
        .add("Noob", "exp-noob")
        .add("Pro", "exp-pro")
        .row()
        .add("Expert", "exp-expert")
        .add("Master", "exp-master")
        .row()
        .add("God", "exp-god");

    ctx.reply(
      "Choose your experience level",
      replyMarkup: keyboard,
    );
  });

  /// Adds a listener for callback queries
  bot.callbackQuery(RegExp(r"^exp"), (ctx) {
    final value = ctx.data!.split("-").last;
    ctx.answer(
      text: "You are $value at Dart",
    );
  });

  bot.command('name', (ctx) {
    ctx.api.setMyName(name: 'Claire ✨');
  });
}
