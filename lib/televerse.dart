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
import 'package:http/http.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:televerse/src/utils/http.dart';

export 'src/televerse/context/context.dart'
    hide MessageMixin, CallbackQueryMixin, ManagementMixin, InlineQueryMixin;
export 'src/televerse/models/models.dart';
export 'src/types/types.dart';
export 'src/televerse/fetch/fetch.dart';
export 'src/televerse/extensions/extensions.dart';
export 'src/televerse/links/links.dart';

part 'src/televerse/televerse.dart';
part 'src/utils/date.dart';
part 'src/utils/utils.dart';
part 'src/televerse/markups/keyboard.dart';
part 'src/televerse/markups/inline_keyboard.dart';
part 'src/televerse/raw_api.dart';
part 'src/televerse/sessions/sessions.dart';
part 'src/televerse/filters/on.dart';
part 'src/televerse/filters/filters.dart';

/// Conversation API
part 'src/conversation/conversation.dart';

/// Type aliases for the library.
part 'src/types/aliases.dart';

/// The main class of the library.
///
/// This class is used to create a new bot instance. This is just a
/// type alias for [Televerse] class.
typedef Bot<T extends Session> = Televerse;
