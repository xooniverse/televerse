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

  factory MySession.fromJson(Map<String, dynamic> json) {
    return MySession(json['count']);
  }
}

// This is the function that will be called to initialize the session
// the id parameter is the chat id for which the session is being initialized
// so now you can create a session based on the chat id
MySession init(int id) {
  final loaded = Session.loadFromFile(
    MySession.fromJson,
    id: id,
  );
  return loaded ?? MySession(0);
}

// Now create the bot instance mentioning the session type
final bot = Bot<MySession>(Platform.environment['BOT_TOKEN']!);

void main() {
  // Initialize the session
  bot.initSession(init);

  bot.command('save', (ctx) {
    // Save my sessions to JSON file
    ctx.session.saveToFile();

    /// Or save all the sessions
    //  bot.sessions.saveAllSessions();
    ctx.reply('Session saved!');
  });

  // Now you can use the session in the bot
  bot.onMessage((ctx) {
    final sess = ctx.session as MySession;
    sess.count++;
    ctx.reply("Times you have sent a message: ${sess.count}");
    ctx.reply('Session id: ${sess.id}');
  });
  bot.start();
}
