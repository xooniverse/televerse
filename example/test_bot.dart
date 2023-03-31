import 'dart:io';

import 'package:televerse/telegram.dart' hide File;
import 'package:televerse/televerse.dart';

void main() async {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  final int chatId = int.parse(Platform.environment["CHAT_ID"]!);

  final me = await bot.api.getMe();

  await bot.api.sendMessage(ChatID(chatId), "Send a sticker pack name:");
  final ctx = await bot.onMessage.first;

  bool success = await bot.api.createNewStickerSet(
    userId: ctx.message.from!.id,
    name: '${ctx.message.text}_by_${me.username}',
    title: 'Awesome Pack',
    stickerFormat: StickerFormat.static,
    stickers: [
      InputSticker(
        sticker: InputFile.fromFile(File("./example/sticker.png")),
        emojiList: ["🍅", "🍑"],
      )
    ],
  );

  if (success) {
    print("Sticker set created successfully!");
  } else {
    print("Failed to create sticker set.");
  }
}
