import 'dart:developer';
import 'dart:io';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:test/test.dart';

void main() {
  Bot bot = Bot(Platform.environment['BOT_TOKEN']!);
  int chatId = int.parse(Platform.environment['CHAT_ID']!);
  ChatID id = ChatID(chatId);

  bot.start();

  test("Get Me", () async {
    final me = await bot.getMe();
    expect(me.username != null, true);
    log("Bot ID: ${me.id}");
  });

  test("Receive Message", () async {
    log("Send a message to the bot");
    MessageContext? ctx;
    try {
      ctx = await bot.onMessage.first;
    } catch (e) {
      log("Error: $e");
    }

    expect(ctx != null, true, reason: "Context is null");
    if (ctx == null) return;
    expect((await ctx.reply("Hello")).runtimeType, Message);
  });

  test("Send Message", () async {
    Message message = await bot.sendMessage(id, "Hello World");
    expect(message.text, "Hello World");

    Message specialMessage = await bot.sendMessage(
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
    Message message = await bot.sendPhoto(
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
    Message message = await bot.sendContact(
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
    Message message = await bot.sendLocation(
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
    Message message = await bot.sendVenue(
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

  test("Send Invoice", () async {
    Message message = await bot.sendInvoice(
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

  test("Send Video", () async {
    Message message = await bot.sendVideo(
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
}
