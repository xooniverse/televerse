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

import 'dart:io' as io;
import 'dart:math';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

export 'src/televerse/models/models.dart';
export 'src/types/types.dart';

// Other utilities
part 'src/utils/date.dart';
part 'src/utils/utils.dart';
