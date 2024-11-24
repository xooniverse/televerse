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
library;

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'dart:math';

import 'package:dio/dio.dart';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

export 'src/televerse/extensions/extensions.dart';
export 'src/televerse/links/links.dart';
export 'src/televerse/models/models.dart';
export 'src/types/types.dart';

// Bot & API
part 'src/televerse/api/raw_api.dart';
part 'src/televerse/bot/bot.dart';
part 'src/televerse/bot/listeners.dart';
part 'src/televerse/bot/extras.dart';

// Context
part 'src/televerse/context/constructor.dart';
part 'src/televerse/context/context.dart';
part 'src/televerse/context/methods.dart';
part 'src/televerse/context/properties.dart';

// The On Method
part 'src/televerse/filters/filters.dart';
part 'src/televerse/filters/on.dart';

// Keyboards & Menus
part 'src/televerse/markups/inline_keyboard.dart';
part 'src/televerse/markups/inline_menu.dart';
part 'src/televerse/markups/keyboard.dart';
part 'src/televerse/markups/keyboard_menu.dart';
part 'src/televerse/markups/menu.dart';

// Other utilities
part 'src/televerse/models/logger_options.dart';
part 'src/televerse/models/multipart_helper.dart';
part 'src/utils/date.dart';
part 'src/utils/http.dart';
part 'src/utils/utils.dart';

// Fetchers
part 'src/televerse/fetch/fetch.dart';
part 'src/televerse/fetch/long_polling.dart';
part 'src/televerse/fetch/webhook.dart';

/// Conversation API
part 'src/televerse/conversation/conversation.dart';
part 'src/televerse/conversation/conversation_exception.dart';

/// Inline Query Result Builder
part 'src/televerse/builders/inline_query_result_builder.dart';
part 'src/televerse/builders/message_content_generator.dart';

/// Extras
part 'src/televerse/extras/tg_exceptions.dart';
part 'src/televerse/models/scope_options.dart';

/// Middlewares
part 'src/televerse/middlewares/base.dart';
part 'src/televerse/middlewares/types.dart';
part 'src/televerse/middlewares/middleware.dart';
part 'src/televerse/middlewares/transformer.dart';

/// The main class of the library.
///
/// This class is used to create a new bot instance. This is just a
/// type alias for [Bot] class.
typedef Televerse = Bot;
