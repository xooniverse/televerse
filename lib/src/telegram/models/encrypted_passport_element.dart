// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart'
    show EncryptedPassportElement, PassportFile, PassportType;

part 'encrypted_passport_element.freezed.dart';
part 'encrypted_passport_element.g.dart';

/// Describes documents or other Telegram Passport elements shared with the bot
/// by the user.
@freezed
abstract class EncryptedPassportElement with _$EncryptedPassportElement {
  /// Creates a new [EncryptedPassportElement] object.
  const factory EncryptedPassportElement({
    /// Type of Telegram Passport element
    @JsonKey(name: 'type') required PassportType type,

    /// Optional. Base64-encoded encrypted Telegram Passport element data
    /// provided by the user, available for “personal_details”, “passport”,
    /// “driver_license”, “identity_card”, “internal_passport” and “address”
    /// types. Can be decrypted and verified using the accompanying
    /// EncryptedCredentials.
    @JsonKey(name: 'data') String? data,

    /// Optional. User's verified phone number, available only for
    /// “phone_number” type
    @JsonKey(name: 'phone_number') String? phoneNumber,

    /// Optional. User's verified email address, available only for “email” type
    @JsonKey(name: 'email') String? email,

    /// Optional. Array of encrypted files with documents provided by the user,
    /// available for “utility_bill”, “bank_statement”, “rental_agreement”,
    /// “passport_registration” and “temporary_registration” types. Files can be
    /// decrypted and verified using the accompanying EncryptedCredentials.
    @JsonKey(name: 'files') List<PassportFile>? files,

    /// Optional. Encrypted file with the front side of the document, provided
    /// by the user. Available for “passport”, “driver_license”, “identity_card”
    /// and “internal_passport”. The file can be decrypted and verified using
    /// the accompanying EncryptedCredentials.
    @JsonKey(name: 'front_side') PassportFile? frontSide,

    /// Optional. Encrypted file with the reverse side of the document, provided
    /// by the user. Available for “driver_license” and “identity_card”. The
    /// file can be decrypted and verified using the accompanying
    /// EncryptedCredentials.
    @JsonKey(name: 'reverse_side') PassportFile? reverseSide,

    /// Optional. Encrypted file with the selfie of the user holding a document,
    /// provided by the user; available for “passport”, “driver_license”,
    /// “identity_card” and “internal_passport”. The file can be decrypted and
    /// verified using the accompanying EncryptedCredentials.
    @JsonKey(name: 'selfie') PassportFile? selfie,

    /// Optional. Array of encrypted files with translated versions of documents
    /// provided by the user. Available if requested for “passport”,
    /// “driver_license”, “identity_card”, “internal_passport”, “utility_bill”,
    /// “bank_statement”, “rental_agreement”, “passport_registration” and
    /// “temporary_registration” types. Files can be decrypted and verified
    /// using the accompanying EncryptedCredentials.
    @JsonKey(name: 'translation') List<PassportFile>? translation,

    /// Base64-encoded element hash for using in PassportElementErrorUnspecified
    @JsonKey(name: 'hash') required String hash,
  }) = _EncryptedPassportElement;

  /// Creates a new [EncryptedPassportElement] object from json.
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) =>
      _$EncryptedPassportElementFromJson(json);
}
