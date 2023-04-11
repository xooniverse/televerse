import 'dart:io';
import 'package:televerse/televerse.dart';

void main() async {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);

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

  bot.callbackQuery(RegExp(r"^exp"), (ctx) {
    final value = ctx.data!.split("-").last;
    ctx.answer(
      text: "You are $value at Dart",
    );
  });
}
