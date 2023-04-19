import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a basic bot that replies to the /start command and to every text message with the number of letters in the message.
void main(List<String> args) {
  /// Get the bot token from the environment
  final String token = Platform.environment["BOT_TOKEN"]!;

  /// Create a bot instance
  Bot bot = Bot(token);

  /// Adds the /start command listener and starts the bot
  bot.command("start", (ctx) {
    final String name = ctx.message.from!.firstName;
    ctx.reply("Hello $name!");
  });

  /// When a text message is received, the bot will reply with the number of letters in the message
  bot.on(TeleverseEvent.text, (ctx) {
    ctx as MessageContext;
    final int letterCount = ctx.message.text!.length;
    ctx.reply("Your message has $letterCount letters.");
  });

  /// Setups the /who command listener
  bot.command('who', (ctx) {
    ctx.reply("I'm ${bot.me.firstName}");
  });

  /// Starts the bot
  bot.start();
}
