import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
/// On investigation about #135
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
    loggerOptions: LoggerOptions(
      methods: [APIMethod.sendVideo],
    ),
  );

  bot.start();

  bot.command('hello', (ctx) async {
    await ctx.reply('Hello World!');
    await ctx.replyWithVideo(
      InputFile.fromFile(
        File('example/assets/video.mp4'),
      ),
    );
    await ctx.reply('Done!');
  });

  bot.command('test', (ctx) async {
    await ctx.api.sendPhoto(
      ctx.id,
      InputFile.fromFile(
        File('example/assets/photo.jpeg'),
      ),
    );
  });

  bot.onCommand((ctx) async {
    await ctx.reply("You just sent me a command!");
  });
}
