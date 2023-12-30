/// ## Telegram Passport
///
/// Telegram Passport is a unified authorization method for services that require
/// personal identification. Users can upload their documents once, then instantly
/// share their data with services that require real-world ID (finance, ICOs, etc.).
///
/// Please see the [manual](https://core.telegram.org/passport) for details.
library passport;

import 'package:televerse/televerse.dart';

part 'passport_data.dart';
part 'encrypted_passport_element.dart';
part 'passport_file.dart';
part 'encrypted_credentials.dart';
part 'abstracts/passport_element_error.dart';

// Errors
part 'passport_element_error_data_field.dart';
part 'passport_element_error_front_side.dart';
part 'passport_element_error_reverse_side.dart';
part 'passport_element_error_selfie.dart';
part 'passport_element_error_file.dart';
part 'passport_element_error_files.dart';
part 'passport_element_error_translation_file.dart';
part 'passport_element_error_translation_files.dart';
part 'passport_element_error_unspecified.dart';
