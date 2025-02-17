/// ## Televerse Models
///
/// This library contains all the models used by Televerse.
library;

import 'dart:async';
import 'dart:io' as io;
import 'dart:typed_data';

import 'package:dio/dio.dart' show DioException;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart' hide HandlerScope;

part 'chat_id.dart';
part 'custom_emoji.dart';
part 'error.dart';
part 'handler_scope.dart';
part 'inline_menu_data.dart';
part 'input_file.dart';
part 'long_polling_exception.dart';
part 'mention.dart';
part 'payload.dart';
part 'telegram_exception.dart';
part 'televerse_exception.dart';
part 'webhook_exception.dart';
part 'local_file.dart';
