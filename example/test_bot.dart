import 'dart:io';
import 'package:televerse/src/telegram/models/models.dart';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
  );

  bot.command('edit', editor());
  bot.start(starter());
  bot.onError((err, stackTrace) {
    print("We got some problems!");
    print(err);
    print(stackTrace);
  });
}

MessageHandler starter() {
  return (ctx) async {
    await ctx.reply("Hello, world!");
    final msg = await ctx.replyWithPhoto(
      InputFile.fromUrl(
        "https://cdn.mos.cms.futurecdn.net/uxdsce4CMFwqPDRKEKvbX4.jpeg",
      ),
      caption: "This is a test image.",
    );
    await ctx.reply("The message id of the image is ${msg.messageId}.");
  };
}

MessageHandler editor() {
  return (ctx) async {
    String param;
    try {
      param = ctx.args[0];
    } catch (e) {
      await ctx.reply("Please provide a message id.");
      return;
    }

    final msgId = int.tryParse(param);
    if (msgId == null) {
      await ctx.reply("Please provide a valid message id.");
      return;
    }

    await ctx.reply("Editing message...");
    await ctx.api.editMessageMedia(
      ctx.id,
      msgId,
      InputMediaPhoto(
        media: InputFile.fromUrl(
          "https://cdn.mos.cms.futurecdn.net/aSFaRjH2UffnnDd2Tq8zHF.jpg",
        ),
      ),
    );
  };
}
