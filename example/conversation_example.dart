import 'dart:io';

import 'package:televerse/conversation.dart';
import 'package:televerse/televerse.dart';

void main() async {
  Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);
  bot.start();
  Conversation conversation = Conversation(bot);
  final msg = await conversation.waitForTextMessage(
    chatId: 1407956293,
  );

  print('got a message: ${msg.message.text}');
}
