import 'dart:io';
import 'package:televerse/televerse.dart';

void main(List<String> args) {
  final String token = Platform.environment["BOT_TOKEN"]!;

  // Create a bot instance
  Bot bot = Bot(token);

  bot.command("start", (ctx) {
    final String name = ctx.message.from!.firstName;
    ctx.reply("Hello $name!");
  });

  bot.on(TeleverseEvent.text, (ctx) {
    ctx as MessageContext;
    final int letterCount = ctx.message.text!.length;
    ctx.reply("Your message has $letterCount letters.");
  });

  bot.command('who', (ctx) {
    ctx.reply("I'm ${bot.me.firstName}");
  });

  bot.start();
}
