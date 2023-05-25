import 'dart:io';
import 'package:televerse/televerse.dart';

class MySession extends Session {
  int count;

  MySession(this.count);

  @override
  Map<String, dynamic> toJson() {
    return {'count': count};
  }
}

MySession init() {
  return MySession(0);
}

final bot = Bot<MySession>(Platform.environment['BOT_TOKEN']!);

void main() {
  bot.initSession(init);
  bot.onMessage((ctx) {
    final sess = ctx.session as MySession;
    sess.count++;
    ctx.reply("Times you have sent a message: ${sess.count}");
  });
  bot.start();
}
