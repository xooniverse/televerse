import 'dart:io';

import 'package:televerse/televerse.dart';

void main() async {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  final int chatId = int.parse(Platform.environment["CHAT_ID"]!);

  String packName = "somerandomshit_by_xclairebot";
  bool success = await bot.api.setStickerSetThumbnail(
    packName,
    chatId,
    thumbnail: InputFile.fromFile(
      File("./example/thumb.png"),
    ),
  );

  if (success) {
    print("Sticker added to set");
  } else {
    print("Sticker not added to set");
  }
}
