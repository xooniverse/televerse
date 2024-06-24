<div align="center">
  <h1> Televerse </h1>

[![Pub Version](https://img.shields.io/pub/v/televerse?color=blue&logo=blue)](https://pub.dev/packages/televerse)
![GitHub](https://img.shields.io/github/license/HeySreelal/televerse?color=green)
![](https://shields.io/badge/Latest-Bot%20API%207.5-blue)

<a href="https://telegram.me/TeleverseDart">
    <img src="https://img.shields.io/badge/Telegram%2F@TeleverseDart-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/>
  </a>

</div>

---

🤖 `Bot API version: Bot API 7.5 (June 18, 2024)`

Televerse is a powerful, easy-to-use, and highly customizable Telegram bot
framework built with Dart programming language. It provides a complete and
well-structured API that enables developers to create and deploy complex
Telegram bots with ease. Televerse provides a total of 0 dynamic types on its
public interface, making it easy for developers to write strictly typed code.

## 🔥 What's latest?

### 🗓️ June 22, 2024

Introducing Middleware & Transformer support! You can now use the `Bot.use`
method to attach middlewares to your bot. These middlewares will be processed
before your main handler runs, allowing you to pre-process or even decide
whether to execute the main handler. Additionally, using a `Transformer` lets
you directly modify the request payload, reducing redundant code and simplifying
your coding experience.

### 🗓️ June 18, 2024

In a nutshell, the updates include new Payment system with
[Telegram Stars](https://t.me/BotNews/90). Includes a bunch of new models
related to Star Payments and new method to get Bot's Star Payment history. This
update also includes support for Business Bots to edit messages as well as
accept callback and inline queries.

Checkout [changelog](https://core.telegram.org/bots/api#june-18-2024) for more
details! 🚀

<hr>

## 💻 Getting Started

Creating a bot with Televerse is very easy! First, you need to import the
Televerse package:

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

After importing the package, you can create a new bot instance by providing your
bot token:

```dart
Bot bot = Bot('YOUR_BOT_TOKEN');
```

Now, you can start listening for updates such as messages, commands, etc. To
start polling updates from Telegram servers, simply call:

```dart
bot.start();
```

That's it! Your bot is now ready to receive updates from Telegram.

If you want to handle a specific command, such as the `/start` command, you can
use the `bot.command` method. For example:

```dart
bot.command('start', (ctx) async {
  await ctx.reply('Hello, World!');
});
```

Starting from Televerse 1.3.1, you can use the `bot.start` method to start
listening for updates and also set up a command listener for the `/start`
command. That means you can simplify the code above like this:

```dart
bot.start((ctx) async {
  await ctx.reply('Hello, World!');
});
```

And that's all you need to get started with Televerse!

## 📚 Documentation

Televerse has a new API that is much simpler and easier to use. You can now use
the `bot` instance to access the powerful Televerse methods and properties, and
if you want to access the Telegram Bot API methods, you can use the `bot.api`
getter. Simple, and clean.

Now, when you're inside a callback function, you can use the `Context` parameter
which also provides you with the `api` property.

For example, if you want to send a message to a specific chat you can do it like
this:

```dart
bot.api.sendMessage(ChatID(123456), "Hello, World!");

// or with the context

ctx.api.sendMessage(ChatID(123456), "Hello, World!");
```

## 🔊 Listening for Updates

Televerse also offers a set of custom methods to simplify your development
process. Some of these methods include:

- `bot.command` to listen for commands

Let's see an example:

```dart
bot.command("hello", (ctx) async {
  await ctx.reply("Hello World 👋");
  // ...
});
```

Similarly, you have access to many listener methods including `bot.hear`,
`bot.on`, `bot.callbackQuery` etc to listen to specific events.

Televerse also let's you create your own filter to cherrypick the specific
update and process it.

For example, if you want to listen for messages that contain a photo with a size
greater than 1MB, you can do it like this:

```dart
bot.filter((ctx) {
  return (ctx.message.photo?.last.fileSize ?? 0) > 1000000;
}, (ctx) {
  ctx.reply('Wow, that\'s a big photo!');
});
```

More listener methods listed in the features section.

## 🔑 Key Features

### 1. Strictly Typed

Televerse uses 0 dynamic types on the public interface, ensuring type safety and
reliability throughout your bot development process.

### 2. 🏠 Local Bot API Server Support

Host your own Bot API server and listen to updates effortlessly with Televerse.
Simply use the `Bot.local` constructor to configure your bot with a custom base
URL.

```dart
/// Creates the bot instance, optionally passing the base URL of the local Bot API Server.
final Bot bot = Bot.local(
 "YOUR_BOT_TOKEN",
 baseURL: "mybotapi.com",
);
```

### 3. 🌐 Serverless Setup Compatibility

Whether you're using Cloud Functions or Lambda Functions, Televerse has you
covered. Utilize `Bot.handleUpdate` to handle updates manually in your
serverless environment.

```dart
// Create bot instance, and setup listeners
// ...

final json = jsonDecode(event.body);
final update = Update.fromJson(json);
bot.handleUpdate(update);
```

### 4. 🔄 Network Interceptor Support

Say goodbye to uncertainty with Televerse's `LoggerOptions`, allowing you to
customize network logging options to your heart's content.

```dart
final bot = Bot(
 "YOUR_BOT_TOKEN",
 loggerOptions: LoggerOptions(
   requestBody: true,
   requestHeader: true,
   responseBody: true,
   methods: [
     APIMethod.sendMessage,
     APIMethod.sendPhoto,
   ],
 ),
);
```

### 5. ⌨️ `Keyboard` and `InlineKeyboard` Utility Classes

Easily create Keyboard Reply Markup and Inline Keyboard Markup with Televerse's
intuitive utility classes. Easy as it sounds.

```dart
bot.start((ctx) async {
  final keyboard = Keyboard()
    .text("Account")
    .text("Referral")
    .row()
    .text("Settings")
    .resized();

  await ctx.reply(
    "Choose an option:",
    replyMarkup: keyboard,
  );
});
```

### 6. 🎧 Extensive Listener Methods

Televerse offers a wide array of listener methods to cater to your bot's needs,
including:

| Method              | Description                                                                                                                              |
| ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `bot.command`       | For listening commands                                                                                                                   |
| `bot.hears`         | For listening to specified Regular Expression                                                                                            |
| `bot.inlineQuery`   | For listening to inline query with specified query text                                                                                  |
| `bot.text`          | For listening to message with specified text                                                                                             |
| `bot.callbackQuery` | For listening to specified callback data                                                                                                 |
| `bot.onDocument`    | For listening to messages that contain a document                                                                                        |
| `bot.onPhoto`       | For listening to photo messages                                                                                                          |
| `bot.chatType`      | This method can be used to listen to messages/updates coming from a specific type of chat such as Super Group or Channel or Private Chat |
| `bot.entity`        | Sets up handler method for messages that contains specified entity type                                                                  |
| `bot.myChatMember`  | Listens to change in Bot's chat member status - such as bot is added to a channel or kicked from a group etc.                            |

- And much much more :)

### 7. 🛠️ Custom Listener Methods

Wait a second, did we miss your use case? Create your own listener methods with
ease using `Bot.filter`.

```dart
bot.filter((ctx) {
  return (ctx.message.photo?.last.fileSize ?? 0) > 1000000;
}, (ctx) async {
  ctx.reply('Wow, that\'s a big photo!');
});
```

### 8. 🚀 Latest Telegram Bot API Support

Stay up-to-date with the latest version of the Telegram Bot API, supported by
Televerse. That's a promise.

### 9. 🛡️ Error Handling

Handle errors gracefully with `Bot.onError`, catching almost all uncaught errors
from any handlers.

```dart
import 'dart:developer';

// ...

bot.onError((err) {
  log(
    "Something went wrong: $err",
    error: err.error,
    stackTrace: err.stackTrace,
  );
});
```

### 10. 💬 Conversation API

Engage users in one-on-one conversations with the Conversation API, waiting for
their messages seamlessly.

```dart
// Create your bot instance
final bot = Bot(
  "YOUR_BOT_TOKEN",
);

// Create the Conversation API instance
final conv = Conversation(bot);

bot.start((ctx) async {
  await ctx.reply("Hello, I am ${ctx.me.firstName}. What should I call you?");

  // Now wait you can wait for the user's reply message. Easy, right?
  final nameCtx = await conv.waitForTextMessage(chatId: ctx.id);
  await nameCtx?.reply("Good to meet you, ${ctx.message?.text}");
});
```

### 11. 📲 `InlineMenu` and `KeyboardMenu` Utility Classes

Effortlessly build Inline Reply Markup and Keyboard Reply Markup with
Televerse's utility classes, bound with handler methods for button taps.

```dart
// Define handler methods
Future<void> accountHandler(Context ctx) async {
  await ctx.replyWithPhoto(InputFile.fromFile(File("hello.png")));
  await ctx.reply("Here's your account details...");
}

// Define menu options
final menu = KeyboardMenu()
  .text("Account", accountHandler)
  .text("Referral", referralHandler)
  .text("Settings", settingsHandler)
  .resized();

// Attach menu to bot
bot.attachMenu(menu);

// Start bot
bot.start((ctx) async {
  await ctx.reply(
    "Hello, I am ${ctx.me.firstName}. Let's start.",
    replyMarkup: menu,
  );
});
```

### 12. 🔍 Inline Query Result Builder

Efficiently build inline query results with the InlineQueryResultBuilder,
simplifying the process of generating inline query results.

### 13. 🔌 Plugin Support

Televerse support Middlewares and Transformers in the library. These features
allow you to preprocess and manipulate API requests seamlessly.

#### Middlewares

Middlewares let you execute code before your main handler is run. This is useful
for tasks like logging, authentication, and more.

#### Example: Logging Middleware

```dart
class LoggingMiddleware implements Middleware {
  @override
  Future<void> handle(
    Context ctx,
    NextFunction next,
  ) async {
    print('Received update: ${ctx.update}');
    await next();
  }
}

// Usage
bot.use(LoggingMiddleware());
```

#### Transformers

Transformers allow you to alter the request payloads directly, providing a more
flexible way to modify requests before they are sent to the API.

#### Example: Auto Replier Transformer

```dart
class AutoReplyEnforcer implements Transformer {
  @override
  Future<Map<String, dynamic>> transform(
    APICaller call,
    APIMethod method,
    Payload payload,
  ) async {
    final isSendMethod = APIMethod.sendMethods.contains(method);
    final isNotChatAction = method != APIMethod.sendChatAction;

    if (isSendMethod && isNotChatAction) {
      payload.params["reply_markup"] = ForceReply().toJson();
    }

    return await call(method, payload);
  }
}


// Usage
bot.use(AutoReplyEnforcer());
```

---

## 🌟 Shoot a Star

If you find Televerse helpful, please consider shooting a star on our
[Github repository](https://github.com/HeySreelal/televerse). This helps us to
know that our work is appreciated and motivates us to continue improving
Televerse.

## 🤝 Join the Discussion

We have an active Telegram group where you can discuss Televerse and get help
from other users and developers.

<a href="https://telegram.me/TeleverseDart">
  <img src="https://img.shields.io/badge/Telegram%2F@TeleverseDart-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/></a> <a href="https://github.com/HeySreelal/televerse/">
  <img src="https://img.shields.io/badge/GitHub%20Discussions-100000?style=for-the-badge&logo=github&logoColor=white"/>
</a>

<br>

# Thank you ❤️

Televerse is a powerful and easy-to-use library for building Telegram bots in
Dart. With its fully typed interface and helpful helper methods, you can write
clean, maintainable code that responds to messages and updates on Telegram. So,
what are you waiting for? Start building your Telegram bot with Televerse today!

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-Say%20Thanks-blue?style=flat-square&logo=buy-me-a-coffee)](https://www.buymeacoffee.com/heysreelal)

```
```
