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
import 'dart:math' as math;

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart' as http_parser;
import 'package:televerse/src/telegram/types/televerse_enum.dart';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

export 'src/televerse/models/models.dart';
export 'src/types/types.dart';

// Bot
part 'src/bot/bot.dart';
part 'src/bot/context.dart';
part 'src/bot/composer.dart';
part 'src/bot/error.dart';
part 'src/bot/middleware.dart';

// Core
part 'src/core/fetcher.dart';
part 'src/core/http_client_factory.dart';
part 'src/core/http_client.dart';
part 'src/core/http_utils.dart';
part 'src/core/raw_api.dart';

// Fetchers
part 'src/fetchers/long_polling_fetcher.dart';
part 'src/fetchers/webhook_fetcher.dart';

// Filters
part 'src/filters/common_filters.dart';
part 'src/filters/filter.dart';
part 'src/filters/filters.dart';

// Other utilities
part 'src/utils/date.dart';
part 'src/utils/utils.dart';
