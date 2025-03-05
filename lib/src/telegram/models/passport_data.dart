// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/encrypted_credentials.dart';
import 'package:televerse/src/telegram/models/encrypted_passport_element.dart';

part 'passport_data.freezed.dart';
part 'passport_data.g.dart';

/// Describes Telegram Passport data shared with the bot by the user.
@freezed
class PassportData with _$PassportData {
  /// Constructs a [PassportData] object
  const factory PassportData({
    /// Array with information about documents and other Telegram Passport
    /// elements that was shared with the bot
    @JsonKey(name: 'data') required List<EncryptedPassportElement> data,

    /// Encrypted credentials required to decrypt the data
    @JsonKey(name: 'credentials') required EncryptedCredentials credentials,
  }) = _PassportData;

  /// Creates a [PassportData] object from JSON object
  factory PassportData.fromJson(Map<String, dynamic> json) =>
      _$PassportDataFromJson(json);
}
