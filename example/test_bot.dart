import 'dart:io';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
void main() async {
  /// Creates the bot instance
  final Bot bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
    fetcher: LongPolling.allUpdates(),
  );

  /// Starts the bot and sets up the /start command listener
  bot.start((ctx) {
    UserMention mention = ctx.message.from!.mention;

    // Custom emoji
    // This will only work if the bots that purchased additional usernames on Fragment
    CustomEmoji emoji = CustomEmoji("👍", 5368324170671202286);

    ctx.reply("Hello $mention! $emoji", parseMode: ParseMode.html);

    ShareLink link = ShareLink("https://google.com", text: "Google");
    GroupBotLink groupLink = GroupBotLink("xclairebot");

    final keyboard = InlineKeyboard()
        .row()
        .add("Noob", "exp-noob")
        .add("Pro", "exp-pro")
        .row()
        .addUrl("Add me to a group", "$groupLink")
        .row()
        .addUrl("Share", "$link");

    ctx.reply(
      "Choose your experience level",
      replyMarkup: keyboard,
    );
  });

  /// Adds a listener for callback queries
  bot.callbackQuery(RegExp(r"^exp"), (ctx) {
    final value = ctx.data!.split("-").last;
    ctx.answer(
      text: "You are $value at Dart",
    );
  });

  bot.command('name', (ctx) {
    ctx.api.setMyName(name: 'Claire ✨');
  });

  bot.filter((ctx) {
    return ctx.message.videoChatParticipantsInvited != null;
  }, (ctx) {
    ctx.reply('Quick! Join the video chat!');
  });

  bot.filter((ctx) {
    return ctx.message.videoChatStarted != null;
  }, (ctx) {
    ctx.reply('Video chat started!');
  });

  bot.filter((ctx) {
    return ctx.message.poll != null;
  }, (ctx) async {
    Poll poll = ctx.message.poll!;

    if (poll.type == PollType.quiz) {
      await ctx.reply('Quiz started!');
    } else {
      await ctx.reply('Poll started!');
    }

    await ctx.reply(
      "Select one of ${poll.options.map((e) => e.text).join(', ')} to vote.",
    );
  });

  bot.chatMember((ctx) {
    ChatMemberUpdated member = ctx.chatMemberUpdated;
    ChatMember newMember = member.newChatMember;

    bot.api.sendMessage(
      ChatID(member.chat.id),
      "Member Updated: ${newMember.user.firstName}: ${newMember.status}",
    );
  });

  bot.pollAnswer((ctx) {
    PollAnswer pollAnswer = ctx.pollAnswer;
    ctx.reply('Poll Answered: ${pollAnswer.optionIds}');
  });

  bot.whenMentioned((ctx) {
    ctx.reply('Duh, ah! Cheese burger, please! 🍔');
  });

  bot.command('test', (ctx) {
    ctx.reply('Test passed!');
  });

  bot.command('testing', (ctx) {
    ctx.reply('Testing passed!');
  });
}
