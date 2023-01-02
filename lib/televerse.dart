library televerse;

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'package:http/http.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';

export 'src/televerse_base.dart';
export 'src/televerse/context/context.dart';
export 'src/televerse/models/models.dart';
export 'src/types/types.dart';

part 'src/televerse/televerse.dart';
part 'src/televerse/fetch/fetch.dart';
part 'src/televerse/fetch/long_polling.dart';
part 'src/televerse/fetch/webhook.dart';
part 'src/televerse/event/event.dart';
part 'src/utils/date.dart';
part 'src/utils/http.dart';
part 'src/utils/utils.dart';

/// The main class of the library.
///
/// This class is used to create a new bot instance.
typedef Bot = Televerse;
