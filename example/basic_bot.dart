import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a basic bot that replies to the /start command and to every text message with the number of letters in the message.
void main(List<String> args) {
  /// Get the bot token from the environment
  final String token = Platform.environment["BOT_TOKEN"]!;

  /// Create a bot instance
  final Bot bot = Bot(token);

  /// Adds the /start command listener and starts the bot
  bot.command("start", (ctx) {
    final String name = ctx.message.from!.firstName;
    ctx.reply("Hello $name!");
  });

  /// Setups the /who command listener
  bot.command('who', (ctx) {
    ctx.reply("I'm ${bot.me.firstName}");
  });

  bot.onMessage((ctx) {
    final String text = ctx.message.text!;
    ctx.reply("You said $text");
  });

  /// Starts the bot
  bot.start();
}
