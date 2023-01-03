library televerse.context;

import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
part 'message.dart';
part 'inline_query.dart';
part 'callback_query.dart';

class Context {
  /// The televerse instance.
  Televerse get api => _televerse;
  final Televerse _televerse;

  Context(
    this._televerse,
  );
}
