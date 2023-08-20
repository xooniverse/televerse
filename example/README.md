## Televerse Example

Here is a simple example of how to use the Televerse library.

```dart
import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general example of how to use the Televerse library.
void main() async {
  /// Get the bot token from the environment
  final String token = Platform.environment["BOT_TOKEN"]!;

  /// Create a new bot instance
  final bot = Bot(token, fetcher: LongPolling());

  /// Listen to commands
  bot.command("hello", (ctx) async => ctx.reply("Hello!"));

  /// Add advanced filters to particularly listen to messages
  bot.filter((ctx) => false, (ctx) async {
    await ctx.reply("This message will never be sent");
  });

  /// Or you can do this:
  bool myAdvancedFilter(MessageContext ctx) {
    return ctx.message.photo?.any((photo) {
          return photo.fileSize! > 1 * 1000 * 1024;
        }) ??
        false;
  }

  /// Now you can use the filter in the Bot.filter method
  bot.filter(myAdvancedFilter, (ctx) async {
    // This will only be executed if the filter returns true
    // That is if the photo is bigger than 1MB
    await ctx.reply("Oh wow, this is a big photo!");
  });

  /// The [bot.hears] method allows you to listen to messages that match a regular expression.
  /// You can use the `MessageContext.matches` getter to access the matches of the regular expression.
  bot.hears(RegExp(r'Hello, (.*)!'), (ctx) async {
    await ctx.reply('${ctx.matches![1]} must be a doing great!');
  });

  /// With the [Bot.on] method you can listen for particular updates and you can
  /// execute a callback function with the [Context] object as parameter.
  bot.filter((ctx) {
    return ctx.message.text != null;
  }, (ctx) async {
    // ctx will be of type [MessageContext]
    await ctx.reply("This will only be executed if the message has text");
  });

  /// Since v1.3.1 you can listen for `/start`, `/help` and `/settings` commands
  /// in an easier way.
  bot.start((ctx) async => await ctx.reply("Hello!"));

  /// Sets up the /settings command listener
  bot.settings((ctx) async => await ctx.reply("Settings"));

  /// Sets up the /help command listener
  bot.help((ctx) async => await ctx.reply("Help"));

  /// So with the [Bot.on] method you can listen for particular updates. Yeah, that indeed means
  /// that you can listen for all commands simply by listening for the [TeleverseEvent.command] event.
  bot.entity(MessageEntityType.botCommand, (ctx) async {
    // ctx will be of type [MessageContext]
    await ctx.reply("This will be executed for every command");
    await ctx.reply(
      "That really includes /start, /help and /settings and all other commands you define.",
    );

    // Do your logic here
    if (ctx.message.text == "/televerse") {
      await ctx.reply("Much love from Televerse! ❤️");
    }
  });

  /// You can also listen for particular message entities.
  bot.entity(MessageEntityType.mention, (ctx) async {
    await ctx.reply(
      "${ctx.message.getEntityText(MessageEntityType.mention)} was mentioned!",
    );
  });
}
```

## Learn More

Well we know that this is probably just the tip of the iceberg. So if you want to learn more about the Televerse library, you can check out the [API documentation](https://pub.dev/documentation/televerse/latest/televerse/televerse-library.html).

Or you can check out the dedicated [examples repository here](https://github.com/xooniverse/TeleverseExamples).