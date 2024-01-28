import 'dart:io';

import 'package:televerse/televerse.dart';

class MySession extends Session {
  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

final bot = Bot<MySession>(Platform.environment['BOT_TOKEN']!);

void main(List<String> args) {}
