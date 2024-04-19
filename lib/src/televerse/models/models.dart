/// ## Televerse Models
///
/// This library contains all the models used by Televerse.
library;

import 'dart:async';
import 'dart:io' as io;
import 'dart:typed_data';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:dio/dio.dart' show DioException;

part 'chat_id.dart';
part 'input_file.dart';
part 'webhook_exception.dart';
part 'telegram_exception.dart';
part 'long_polling_exception.dart';
part 'televerse_exception.dart';
part 'mention.dart';
part 'custom_emoji.dart';
part 'handler_scope.dart';
part 'inline_menu_data.dart';
part 'error.dart';
