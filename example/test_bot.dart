import 'dart:io';

import 'package:televerse/telegram.dart' hide File;
import 'package:televerse/televerse.dart';

void main() async {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  final int chatId = int.parse(Platform.environment["CHAT_ID"]!);

  String packName = "somerandomshit_by_xclairebot";
  bool success = await bot.api.addStickerToSet(
    chatId,
    packName,
    sticker: InputSticker(
      sticker: InputFile.fromFile(File("./example/sticker2.png")),
      emojiList: ["👍", "👌"],
    ),
  );

  if (success) {
    print("Sticker added to set");
  } else {
    print("Sticker not added to set");
  }
}
