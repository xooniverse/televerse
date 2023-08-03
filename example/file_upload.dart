import 'dart:io' as io;

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

/// This bot allows you to downloads the audio files you send to it
void main() {
  /// Creates the bot instance
  final Bot bot = Bot(io.Platform.environment["BOT_TOKEN"]!);

  /// Send media group
  bot.command(
      'send',
      (ctx) => ctx.replyWithMediaGroup([
            'file_1.jpg',
            'file_2.jpg',
            'file_3.mp4'
          ]
              .map((e) => io.File('${io.Directory.current.path}/$e'))
              .map((e) => e.uri.pathSegments.last.endsWith('.jpg')
                  ? InputMediaPhoto(media: InputFile.fromFile(e))
                  : InputMediaVideo(media: InputFile.fromFile(e)))
              .toList()));

  /// Starts the bot and sets up the /start command listener
  bot.start((ctx) {
    ctx.reply("Hi, tap this 👉 /send");
  });
}
