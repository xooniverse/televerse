import 'dart:io';
import 'package:televerse/televerse.dart';

// Create the bot instance
Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);

// Create the conversation instance with the bot instance
Conversation conversation = Conversation(bot);

void main() async {
  /// For the sake of simplicity, we will only setup the bot to listen to
  /// the start command and just ask the user for their name.
  ///
  /// So let's start the bot and setup a handler for the start command.
  bot.start(welcomeHandler);
}

// We define the welcomeHandler function to handle the start command.
Future<void> welcomeHandler(MessageContext ctx) async {
  // Reply a greeting
  await ctx.reply("Welcome to Televerse Conversation!");
  await ctx.reply("What is your name?");

  // ✨ The magic happens here ✨
  // We can wait for the user's reply using the `waitForTextMessage` method.
  var nameCtx = await conversation.waitForTextMessage(chatId: ctx.id);

  // Reply with the user's name
  await ctx.reply("Hello, ${nameCtx.message.text}!");
}
