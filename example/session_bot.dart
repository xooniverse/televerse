import 'dart:io';
import 'package:televerse/televerse.dart';

// Session class must extend Session
// you can add any fields you want to the session
class MySession extends Session {
  int count;

  MySession(this.count);

  @override
  Map<String, dynamic> toJson() {
    return {'count': count};
  }
}

// This is the function that will be called to initialize the session
MySession init() {
  return MySession(0);
}

// Now create the bot instance mentioning the session type
final bot = Bot<MySession>(Platform.environment['BOT_TOKEN']!);

void main() {
  // Initialize the session
  bot.initSession(init);

  // Now you can use the session in the bot
  bot.onMessage((ctx) {
    final sess = ctx.session as MySession;
    sess.count++;
    ctx.reply("Times you have sent a message: ${sess.count}");
  });
  bot.start();
}
