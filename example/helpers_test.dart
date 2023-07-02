import 'dart:io';
import 'package:televerse/televerse.dart';

Bot bot = Bot(Platform.environment["BOT_TOKEN"]!);

MessageHandler handler(String text) {
  return (ctx) async {
    await ctx.reply("Got a $text");
  };
}

void main() async {
  bot.onAudio(handler("audio"));
  bot.onDocument(handler("document"));
  bot.onPhoto(handler("photo"));
  bot.onSticker(handler("sticker"));
  bot.onVideo(handler("video"));
  bot.onVideoNote(handler("video note"));
  bot.onVoice(handler("voice"));
  bot.onContact(handler("contact"));
  bot.onDice(handler("dice"));
  bot.onGame(handler("game"));
  bot.onPollMessage(handler("poll"));
  bot.onVenue(handler("venue"));
  bot.onLocation(handler("location"));
  bot.onLiveLocation(handler("live location"));
  bot.onNewChatTitle(handler("new chat title"));
  bot.onNewChatPhoto(handler("new chat photo"));
  bot.onDeleteChatPhoto(handler("delete chat photo"));
  bot.onPinnedMessage(handler("pinned message"));
  bot.onUsrShared(handler("user shared"));
  bot.onChatShared(handler("chat shared"));
  bot.whenVideoChatScheduled(handler("video chat scheduled"));
  bot.whenVideoChatStarted(handler("video chat started"));
  bot.whenVideoChatEnded(handler("video chat ended"));
  bot.whenVideoChatParticipantsInvited(
    handler("video chat participants invited"),
  );
  bot.onForumTopicCreated(handler("forum topic created"));
  bot.onForumTopicEdited(handler("forum topic edited"));
  bot.onForumTopicClosed(handler("forum topic closed"));
  bot.onForumTopicReopened(handler("forum topic reopened"));
  bot.onWebAppData(handler("web app data"));
  bot.onAnimation(handler("animation"));
  bot.start();
}
