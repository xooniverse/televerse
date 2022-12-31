import 'dart:io';

import 'package:televerse/televerse.dart';

void main() {
  final String token = Platform.environment["BOT_TOKEN"]!;
  Televerse t = Televerse(token);
  t.onMessage.listen((MessageContext ctx) {
    print('hello');
  });
  t.start();
}
