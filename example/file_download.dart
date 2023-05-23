import 'dart:io';

import 'package:televerse/televerse.dart';

/// This bot allows you to downloads the audio files you send to it
void main() {
  /// Creates the bot instance
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);

  /// Adds a listener for audio files
  bot.on(TeleverseEvent.audio, (ctx) async {
    ctx as MessageContext;
    final aud = ctx.message.audio;
    final file = await ctx.api.getFile(aud!.fileId);
    // you can now get file bytes using
    // await file.getBytes();
    // or download it like:
    await file.download();

    ctx.reply("Done downloading file ${file.fileName}");
  });

  /// Starts the bot and sets up the /start command listener
  bot.start((ctx) {
    ctx.reply("Send me an audio file");
  });

  /// Adds a listener for every command (also excuted for /start)
  bot.entity(MessageEntityType.botCommand, (ctx) {
    ctx.reply("Got a command: ${ctx.message.text}");
  });
}
