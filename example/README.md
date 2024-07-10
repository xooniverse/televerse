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

  /// Setup the /start command handler
  bot.command('start', (ctx) async => await ctx.reply("Hello!"));

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
    await ctx.reply("This will be executed for every command unhandled");

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

  /// Finally start the bot
  await bot.start();
}
```

## Learn More

If you want to see a specific example, please see the table below.

| Example | Description | 
| --- | --- |
| [Basic Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/basic_bot.dart) | Get Started example. You'll learn to build a very simple bot with basic command and text handling |
| [Letter Counter](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/letter_counter.dart) | A very basic bot that counts the letters in the sent message |
| [Favourite Avenger Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/favorite_avenger_bot.dart) | This is a simple bot outlining the usage of `bot.hear` method, and hence to use the `Context.matches` |
| [Conversation Example](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/conversation_example.dart) | This bot outlines how to use the Conversation API to wait for the user's message |
| [File Download Example](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/file_download.dart) | Outlines the Televerse File methods - such as `File.download` with a simple example |
| [Inline Query Example](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/inline_queries_bot.dart) | Introduction to inline queries. Handling inline query is easier than ever with the `InlineQueryResultBuilder`. This example covers just that |
| [Keyboard Menu Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/keyboard_menu_bot.dart) | This example will walk you through the usage of `KeyboardMenu` - a advanced technique to simply create menus in your bot |
| [Parse Mode Usage](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/markup_test.dart) | A simple example covering the usage of parse mode |
| [Inline Menu Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/menu_bot.dart) | This bot outlines implementation and usage of Inline Menu |
| [Moderator Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/mod_helper.dart) | This example shows a basic group manager bot which listens to `/ban` command. |
| [Referral Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/referral_bot.dart) | This example shows the implementation of a bot with referral enabled. Uses `Context.args` property to retrieve the start argument |
| [Middleware Example](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/middleware_example.dart) | If you're interested in building middlewares for Televerse, this will be the best startng point |
| [Transformer Example](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/transformer_example.dart) | Another plugin example. Transformers lets you fundamentally change or modify API requests. In this example we build a `AutoReplyEnforcer` which automatically adds the `ForceReply` markup with any send method |
| [Webhook Bot](https://github.com/xooniverse/TeleverseExamples/blob/main/lib/webhook_example.dart) | This is an example implementation for a bot using the Webhook as update fetcher |


Well we know that this is probably just the tip of the iceberg. So if you want
to learn more about the Televerse library, you can check out the
[API documentation](https://pub.dev/documentation/televerse/latest/televerse/televerse-library.html).

All the above mentioned code can be found on the official [examples repository here](https://github.com/xooniverse/TeleverseExamples).
