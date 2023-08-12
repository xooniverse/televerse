import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
/// On investigation about #135
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
    loggerOptions: LoggerOptions(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      methods: [
        APIMethod.sendMessage,
        APIMethod.getMe,
      ],
    ),
  );

  bot.command('hi', (ctx) async {
    final msg = await ctx.reply('What is your name?');
    bot.setNextStep(msg, handleName);
  });

  bot.start();

  bot.command('me', (ctx) async {
    final user = await ctx.api.getMe();
    await ctx.reply('My name is ${user.firstName}');
  });
}

void handleName(MessageContext ctx) async {
  final name = ctx.message.text;
  await ctx.reply('Hello $name');
}
