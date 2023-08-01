import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
/// On investigation about #135
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
  );
  bot.entity(MessageEntityType.botCommand, (ctx) async {
    await ctx.reply("Works");
  });
  bot.on(TeleverseEvent.text, (ctx) async {
    ctx as MessageContext;
    await ctx.reply(
      "Hello ${ctx.message.from!.firstName}!",
      allowSendingWithoutReply: true,
    );
  });
  bot.onError((err) {
    print("We got some problems!");
    print(err);
  });
  bot.start();
}
