import 'dart:io';

import 'package:televerse/telegram.dart' hide File;
import 'package:televerse/televerse.dart';

void main() async {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  final int chatId = int.parse(Platform.environment["CHAT_ID"]!);

  final me = await bot.api.getMe();

  await bot.api.sendMessage(ChatID(chatId), "Send a sticker pack name:");
  bot.on(TeleverseEvent.text, (ctx) async {
    ctx as MessageContext;
    String packName = '${ctx.message.text}_by_${me.username}';
    bool success = await bot.api.createNewStickerSet(
      userId: ctx.message.from!.id,
      name: packName,
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
      ctx.reply('Created sticker pack: $packName');
      ctx.reply('https://t.me/addstickers/$packName');
    } else {
      print("Failed to create sticker set.");
    }

    success = await bot.api.addStickerToSet(
      ctx.message.from!.id,
      packName,
      sticker: InputSticker(
        sticker: InputFile.fromFile(File("./example/sticker2.png")),
        emojiList: ["😳", "😲"],
      ),
    );

    if (success) {
      print("Sticker added to pack successfully!");
    } else {
      print("Failed to add sticker to pack.");
    }
  });

  bot.start();
}
