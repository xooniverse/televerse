import 'dart:io';
import 'package:televerse/televerse.dart';

void main(List<String> args) {
  final String token = Platform.environment["BOT_TOKEN"]!;

  Bot bot = Bot(token);

  bot.command("test", (ctx) {
    ctx.reply(
      "Here's the web app you've requested",
      replyMarkup: InlineKeyboard()
          .add("Open This", "hello world")
          .addUrl("Open Google", "https://google.com"),
    );
  });
}
