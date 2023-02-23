import 'dart:io';

import 'package:televerse/televerse.dart';

void main() {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);

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

  bot.start((ctx) {
    ctx.reply("Send me an audio file");
  });

  bot.on(TeleverseEvent.command, (ctx) {
    ctx as MessageContext;

    ctx.reply("Got a command: ${ctx.message.text}");
  });
}
