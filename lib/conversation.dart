/// ## Televerse Conversation
///
/// Televerse Conversation is a library that provides a simple way to create
/// a conversation between the user and the bot.
///
/// As a Telegram bot developer, there are times when you need to create a
/// conversation between the user and the bot. For example, when you need to
/// ask the user for some information, or when you need to ask the user to
/// choose one of the options. And this can be quite complicated. You need to
/// create a state machine, and you need to store the state of the conversation
/// somewhere. And this is where Televerse Conversation comes in.
///
/// Televerse Conversation provides a simple way to create a conversation
/// between the user and the bot. You can create a conversation with just a
/// few lines of code. And you don't need to worry about storing the state of
/// the conversation. Televerse Conversation will take care of that for you.
///
/// Televerse Conversation is built on top of the Televerse library. So you
/// can use all the features of the Televerse library in your conversation.
library conversation;

import 'dart:async';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

part 'src/conversation/conversation_base.dart';
