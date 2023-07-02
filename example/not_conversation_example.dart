import 'dart:io';
import 'package:televerse/televerse.dart';

// The session that will keep track of the user name and step
class MySession extends Session {
  String name;
  String step;

  MySession(
    this.name, {
    this.step = "welcome",
  });

  @override
  Map<String, dynamic> toJson() {
    return {"name": name};
  }
}

// Create the bot instance
Bot<MySession> bot = Bot<MySession>(Platform.environment["BOT_TOKEN"]!);

// Session initializer
MySession initSession(int id) {
  // By default, we will return a session with name "unknown"
  return MySession("unknown");
}

void main() {
  // Init the session
  bot.initSession(initSession);

  // Start the bot and setup a handler for the start command.
  bot.start(welcomeHandler);

  // When we receive a text message, we will check if the user is in a conversation.
  bot.onText(onText);
}

// Welcome handler
Future<void> welcomeHandler(MessageContext ctx) async {
  // Reply a greeting
  await ctx.reply("Welcome to Televerse!");
  await ctx.reply("What is your name?");

  // Set the session step to "name" so that we can check it later
  final ses = ctx.session as MySession;
  ses.step = "name";
}

// On text handler
Future<void> onText(MessageContext ctx) async {
  // Get the session
  final ses = ctx.session as MySession;

  // Check if the user is in a conversation
  if (ses.step == "name") {
    // Set the user's name
    ses.name = ctx.message.text!;

    // Reply with the user's name
    await ctx.reply("Hello, ${ses.name}!");

    // Set the session step to "welcome" so that we can check it later
    ses.step = "welcome";
  }
}
