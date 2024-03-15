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
  final bot = Bot(token);

  /// Listen to commands
  bot.command("hello", (ctx) async => await ctx.reply("Hello!"));

  /// Since v1.3.1 you can listen for `/start`, `/help` and `/settings` commands
  /// in an easier way.
  ///
  /// Don't forget that calling bot.start will also start listening to updates.
  bot.start((ctx) async => await ctx.reply("Hello!"));

  /// Sets up the /settings command listener
  bot.settings((ctx) async => await ctx.reply("Settings"));

  /// Sets up the /help command listener
  bot.help((ctx) async => await ctx.reply("Help"));

  /// The [bot.hears] method allows you to listen to messages that match a regular expression.
  /// You can use the `Context.matches` getter to access the matches of the regular expression.
  bot.hears(RegExp(r'Hello, (.*)!'), (ctx) async {
    await ctx.reply('${ctx.matches![1]} must be a doing great!');
  });

  /// Usage of Keyboard
  /// Televerse provided a handy way to create keyboards and inline keyboards.
  final keyboard = Keyboard()
    ..addText("Hello")
    ..addText("World")
    ..row()
    ..requestLocation("Send Location")
    ..oneTime()
    ..resized();

  /// Now you can simply send the keyboard as the replyMarkup for sendMessage or other methods in RawAPI
  bot.command("keyboard", (ctx) async {
    await ctx.reply("Here is the keyboard!", replyMarkup: keyboard);
  });

  /// Let's go a little bit advanced mode now. Televerse has a handy Bot.filter method
  /// to add your own filtering process to cherry pick the updates you want to process.
  ///
  /// For example, let's create a method that accepts `Context` and returns true if
  /// the incoming message is a photo and the photo's size is larger than 1 MB.
  bool myAdvancedFilter(Context ctx) {
    return ctx.message?.photo?.any((photo) {
          return photo.fileSize! > 1 * 1000 * 1024;
        }) ??
        false;
  }

  /// Now you can use the filter method in the Bot.filter and specifically listen for
  /// Photo messages with size greater than 1 MB.
  bot.filter(myAdvancedFilter, (ctx) async {
    // This will only be executed if the filter returns true
    // That is if the photo is bigger than 1MB
    await ctx.reply("Oh wow, this is a big photo!");
  });

  /// So with the [Bot.on] method you can listen for particular updates. Yeah, that indeed means
  /// that you can listen for all commands simply by listening for the [TeleverseEvent.command] event.
  bot.on(TeleverseEvent.command, (ctx) async {
    await ctx.reply("This will be executed for every command");
    await ctx.reply(
      "That really includes /start, /help and /settings and all other commands you define.",
    );

    // Do your logic here
    if (ctx.message?.text == "/televerse") {
      await ctx.reply("Much love from Televerse! ❤️");
    }
  });

  /// You can also listen for particular message entities.
  bot.entity(MessageEntityType.mention, (ctx) async {
    // And use the `Message.geteEntityText` method to extract the value.
    await ctx.reply(
      "${ctx.message?.getEntityText(MessageEntityType.mention)} was mentioned!",
    );
  });
}
```

## Learn More

Well we know that this is probably just the tip of the iceberg. So if you want to learn more about the Televerse library, you can check out the [API documentation](https://pub.dev/documentation/televerse/latest/televerse/televerse-library.html).

Or you can check out the dedicated [examples repository here](https://github.com/xooniverse/TeleverseExamples).