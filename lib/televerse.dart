/// Televerse provides a simple and easy way to create Telegram bots. This library exports all the Televerse related classes and methods.
///
/// ## Usage
/// The `Televerse` class let's you create a new bot instance. Or you can simply call it `Bot`.
///
/// ```dart
/// import 'package:televerse/televerse.dart';
///
/// void main() {
///    Bot bot = Bot("<YOUR BOT TOKEN>");
/// }
/// ```
///
/// To import all the Telegram models, you can use the `telegram.dart` file.
///
/// ```dart
/// import 'package:televerse/telegram.dart';
/// ```
///
/// Happy coding!
library televerse;

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:televerse/src/utils/http.dart';

export 'src/televerse/models/models.dart';
export 'src/types/types.dart';
export 'src/televerse/fetch/fetch.dart';
export 'src/televerse/extensions/extensions.dart';
export 'src/televerse/links/links.dart';

part 'src/televerse/bot.dart';
part 'src/utils/date.dart';
part 'src/utils/utils.dart';
part 'src/televerse/markups/keyboard.dart';
part 'src/televerse/markups/inline_keyboard.dart';
part 'src/televerse/raw_api.dart';
part 'src/televerse/sessions/sessions.dart';
part 'src/televerse/filters/on.dart';
part 'src/televerse/filters/filters.dart';
part 'src/televerse/markups/inline_menu.dart';
part 'src/televerse/markups/menu.dart';
part 'src/televerse/markups/keyboard_menu.dart';
part 'src/televerse/models/multipart_helper.dart';
part 'src/televerse/models/logger_options.dart';
part 'src/televerse/context/context.dart';

/// Conversation API
part 'src/televerse/conversation/conversation.dart';
part 'src/televerse/conversation/conversation_exception.dart';

/// The main class of the library.
///
/// This class is used to create a new bot instance. This is just a
/// type alias for [Bot] class.
typedef Televerse<T extends Session> = Bot<T>;
