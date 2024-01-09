import 'dart:io';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

final bot = Bot(Platform.environment["BOT_TOKEN"]!);

void main(List<String> args) {
  final articles = [
    InlineQueryResultArticle(
      id: "1",
      title: "Flutter is awesome",
      inputMessageContent: InputTextMessageContent(
        messageText: "Flutter is awesome",
      ),
    ),
    InlineQueryResultArticle(
      id: "2",
      title: "Televerse is a cool Telegram bot framework",
      inputMessageContent: InputTextMessageContent(
        messageText: "Let's try Televerse",
      ),
      url: "https://pub.dev/packages/televerse",
    ),
  ];

  bot.inlineQuery("articles", (ctx) async {
    await ctx.answer(articles);
  });

  bot.inlineQuery("photos", (ctx) async {
    final flutterPic =
        "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png";
    final televersePic =
        "https://repository-images.githubusercontent.com/582727042/e7c34ce1-d095-4f7f-81c8-4cf3dbe924b8";
    final photos = [
      InlineQueryResultPhoto(
        photoUrl: flutterPic,
        thumbnailUrl: flutterPic,
        id: "Flutter",
      ),
      InlineQueryResultPhoto(
        photoUrl: televersePic,
        thumbnailUrl: televersePic,
        id: "Televerse",
      ),
    ];

    await ctx.answer(photos);
  });

  bot.start();
}
