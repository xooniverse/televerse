# Televerse 

Televerse is simple & efficient way to create Telegram bots with Dart. 

`Bot API version: Bot API 6.4`

## 👨🏻‍💻 Installation

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  televerse: ^1.0.0
```

## 📖 Usage

With Televerse you can create a simple bot in just a few lines of code:

```dart
import 'package:televerse/televerse.dart';

Bot bot = Bot('YOUR_BOT_TOKEN');

```
Now with the bot instance you can start listening for updates:

```dart
bot.onMessage.listen((MessageContext ctx) {
   ctx.reply('Hello World!');
});

```

## 📚 Documentation

At the same time you can access the whole Telegram Bot API methods with the `bot` instance. Or if you're inside a `MessageContext` you can access the same with `ctx.api`


For example, if you want to send a message to a specific chat you can do it like this:

```dart
bot.sendMessage(ChatID(123456), "Hello, World!");

// or with the context

ctx.api.sendMessage(ChatID(123456), "Hello, World!");
```

## 🔐 Example

You can find a simple example in the [example](./example/) folder.

## 📝 Note

We're still at the early stages of the project, so we're working on improving the documentation and adding more features.

## 👫 Contributing

If you want to contribute to the project, you can do it by opening a pull request or by opening an issue.

## Thanks ❤️