# Televerse 

Televerse is simple & efficient way to create Telegram bots with Dart. 

`Bot API version: Bot API 6.4`

## 👨🏻‍💻 Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  televerse: <latest>
```

## 📖 Usage

With Televerse you can create a simple bot in just a few lines of code:

```dart
import 'package:televerse/televerse.dart';

Bot bot = Bot('YOUR_BOT_TOKEN');

```
Now with the bot instance you can start listening for updates:

```dart
bot.command('start', (ctx) {
  ctx.reply('Hello, World!');
});

```

## 📚 Documentation

### 📖 Televerse Wiki
We have a dedicated documentation on GitHub Wiki on this repo. Check it our here: [Televerse Wiki](https://github.com/HeySreelal/televerse/wiki).

### ✨ In simple words

You can access the whole Telegram Bot API methods with the `bot` instance. Or if you're inside a `MessageContext` you can access the same with `ctx.api`


For example, if you want to send a message to a specific chat you can do it like this:

```dart
bot.sendMessage(ChatID(123456), "Hello, World!");

// or with the context

ctx.api.sendMessage(ChatID(123456), "Hello, World!");
```

## 👽 Advanced Usage

We also provide a set of custom methods to make your life easier. Some of them are:

- `bot.command` to listen for commands
- `bot.chatType` and `bot.chatTypes` to listen for specific chat types
- `bot.text` to listen for text messages that contains a specific text

And even advanced methods like
- `bot.filter` to create your own filters and listen for messages that match them
- `bot.hear` to listen for messages that match a RegExp

Filter and hear methods are very powerful and can be used to create your own custom filters.

For example, if you want to listen for messages that contains a photo which has more than 1MB of size, you can do it like this:

```dart
bot.filter((ctx) {
  return (ctx.message.photo?.last.fileSize ?? 0) > 1000000;
}, (ctx) {
  ctx.reply('Wow, that\'s a big photo!');
});
```

Note: we're still working on improving the documentation, so you can check the [example](./example/televerse_example.dart) file for more information.

## 🔐 Example

You can find a simple example of a bot that uses Televerse in the [example](./example/televerse_example.dart) file.

### 👽 Examples Repo 

But, where's the fun in that? So we've created an entire repository with examples of bots built with Televerse. [Check it out here: Televerse Examples](https://github.com/xooniverse/TeleverseExamples).

This repository includes examples of bots such as **simple letter counting bot** to **referral bot**, and many more on the way. Moreover, we've detailed the code and explained how it works, so you can learn how to build your own bots with Televerse.

## 📝 Note

We're still at the early stages of the project, so we're working on improving the documentation and adding more features.

## 👫 Contributing

If you want to contribute to the project, you can do it by opening a pull request or by opening an issue.

Jump into our Telegram Group to discuss about the project.

[GitHub Repo](https://github.com/HeySreelal/televerse) | [Telegram Group](https://t.me/televersedart)

## Thanks ❤️