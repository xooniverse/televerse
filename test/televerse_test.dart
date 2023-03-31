import 'dart:developer';
import 'dart:io' show Platform;
import 'dart:io' as io;
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

void main() {
  Bot bot = Bot(Platform.environment['BOT_TOKEN']!);
  int chatId = int.parse(Platform.environment['CHAT_ID']!);
  int gID = int.parse(Platform.environment['CHANNEL_ID']!);
  ChatID id = ChatID(chatId);
  ChatID groupID = ChatID(gID);

  String stickerFileID =
      "CAACAgUAAxkBAAELxJhjw5m8ZywifRtXVhjG9HkygYQ-7gAC6AcAAqY4CVS1s3ikdwGZby0E";

  bot.start();

  test("Get Me", () async {
    final me = await bot.api.getMe();
    expect(me.username != null, true);
    log("Bot ID: ${me.id}");
  });

  test("Send Message", () async {
    Message message = await bot.api.sendMessage(id, "Hello World");
    expect(message.text, "Hello World");

    Message specialMessage = await bot.api.sendMessage(
      id,
      "<b>Hello World</b>\n\nYou can use <a href=\"https://core.telegram.org/bots/api\">Telegram Bot API</a> here.",
      parseMode: ParseMode.html,
      disableWebPagePreview: true,
      disableNotification: true,
      replyToMessageId: message.messageId,
    );

    expect(
      specialMessage.messageId > message.messageId,
      true,
      reason: "Message ID is not greater than previous message ID",
    );
    expect(
      specialMessage.entities != null,
      true,
      reason: "Entities is null",
    );
  });

  test("Send Photo", () async {
    Message message = await bot.api.sendPhoto(
      id,
      InputFile.fromUrl("https://i.imgur.com/CUG0Aof.jpeg"),
      caption: "<b>Not So Secret Recipe</b>",
      parseMode: ParseMode.html,
      disableNotification: true,
    );
    expect(message.photo != null, true, reason: "Photo is null");
    expect(message.caption, "Not So Secret Recipe");
  });

  test("Send Contact", () async {
    Message message = await bot.api.sendContact(
      id,
      "+628123456789",
      "John",
      lastName: "Doe",
      disableNotification: true,
    );
    expect(message.contact != null, true, reason: "Contact is null");
    expect(message.contact!.phoneNumber, "+628123456789");
    expect(message.contact!.firstName, "John");
    expect(message.contact!.lastName, "Doe");
  });

  test("Send Location", () async {
    Message message = await bot.api.sendLocation(
      id,
      37.4220,
      -122.0841,
      disableNotification: true,
    );
    expect(message.location != null, true, reason: "Location is null");
    expect(
      message.location!.latitude.toStringAsPrecision(5),
      37.4220.toStringAsPrecision(5),
    );
    expect(
      message.location!.longitude.toStringAsPrecision(5),
      (-122.0841).toStringAsPrecision(5),
    );
  });

  test("Send Venue", () async {
    Message message = await bot.api.sendVenue(
      id,
      37.4220,
      -122.0841,
      "Googleplex",
      "1600 Amphitheatre Parkway, Mountain View, CA 94043, United States",
      disableNotification: true,
    );
    expect(message.venue != null, true, reason: "Venue is null");
    expect(
      message.venue!.location.latitude.toStringAsPrecision(5),
      37.4220.toStringAsPrecision(5),
    );
    expect(
      message.venue!.location.longitude.toStringAsPrecision(5),
      (-122.0841).toStringAsPrecision(5),
    );
    expect(message.venue!.title, "Googleplex");
    expect(
      message.venue!.address,
      "1600 Amphitheatre Parkway, Mountain View, CA 94043, United States",
    );
  });

  // Send Invoice currently won't work because we don't provide a valid provider token
  /*
    test("Send Invoice", () async {
      Message message = await bot.api.sendInvoice(
        id,
        title: "Test Invoice",
        description: "Test Invoice Description",
        payload: "test_invoice_payload",
        providerToken: "test_provider_token",
        currency: "USD",
        prices: [
          LabeledPrice(label: "Test Label", amount: 1000),
        ],
        disableNotification: true,
      );
      expect(message.invoice != null, true, reason: "Invoice is null");
      expect(message.invoice!.title, "Test Invoice");
      expect(message.invoice!.description, "Test Invoice Description");
      expect(message.invoice!.startParameter, "test_start_parameter");
      expect(message.invoice!.currency, "USD");
    });
  */

  test("Send Video", () async {
    Message message = await bot.api.sendVideo(
      id,
      InputFile.fromUrl(
        "https://telegram.org/file/464001154/11e69/9FLiJnH4fF4.2869553.mp4/18ca1dba8837d3db6f",
      ),
      caption: "<b>Test Video</b>",
      parseMode: ParseMode.html,
      disableNotification: true,
    );
    expect(
      message.video != null || message.animation != null,
      true,
      reason: "Video is null",
    );
    expect(message.caption, "Test Video");
  });

  test("Send Sticker", () async {
    Message message = await bot.api.sendSticker(
      id,
      InputFile.fromFileId(stickerFileID),
    );
    expect(message.sticker != null, true, reason: "Sticker is null");
    expect(message.sticker?.runtimeType, Sticker, reason: "Sticker is null");
  });

  test("Delete Message", () async {
    Message message = await bot.api.sendMessage(id, "Hello World");
    expect(message.text, "Hello World");
    bool deleted = await bot.api.deleteMessage(id, message.messageId);
    expect(deleted, true, reason: "Message is not deleted");
  });

  test("Edit Message Text", () async {
    Message message = await bot.api.sendMessage(id, "Hello World");
    expect(message.text, "Hello World");
    Message editedMessage = await bot.api.editMessageText(
      id,
      message.messageId,
      "Hello World Edited",
    );
    expect(editedMessage.text, "Hello World Edited");
  });

  test("Get Chat", () async {
    Chat chat = await bot.api.getChat(id);
    Chat groupChat = await bot.api.getChat(groupID);
    print(groupChat.type);
    expect(chat.id, id.id);
  });

  test("Get Chat Administrators", () async {
    List<ChatMember> chatMembers = await bot.api.getChatAdministrators(groupID);
    expect(chatMembers.isNotEmpty, true, reason: "Chat members is empty");
  });

  test("Get Chat Menu Button", () async {
    MenuButton button = await bot.api.getChatMenuButton(id);
    print(button.type);
    expect(MenuButtonType.values.contains(button.type), true);
  });

  test("Send photo with caption entity", () async {
    final msg = await bot.api.sendPhoto(
      id,
      InputFile.fromUrl("https://i.imgur.com/CUG0Aof.jpeg"),
      caption: "Hello World",
      disableNotification: true,
      captionEntities: [
        MessageEntity(type: MessageEntityType.bold, offset: 1, length: 5),
      ],
    );

    expect(msg.captionEntities?.isNotEmpty, true);
  });

  test("Send Group Media", () async {
    final medias = [
      InputMediaPhoto(
        media: InputFile.fromUrl("https://i.imgur.com/CUG0Aof.jpeg"),
        caption: "Not So Secret Recipe",
      ),
      InputMediaPhoto(
        media: InputFile.fromUrl("https://i.imgur.com/BjA1g9f.jpeg"),
      ),
    ];
    final msgs = await bot.api.sendMediaGroup(id, medias);

    expect(msgs, isNotEmpty);

    final group = [
      InputMediaPhoto(
        media: InputFile.fromFile(
          io.File("./example/photo.jpeg"),
        ),
      ),
      InputMediaPhoto(
        media: InputFile.fromFile(
          io.File("./example/galaxy.jpeg"),
        ),
      ),
    ];
    final roundTwo = await bot.api.sendMediaGroup(id, group);
    expect(roundTwo, isNotEmpty);
  });

  test("Send Poll", () async {
    final msg = await bot.api.sendPoll(
      id,
      "What is your favorite color?",
      ["Red", "Green", "Blue"],
      isAnonymous: false,
      type: PollType.regular,
      replyMarkup: ReplyKeyboardRemove(),
    );

    expect(msg.poll, isNotNull);
  });

  test("Send dice", () async {
    final msg = await bot.api.sendDice(id, emoji: DiceEmoji.bowling);
    expect(msg.dice, isNotNull);
    expect(msg.dice?.value, greaterThanOrEqualTo(1));
    expect(msg.dice?.value, lessThanOrEqualTo(6));
  });

  test("Set My Commands", () async {
    final commands = [
      BotCommand(command: "start", description: "Start the bot"),
      BotCommand(command: "help", description: "Get help"),
      BotCommand(command: "ban", description: "Ban a user")
    ];
    final scope = BotCommandScopeChatAdministrators(chatId: groupID);
    final res = await bot.api.setMyCommands(commands, scope: scope);
    expect(res, true);
  });
}
