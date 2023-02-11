library televerse;

import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'package:http/http.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:televerse/src/utils/http.dart';

export 'src/televerse/context/context.dart'
    hide MessageMixin, CallbackQueryMixin, ManagementMixin;
export 'src/televerse/models/models.dart';
export 'src/types/types.dart';
export 'src/televerse/event/event.dart';
export 'src/televerse/filters/filters.dart';
export 'src/televerse/fetch/fetch.dart';

part 'src/televerse/televerse.dart';
part 'src/utils/date.dart';
part 'src/utils/utils.dart';
part 'src/televerse/markups/keyboard.dart';
part 'src/televerse/markups/inline_keyboard.dart';
part 'src/televerse/raw_api.dart';

/// Type aliases for the library.
part 'src/types/aliases.dart';

/// The main class of the library.
///
/// This class is used to create a new bot instance. This is just a
/// type alias for [Televerse] class.
typedef Bot = Televerse;
