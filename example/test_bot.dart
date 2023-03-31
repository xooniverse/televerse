import 'dart:io';

import 'package:televerse/telegram.dart' hide File;
import 'package:televerse/televerse.dart';

void main() async {
  final Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  int gID = int.parse(Platform.environment['CHANNEL_ID']!);
  ChatID groupID = ChatID(gID);
  bot.command('audio', (ctx) async {
    print('here');
    await ctx.replyWithAudio(
      InputFile.fromFile(
        File("./example/example_audio.mp3"),
      ),
    );
  });

  await bot.api.sendMessage(groupID, "Hello World");

  final userCommands = [
    BotCommand(command: "start", description: "Start the bot"),
    BotCommand(command: "help", description: "Get help"),
    BotCommand(command: 'unknown', description: 'Unknown command'),
  ];

  final res = await bot.api.setMyCommands(userCommands);

  final adminCommands = [
    BotCommand(command: "start", description: "Start the bot"),
    BotCommand(command: "help", description: "Get help"),
    BotCommand(command: "ban", description: "Ban a user"),
  ];
  final scope = BotCommandScopeChatAdministrators(chatId: groupID);
  final adminRes = await bot.api.setMyCommands(adminCommands, scope: scope);

  await bot.api.sendMessage(groupID, "Set commands: $res and $adminRes");

  bot.start();
}
