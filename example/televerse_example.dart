import 'dart:io';

import 'package:televerse/televerse.dart';

void main() {
  final String token = Platform.environment["BOT_TOKEN"]!;

  Bot bot = Bot(token);

  bot.command("start", (ctx) => ctx.reply("Hello!"));
  bot.command("bye", (ctx) => ctx.reply("Bye!"));

  bot.start();
}
