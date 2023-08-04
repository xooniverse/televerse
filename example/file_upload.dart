import 'dart:io' as io;

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

/// This bot allows you to downloads the audio files you send to it
void main() {
  /// Creates the bot instance
  final Bot bot = Bot(io.Platform.environment["BOT_TOKEN"]!);

  /// Send media group
  bot.command(
    'send',
    (ctx) => ctx.replyWithMediaGroup(
      ['file_1.jpg', 'file_2.jpg', 'file_3.mp4']
          .map((e) => io.File('${io.Directory.current.path}/$e'))
          .map(
            (e) => e.uri.pathSegments.last.endsWith('.jpg')
                ? InputMediaPhoto(media: InputFile.fromFile(e))
                : InputMediaVideo(media: InputFile.fromFile(e)),
          )
          .toList(),
    ),
  );

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

  /// Starts the bot and sets up the /start command listener
  bot.start((ctx) {
    ctx.reply("Hi, tap this 👉 /send");
  });
}

MessageHandler handler(String text) {
  return (ctx) async {
    if (ctx.message.animation != null) {
      final fileId = ctx.message.animation!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithAnimation(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.audio != null) {
      final fileId = ctx.message.audio!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithAudio(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.document != null) {
      final fileId = ctx.message.document!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithDocument(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.sticker != null) {
      final fileId = ctx.message.sticker!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithSticker(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.photo != null) {
      final fileId = ctx.message.photo!.last.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithPhoto(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.voice != null) {
      final fileId = ctx.message.voice!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithVoice(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.video != null) {
      final fileId = ctx.message.video!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithVideo(InputFile.fromFile(fileToUpload!));
    }
    if (ctx.message.videoNote != null) {
      final fileId = ctx.message.videoNote!.fileId;
      final file = await ctx.api.getFile(fileId);
      final fileToUpload = await file.download();
      ctx.replyWithVideoNote(InputFile.fromFile(fileToUpload!));
    }

    await ctx.reply("Got a $text");
  };
}
