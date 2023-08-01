import 'dart:io';
import 'package:televerse/televerse.dart';
import 'package:http/http.dart';

/// This is a general bot that tests different features of the library.
/// On investigation about #135
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
  );

  await bot.command('hi', (ctx) async {
    final r = await get(
      Uri.parse(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Hubble_ultra_deep_field.jpg/1200px-Hubble_ultra_deep_field.jpg",
      ),
    );
    final bytes = r.bodyBytes;
    await ctx.replyWithPhoto(InputFile.fromBytes(bytes));
  });
  bot.start();
}
