/// **Telegram Passport**
///
/// Telegram Passport is a unified authorization method for services that require
/// personal identification. Users can upload their documents once, then instantly
/// share their data with services that require real-world ID (finance, ICOs, etc.).
///
/// Please see the [manual](https://core.telegram.org/passport) for details.
library passport;

part 'models/passport_data.dart';
part 'models/encrypted_passport_element.dart';
part 'models/passport_file.dart';
part 'models/encrypted_credentials.dart';
part 'models/abstracts/passport_element_error.dart';
part './../types/passport_type.dart';

// Errors
part 'models/passport_element_error_data_field.dart';
part 'models/passport_element_error_front_side.dart';
part 'models/passport_element_error_reverse_side.dart';
part 'models/passport_element_error_selfie.dart';
part 'models/passport_element_error_file.dart';
part 'models/passport_element_error_files.dart';
part 'models/passport_element_error_translation_file.dart';
part 'models/passport_element_error_translation_files.dart';
part 'models/passport_element_error_unspecified.dart';
