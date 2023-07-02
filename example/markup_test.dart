import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a simple bot that tests the markup feature.
void main(List<String> args) {
  /// Get the bot token from the environment
  final String token = Platform.environment["BOT_TOKEN"]!;

  /// Create a bot instance
  final bot = Bot(token);

  /// Adds the /test command listener
  bot.command("test", (ctx) {
    ctx.reply(
      "Hello <b>world</b>",
      parseMode: ParseMode.html,
    );
  });

  /// Starts the bot
  bot.start();
}
