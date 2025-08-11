<div align="center">
  <h1> Televerse </h1>

[![Pub Version](https://img.shields.io/pub/v/televerse?color=blue&logo=blue)](https://pub.dev/packages/televerse)
![GitHub](https://img.shields.io/github/license/xooniverse/televerse?color=green)
![](https://shields.io/badge/Latest-Bot%20API%209.1-blue)

  <a href="https://telegram.me/TeleverseDart">
    <img src="https://img.shields.io/badge/Telegram%2F@TeleverseDart-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/>
  </a>
</div>

---

🤖 `Bot API version: Bot API 9.1 (July 3, 2025)`

Televerse is a powerful, easy-to-use, and highly customizable Telegram bot framework built with Dart programming language. It provides a complete and well-structured API that enables developers to create and deploy complex Telegram bots with ease. Televerse provides a total of 0 dynamic types on its public interface, making it easy for developers to write strictly typed code with full generic support.

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
await bot.start();
```

That's it! Your bot is now ready to receive updates from Telegram.

> [!NOTE]
> Remember to await the `bot.start()` call! This call initializes the bot and fetches details like its username. Starting the bot without awaiting could lead to unexpected behavior if initialization fails.

If you want to handle a specific command, such as the `/start` command, you can use the `bot.command` method. For example:

```dart
bot.command('start', (ctx) async {
  await ctx.reply('Hello, World!');
});
```

And that's all you need to get started with Televerse!

## 📚 Documentation

Televerse has a powerful API that is much simpler and easier to use. You can now use the `bot` instance to access the powerful Televerse methods and properties, and if you want to access the Telegram Bot API methods, you can use the `bot.api` getter. Simple, and clean.

Now, when you're inside a callback function, you can use the `Context` parameter which also provides you with the `api` property.

For example, if you want to send a message to a specific chat you can do it like this:

```dart
bot.api.sendMessage(ChatID(123456), "Hello, World!");

// or with the context
ctx.api.sendMessage(ChatID(123456), "Hello, World!");
```

## 🔊 Listening for Updates

Televerse offers a set of custom methods to simplify your development process. Some of these methods include:

- `bot.command` to listen for commands
- `bot.on` to listen for specific filters
- `bot.hears` to listen for text patterns

Let's see an example:

```dart
bot.command("hello", (ctx) async {
  await ctx.reply("Hello World 👋");
});
```

Similarly, you have access to many listener methods including `bot.hears`, `bot.on`, `bot.callbackQuery` etc to listen to specific events.

### 🎯 Revolutionary Filter System

Televerse now features a powerful filter system with **82 built-in filters** that can be combined using logical operators!

```dart
// Simple filters
bot.on(bot.filters.photo, (ctx) async {
  await ctx.reply('Nice photo! 📸');
});

bot.on(bot.filters.cmd('start'), (ctx) async {
  await ctx.reply('Welcome to the bot! 🚀');
});

// Combinable filters with logical operators
bot.on(
  bot.filters.photo + bot.filters.privateChat, // OR operation
  (ctx) async {
    await ctx.reply('Photo in private chat!');
  },
);

bot.on(
  bot.filters.text * bot.filters.groupChat, // AND operation
  (ctx) async {
    await ctx.reply('Text message in group!');
  },
);

bot.on(
  bot.filters.anyMessage - bot.filters.command, // Any message but NOT commands
  (ctx) async {
    await ctx.reply('Non-command message received!');
  },
);
```

You can also create custom filters:

```dart
bot.filter(
  (ctx) => (ctx.text?.length ?? 0) > 100,
  (ctx) async {
    await ctx.reply('That was a long message!');
  },
);
```

## 🔑 Key Features

### 1. 🎯 Strictly Typed with Generics

Televerse uses 0 dynamic types on the public interface and supports full generic typing, ensuring type safety and reliability throughout your bot development process.

```dart
// Custom context with full type safety
class MyContext extends Context {
  MyContext(super.update, super.api, super.me);
  
  String get userName => from?.firstName ?? 'Unknown';
  bool get isVip => get<bool>('vip') ?? false;
}

final bot = Bot('token', contextFactory: MyContext.new);

bot.command('profile', (MyContext ctx) async {
  await ctx.reply('Hello ${ctx.userName}! VIP: ${ctx.isVip}');
});
```

### 2. 🏠 Local Bot API Server Support

Host your own Bot API server and listen to updates effortlessly with Televerse. Simply use the `Bot.local` constructor to configure your bot with a custom base URL.

```dart
/// Creates the bot instance with local Bot API server.
final Bot bot = Bot.local(
  "YOUR_BOT_TOKEN",
  "http://localhost:8081", // Base URL to poll for
);
```

### 3. 🌐 Serverless Setup Compatibility

Whether you're using Cloud Functions or Lambda Functions, Televerse has you covered. Utilize `Bot.handleUpdate` to handle updates manually in your serverless environment.

```dart
// Create bot instance, and setup listeners
// ...

final json = jsonDecode(event.body);
final update = Update.fromJson(json);
bot.handleUpdate(update);
```

### 4. 🔧 Custom HTTP Client Support

Say goodbye to uncertainty with Televerse's flexible HTTP client system. You can now pass your own HTTP client with custom interceptors for complete control over network requests.

```dart
import 'package:dio/dio.dart';

final httpClient = DioHttpClient();

// Add custom interceptors
httpClient.dio.interceptors.add(LogInterceptor(
  requestBody: true,
  responseBody: true,
));

final bot = Bot(
  "YOUR_BOT_TOKEN",
  httpClient: httpClient,
);
```

Alternatively, use the built-in `LoggingPlugin` for easy request logging:

```dart
bot.plugin(LoggingPlugin());
```

### 5. ⌨️ `Keyboard` and `InlineKeyboard` Utility Classes

Easily create Keyboard Reply Markup and Inline Keyboard Markup with Televerse's intuitive utility classes.

```dart
bot.command('keyboard', (ctx) async {
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

Televerse offers a wide array of listener methods to cater to your bot's needs:

| Method              | Description                                                      |
| ------------------- | ---------------------------------------------------------------- |
| `bot.command`       | For listening commands                                           |
| `bot.hears`         | For listening to specified Regular Expression                    |
| `bot.on`            | For listening using powerful filter system                       |
| `bot.inlineQuery`   | For listening to inline query with specified query text         |
| `bot.text`          | For listening to message with specified text                     |
| `bot.callbackQuery` | For listening to specified callback data                         |
| `bot.onDocument`    | For listening to messages that contain a document               |
| `bot.onPhoto`       | For listening to photo messages                                  |
| `bot.chatType`      | For filtering updates on specific type of chat                   |
| `bot.entity`        | Sets up handler method for messages that contains specified entity type |
| `bot.myChatMember`  | Listens to change in Bot's chat member status                   |

- And much much more! 🎉

### 7. 🛠️ Advanced Filter System

With **80+ built-in filters**, you can handle virtually any type of update:

```dart
// Media filters
bot.on(bot.filters.photo, photoHandler);
bot.on(bot.filters.video, videoHandler);
bot.on(bot.filters.document, documentHandler);

// Chat type filters
bot.on(bot.filters.privateChat, privateHandler);
bot.on(bot.filters.groupChat, groupHandler);

// Content filters
bot.on(bot.filters.forwarded, forwardedHandler);
bot.on(bot.filters.reply, replyHandler);

// Service message filters
bot.on(bot.filters.newChatTitle, newTitleHandler);
bot.on(bot.filters.videoChatStarted, vcStartedHandler);

// Entity filters
bot.on(bot.filters.url, urlHandler);
bot.on(bot.filters.mention, mentionHandler);
bot.on(bot.filters.hashtag, hashtagHandler);

// Business filters
bot.on(bot.filters.businessMessage, businessHandler);
bot.on(bot.filters.paidMedia, paidMediaHandler);
```

Create complex combinations:

```dart
// Admin-only commands in private chat
bot.on(
  bot.filters.cmd('admin') * bot.filters.privateChat * bot.filters.user(adminId),
  adminHandler,
);

// Media in groups but not from bots
bot.on(
  bot.filters.media * bot.filters.groupChat - bot.filters.bot,
  groupMediaHandler,
);
```

### 8. 🚀 Latest Telegram Bot API Support

Stay up-to-date with the latest version of the Telegram Bot API, supported by Televerse. That's a promise.

### 9. 🛡️ Enhanced Error Handling

Handle errors gracefully with comprehensive error handling system:

```dart
import 'dart:developer';

// Global error handler
bot.onError((err) {
  log(
    "Something went wrong: $err",
    error: err.error,
    stackTrace: err.stackTrace,
  );
});

// Error boundaries for specific middleware
bot.errorBoundary(
  (err, next) async {
    await err.ctx?.reply('Something went wrong, but we handled it!');
    await next(); // Continue processing
  },
  [
    // Protected middleware
    (ctx, next) async {
      // This might throw an error
      await riskyOperation();
      await next();
    },
  ],
);
```

### 10. 💬 Advanced Conversation API

Engage users in complex conversations with the powerful Conversation Plugin:

```dart
// Install the conversation plugin
bot.plugin(ConversationPlugin<Context>());

// Define a conversation function
Future<void> askUserInfo(Conversation<Context> conversation, Context ctx) async {
  try {
    await ctx.reply("What's your name?");
    
    // Wait for text message with timeout
    final nameCtx = await conversation.waitFor(
      bot.filters.text.matches,
      timeout: Duration(minutes: 2),
    );
    
    await nameCtx.reply("Nice to meet you, ${nameCtx.text}!");
    
    await nameCtx.reply("How old are you?");
    
    // Wait for a number with validation
    final ageCtx = await conversation.waitUntil(
      (ctx) => int.tryParse(ctx.text ?? '') != null,
      timeout: Duration(minutes: 1),
      otherwise: (ctx) async {
        await ctx.reply("Please send a valid number.");
      },
    );
    
    final age = int.parse(ageCtx.text!);
    await ageCtx.reply("Great! You are $age years old.");
    
  } on ConversationTimeoutException {
    await ctx.reply("Sorry, you took too long to respond.");
  }
}

// Register the conversation
bot.use(createConversation('userInfo', askUserInfo));

// Start the conversation
bot.command('info', (ctx) async {
  await ctx.conversation.enter('userInfo');
});
```

### 11. 📲 `InlineMenu` and `KeyboardMenu` Utility Classes

Effortlessly build Interactive Menus with built-in handler registration:

```dart
// Define handler methods
Future<void> accountHandler(Context ctx) async {
  await ctx.replyWithPhoto(InputFile.fromFile(File("account.png")));
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

// Use menu in commands
bot.command('start', (ctx) async {
  await ctx.reply(
    "Hello, I am ${ctx.me.username}. Let's start.",
    replyMarkup: menu,
  );
});
```

### 12. 🔍 Inline Query Result Builder

Efficiently build inline query results with the enhanced InlineQueryResultBuilder, supporting all inline query result types.

### 13. 🔌 Revolutionary Plugin System

Televerse now features a comprehensive plugin architecture with three built-in plugins:

#### Built-in Plugins:

```dart
// Session Plugin - Persistent user sessions
bot.plugin(SessionPlugin<Context, Map<String, dynamic>>(
  initial: () => {'visits': 0, 'preferences': {}},
  getSessionKey: (ctx) => 'user_${ctx.from?.id ?? 0}',
));

// Conversation Plugin - Multi-step conversations
bot.plugin(ConversationPlugin<Context>());

// Logging Plugin - Request/response logging
bot.plugin(LoggingPlugin<Context>());
```

#### Using Sessions:

```dart
bot.command('count', (ctx) async {
  final session = ctx.session as Map<String, dynamic>;
  session['visits'] = (session['visits'] as int) + 1;
  await ctx.reply('Visit count: ${session['visits']}');
});
```

#### Custom Plugins:

```dart
class RateLimitPlugin<CTX extends Context> extends MiddlewarePlugin<CTX> {
  @override
  String get name => 'rate-limit';
  
  @override
  Middleware<CTX> get middleware => (ctx, next) async {
    // Rate limiting logic
    if (await isRateLimited(ctx.from?.id)) {
      await ctx.reply('Too many requests!');
      return;
    }
    await next();
  };
  
  @override
  List<String> get dependencies => [];
  
  @override
  String? get description => 'Rate limiter plugin';
  
  @override
  void uninstall(Bot<CTX> bot) => bot.removeNamed(name);
  
  @override
  String get version => 'v1.0.0';
}

bot.plugin(RateLimitPlugin<Context>());
```

### 14. 🔧 Enhanced Middleware System

The new middleware system provides powerful composition capabilities:

```dart
// Function-based middleware
bot.use((ctx, next) async {
  print('📥 Processing update ${ctx.update.updateId}');
  final start = DateTime.now();
  
  await next();
  
  final duration = DateTime.now().difference(start);
  print('✅ Processed in ${duration.inMilliseconds}ms');
});

// Conditional middleware
bot.when(
  (ctx) => ctx.isPrivateChat,
  (ctx, next) async {
    await ctx.reply('This is a private chat!');
    await next();
  },
);

// Forked middleware (runs concurrently)
bot.fork((ctx, next) async {
  // This runs in parallel with other middleware
  await logToDatabase(ctx.update);
});

// Lazy middleware (created on demand)
bot.lazy((ctx) {
  return (ctx, next) async {
    // Middleware created based on context
    if (ctx.isGroupChat) {
      await groupSpecificMiddleware(ctx, next);
    } else {
      await next();
    }
  };
});
```

### 15. 🌐 Built-in Webhook Server

Start a webhook bot with just one method call:

```dart
final bot = Bot<Context>('YOUR_BOT_TOKEN');

bot.command('start', (ctx) async {
  await ctx.reply('Hello from webhook bot! 🚀');
});

// This is all you need for a webhook bot!
await bot.startWebhook(
  webhookUrl: 'https://your-domain.com/webhook',
  port: 8080,
);
```

For development with ngrok:

```dart
// Start ngrok: ngrok http 8080
await bot.startWebhookDev('https://abc123.ngrok.io');
```

---

## ⚡ Quick Examples

### Basic Bot
```dart
import 'package:televerse/televerse.dart';

void main() async {
  final bot = Bot<Context>('YOUR_BOT_TOKEN');
  
  // Command handlers
  bot.command('start', (ctx) async {
    await ctx.reply('🚀 Welcome to Televerse!');
  });
  
  // Filter-based handlers
  bot.on(bot.filters.photo, (ctx) async {
    await ctx.reply('Nice photo! 📸');
  });
  
  // Pattern matching
  bot.hears(RegExp(r'(?i)hello'), (ctx) async {
    await ctx.reply('Hello there! 👋');
  });
  
  // Error handling
  bot.onError((error) async {
    print('Bot Error: ${error.error}');
    if (error.hasContext) {
      await error.ctx!.reply('Sorry, something went wrong!');
    }
  });
  
  await bot.start();
}
```

### Advanced Bot with Plugins

```dart

final bot = Bot(
  Platform.environment["BOT_TOKEN"]!,
  contextFactory: BotContext.new,
);

void main() async {
  // Install plugins
  bot.plugin(SessionPlugin<BotContext, Map<String, dynamic>>(
    initial: () => {'count': 0},
    getSessionKey: (ctx) => 'user_${ctx.from?.id ?? 0}',
  ));

  bot.plugin(ConversationPlugin());
  bot.plugin(LoggingPlugin());

  // Complex filters
  bot.on(
    bot.filters.cmd('start') * bot.filters.privateChat,
    (ctx) async {
      await ctx.reply('Welcome to private chat!');
    },
  );

  // Session-aware handler
  bot.command('count', (ctx) async {
    final session = ctx.session;
    session['count'] = (session['count'] as int) + 1;
    await ctx.reply('Count: ${session['count']}');
  });

  await bot.start();
}

class BotContext extends SessionContext<Map<String, dynamic>> {
  BotContext(super.update, super.api, super.me);
}
```

## 🌟 Shoot a Star

If you find Televerse helpful, please consider shooting a star on our [Github repository](https://github.com/xooniverse/televerse). This helps us to know that our work is appreciated and motivates us to continue improving Televerse.

## 🤝 Join the Discussion

We have an active Telegram group where you can discuss Televerse and get help from other users and developers.

<a href="https://telegram.me/TeleverseDart">
  <img src="https://img.shields.io/badge/Telegram%2F@TeleverseDart-2CA5E0?style=for-the-badge&logo=telegram&logoColor=white"/></a> <a href="https://github.com/xooniverse/televerse/">
  <img src="https://img.shields.io/badge/GitHub%20Discussions-100000?style=for-the-badge&logo=github&logoColor=white"/>
</a>

<br>

# Thank you ❤️

Televerse is a powerful and easy-to-use library for building Telegram bots in Dart. With its revolutionary filter system, advanced plugin architecture, and comprehensive type safety, you can write clean, maintainable code that scales from simple bots to enterprise applications. The new middleware system, conversation API, and built-in webhook server make Televerse the most advanced Telegram bot framework in the Dart ecosystem!

[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-Coffee%20Equals%20Code-blue?style=flat-square&logo=buy-me-a-coffee)](https://www.buymeacoffee.com/heysreelal)