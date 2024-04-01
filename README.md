# Televerse

[![Pub Version](https://img.shields.io/pub/v/televerse?color=blue&logo=blue)](https://pub.dev/packages/televerse)
![GitHub](https://img.shields.io/github/license/HeySreelal/televerse?color=green)
![](https://shields.io/badge/Latest-Bot%20API%207.2-blue)

🤖 `Bot API version: Bot API 7.2 (March 31, 2024)`

Televerse is a powerful, easy-to-use, and highly customizable Telegram bot framework built with Dart programming language. It provides a complete and well-structured API that enables developers to create and deploy complex Telegram bots with ease. Televerse provides a total of 0 dynamic types on its public interface, making it easy for developers to write strictly typed code.

## 🔥 Latest Update: Bot API 7.2

Televerse now supports Bot API 7.2! This update brings improved business account management, including connection handling and updates for messages and edits. You'll also find new methods for working with mixed-format sticker packs and other Bot API 7.2 enhancements. 

Please note that there are a lot of breaking changes in this update. Please refer to the [changelog](./CHANGELOG.md) for more information.

<hr>

## 💻 Getting Started

Creating a bot with Televerse is very easy! First, you need to import the Televerse package:

## 👨🏻‍💻 Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  televerse: <latest>
```

Now in your Dart code, you can import the Televerse package:

```dart
import 'package:televerse/televerse.dart';
```

After importing the package, you can create a new bot instance by providing your bot token:

```dart
Bot bot = Bot('YOUR_BOT_TOKEN');
```

Now, you can start listening for updates such as messages, commands, etc. To start polling updates from Telegram servers, simply call:

```dart
bot.start();
```

That's it! Your bot is now ready to receive updates from Telegram.

If you want to handle a specific command, such as the `/start` command, you can use the `bot.command` method. For example:

```dart
bot.command('start', (ctx) {
  ctx.reply('Hello, World!');
});
```

Starting from Televerse 1.3.1, you can use the `bot.start` method to start listening for updates and also set up a command listener for the `/start` command. That means you can simplify the code above like this:

```dart
bot.start((ctx) {
  ctx.reply('Hello, World!');
});
```

And that's all you need to get started with Televerse!

## 📚 Documentation

Televerse has a new API that is much simpler and easier to use. You can now use the `bot` instance to access the powerful Televerse methods and properties, and if you want to access the Telegram Bot API methods, you can use the `bot.api` getter. Simple, and clean.

Now, when you're inside a callback function, you can use the `Context` parameter which also provides you with the `api` property.

For example, if you want to send a message to a specific chat you can do it like this:

```dart
bot.api.sendMessage(ChatID(123456), "Hello, World!");

// or with the context

ctx.api.sendMessage(ChatID(123456), "Hello, World!");
```

## 🔊 Listening for Updates

Televerse also offers a set of custom methods to simplify your development process. Some of these methods include:

- `bot.command` to listen for commands
- `bot.chatType` and `bot.chatTypes` to listen for specific chat types
- `bot.text` to listen for text messages that contain specific text

There are also more advanced methods such as:

- `bot.filter` to create your own filters and listen for messages that match them
- `bot.hear` to listen for messages that match a RegExp
- `bot.on` to listen for specific events

These methods are very powerful and can be used to create your own custom filters.

For example, if you want to listen for messages that contain a photo with a size greater than 1MB, you can do it like this:

```dart
bot.filter((ctx) {
  return (ctx.message.photo?.last.fileSize ?? 0) > 1000000;
}, (ctx) {
  ctx.reply('Wow, that\'s a big photo!');
});
```

Please note that we are still working on improving the documentation. In the meantime, you can refer to the [example](./example/televerse_example.dart) file for more information.

## 🦄 Even more

Televerse provides a number of helper methods to make it easy to listen for specific types of updates. For example, you can use the `onURL`, `onHashtag`, `onMention`, `onEmail`, and `onPhoneNumber` methods to listen for messages that contain specific types of content:

```dart
bot.onURL((ctx) {
  ctx.reply('I guess you want me to crawl this? 🕷️');
});

bot.onMention((ctx) {
  ctx.reply("Someone mentioned someone! 🤭");
});


// And so on...
```

You can also use the `whenMentioned` method to listen for messages that mention your bot:

```dart
bot.whenMentioned((ctx) {
  ctx.reply('Oh hey, I was sleeping! What did I miss?');
});
```

## 🎖️ Local Bot API Server Support

Televerse supports listening to a local Bot API Server. To use this feature, you can create a new bot instance using the `local` method:

```dart
/// Creates the bot instance, optionally passing the base URL of the local Bot API Server.
final Bot bot = Bot.local(
  "YOUR_BOT_TOKEN",
  baseURL: "mybotapi.com",
);
```

This will create a bot instance that listens to updates from your local Bot API Server. You can then use the same helper methods to listen for updates, messages, and events.

## 🖥️ Serverless Support

You can even create bots that can run on your serverless platform such as AWS Lambda or Google Cloud Functions. On serverless platforms, you might not be able to listen for updates using a Fetcher. In this case, you can use the `bot.handleUpdate` method to handle updates manually.

```dart
// Create bot instance, and setup listeners
// ...

final json = jsonDecode(event.body);
final update = Update.fromJson(json);
bot.handleUpdate(update);
```

## 🌟 Shoot a Star

If you find Televerse helpful, please consider shooting a star on our [Github repository](https://github.com/HeySreelal/televerse). This helps us to know that our work is appreciated and motivates us to continue improving Televerse.

## 🤝 Join the Discussion

We have an active Telegram group where you can discuss Televerse and get help from other users and developers.

<a href="https://t.me/TeleverseDart">
  <img src="https://img.shields.io/badge/Telegram-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/> 
</a> <a href="https://github.com/HeySreelal/televerse/">
  <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white"/>
</a>

<br>

# Thank you ❤️

Televerse is a powerful and easy-to-use library for building Telegram bots in Dart. With its fully typed interface and helpful helper methods, you can write clean, maintainable code that responds to messages and updates on Telegram. So, what are you waiting for? Start building your Telegram bot with Televerse today!
