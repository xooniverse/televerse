import 'dart:io';

import 'package:televerse/televerse.dart';

void main() {
  final String token = Platform.environment["BOT_TOKEN"]!;

  Bot bot = Bot(token);

  // Note: You can use the [onMessage] getter to listen to all messages
  //     or use the [onCommand] getter to listen to commands
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

  // Listen to commands
  bot.command("start", (ctx) => ctx.reply("Hello!"));
  bot.command("bye", (ctx) => ctx.reply("Bye!"));

  // Add advanced filters to particularly listen to messages
  bot.filter((ctx) => false, (ctx) {
    ctx.reply("This message will never be sent");
  });

  // The [bot.hears] method allows you to listen to messages that match a regular expression.
  // You can use the `MessageContext.matches` getter to access the matches of the regular expression.
  bot.hears(r'Hello, (.*)!', (ctx) {
    ctx.reply('Hello, ${ctx.matches![1]}!');
  });

  bot.start();
}
