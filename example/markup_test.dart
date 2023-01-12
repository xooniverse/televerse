import 'dart:io';
import 'package:televerse/televerse.dart';

void main(List<String> args) {
  final String token = Platform.environment["BOT_TOKEN"]!;

  Bot bot = Bot(token);

  bot.command("test", (ctx) {
    ctx.reply(
      "Hello <b>world</b>",
      parseMode: ParseMode.html,
    );
  });

  bot.start();
}
