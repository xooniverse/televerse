part of 'passport.dart';

/// Describes documents or other Telegram Passport elements shared with the bot by the user.
class EncryptedPassportElement {
  /// Type of Telegram Passport element
  PassportType type;

  /// Optional. Base64-encoded encrypted Telegram Passport element data provided by the user, available for “personal_details”, “passport”, “driver_license”, “identity_card”, “internal_passport” and “address” types. Can be decrypted and verified using the accompanying EncryptedCredentials.
  String? data;

  /// Optional. User's verified phone number, available only for “phone_number” type
  String? phoneNumber;

  /// Optional. User's verified email address, available only for “email” type
  String? email;

  /// Optional. Array of encrypted files with documents provided by the user, available for “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
  List<PassportFile>? files;

  /// Optional. Encrypted file with the front side of the document, provided by the user. Available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
  PassportFile? frontSide;

  /// Optional. Encrypted file with the reverse side of the document, provided by the user. Available for “driver_license” and “identity_card”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
  PassportFile? reverseSide;

  /// Optional. Encrypted file with the selfie of the user holding a document, provided by the user; available for “passport”, “driver_license”, “identity_card” and “internal_passport”. The file can be decrypted and verified using the accompanying EncryptedCredentials.
  PassportFile? selfie;

  /// Optional. Array of encrypted files with translated versions of documents provided by the user. Available if requested for “passport”, “driver_license”, “identity_card”, “internal_passport”, “utility_bill”, “bank_statement”, “rental_agreement”, “passport_registration” and “temporary_registration” types. Files can be decrypted and verified using the accompanying EncryptedCredentials.
  List<PassportFile>? translation;

  /// Base64-encoded element hash for using in PassportElementErrorUnspecified
  String hash;

  /// Creates a new [EncryptedPassportElement] object.
  EncryptedPassportElement({
    required this.type,
    this.data,
    this.phoneNumber,
    this.email,
    this.files,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    required this.hash,
  });

  /// Creates a new [EncryptedPassportElement] object from json.
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'data': data,
      'phone_number': phoneNumber,
      'email': email,
      'files': files?.map((e) => e.toJson()).toList(),
      'front_side': frontSide?.toJson(),
      'reverse_side': reverseSide?.toJson(),
      'selfie': selfie?.toJson(),
      'translation': translation?.map((e) => e.toJson()).toList(),
      'hash': hash,
    }..removeWhere((key, value) => value == null);
  }

  /// Creates a new [EncryptedPassportElement] object from json.
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    return EncryptedPassportElement(
      type: PassportType.fromJson(json['type']!),
      data: json['data'],
      phoneNumber: json['phone_number'],
      email: json['email'],
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => PassportFile.fromJson(e))
          .toList(),
      frontSide: json['front_side'] != null
          ? PassportFile.fromJson(json['front_side']!)
          : null,
      reverseSide: json['reverse_side'] != null
          ? PassportFile.fromJson(json['reverse_side']!)
          : null,
      selfie: json['selfie'] != null
          ? PassportFile.fromJson(json['selfie']!)
          : null,
      translation: (json['translation'] as List<dynamic>?)
          ?.map((e) => PassportFile.fromJson(e))
          .toList(),
      hash: json['hash']!,
    );
  }
}
