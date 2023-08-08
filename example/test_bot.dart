import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
/// On investigation about #135
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
  );

  bot.command('hi', (ctx) async {
    final msg = await ctx.reply('What is your name?');
    bot.setNextStep(msg, handleName);
  });

  bot.start();
}

void handleName(MessageContext ctx) async {
  final name = ctx.message.text;
  await ctx.reply('Hello $name');
}
