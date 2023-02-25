import 'dart:io';

import 'package:televerse/televerse.dart';

void main() async {
  final String token = Platform.environment["BOT_TOKEN"]!;

  // Create a new bot instance
  Bot bot = Bot(token, fetcher: LongPolling());

  // Listen to commands
  bot.command("hello", (ctx) => ctx.reply("Hello!"));

  // Add advanced filters to particularly listen to messages
  bot.filter((ctx) => false, (ctx) {
    ctx.reply("This message will never be sent");
  });

  // Or you can do this:
  bool myAdvancedFilter(MessageContext ctx) {
    return ctx.message.photo?.any((photo) {
          return photo.fileSize! > 1 * 1000 * 1024;
        }) ??
        false;
  }

  bot.filter(myAdvancedFilter, (ctx) {
    // This will only be executed if the filter returns true
    // That is if the photo is bigger than 1MB
    ctx.reply("Oh wow, this is a big photo!");
  });

  // The [bot.hears] method allows you to listen to messages that match a regular expression.
  // You can use the `MessageContext.matches` getter to access the matches of the regular expression.
  bot.hears(RegExp(r'Hello, (.*)!'), (ctx) {
    ctx.reply('${ctx.matches![1]} must be a doing great!');
  });

  // With the [Bot.on] method you can listen for particular updates and you can
  // execute a callback function with the [Context] object as parameter.
  bot.on(TeleverseEvent.text, (ctx) {
    // ctx will be of type [MessageContext]
    ctx as MessageContext;
    ctx.reply("This will only be executed if the message has text");
  });

  // Since v1.3.1 you can listen for `/start`, `/help` and `/settings` commands
  // in an easier way.
  bot.start((ctx) => ctx.reply("Hello!"));
  bot.settings((ctx) => ctx.reply("Settings"));
  bot.help((ctx) => ctx.reply("Help"));

  // So with the [Bot.on] method you can listen for particular updates. Yeah, that indeed means
  // that you can listen for all commands simply by listening for the [TeleverseEvent.command] event.
  bot.on(TeleverseEvent.command, (ctx) {
    // ctx will be of type [MessageContext]
    ctx as MessageContext;
    ctx.reply("This will be executed for every command");
    ctx.reply(
      "That really includes /start, /help and /settings and all other commands you define.",
    );

    // Do your logic here
    if (ctx.message.text == "/televerse") {
      ctx.reply("Much love from Televerse! ❤️");
    }
  });

  // You can also listen for particular message entities.
  bot.entity(MessageEntityType.mention, (ctx) {
    ctx.reply(
      "${ctx.message.getEntityText(MessageEntityType.mention)} was mentioned!",
    );
  });
}
