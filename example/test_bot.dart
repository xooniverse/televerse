import 'dart:io';

import 'package:televerse/televerse.dart';

void main() {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  bot.command('audio', (ctx) async {
    print('here');
    await ctx.replyWithAudio(
      InputFile.fromFile(
        File("./example/example_audio.mp3"),
      ),
    );
  });
  bot.start();
}
