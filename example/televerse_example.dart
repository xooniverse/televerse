import 'dart:io';

import 'package:televerse/televerse.dart';

void main() {
  final String token = Platform.environment["BOT_TOKEN"]!;

  Bot bot = Bot(token);

  bot.onMessage.listen((MessageContext ctx) async {
    // Collect the ChatID from the context
    final chatId = ChatID(ctx.chat.id);

    // Send a message to the chat
    await ctx.reply("Hello World!");

    // And with the [api] getter you can access the Telegram API
    await ctx.api.sendMessage(chatId, "Hello World!");

    // Looking for a way to send a photo?
    // You can use the [sendPhoto] method
    final photo = InputFile.fromUrl("https://i.imgur.com/1Z1Z1Z1.jpg");
    await ctx.api.sendPhoto(chatId, photo);
  });

  bot.start();
}
