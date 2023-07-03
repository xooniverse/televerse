import 'dart:io';
import 'package:televerse/televerse.dart';

void main(List<String> args) {
  /// Get the token from the environment variables.
  final token = Platform.environment['BOT_TOKEN']!;

  /// Use the [Bot.local] constructor to create a bot instance.
  final bot = Bot.local(token);

  /// Start polling and setup the handler for the `/start` command.
  bot.start((ctx) {
    ctx.reply('Hello, World!');
  });
}
