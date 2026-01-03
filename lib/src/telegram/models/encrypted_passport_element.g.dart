// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_passport_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptedPassportElement _$EncryptedPassportElementFromJson(
  Map<String, dynamic> json,
) => _EncryptedPassportElement(
  type: $enumDecode(_$PassportTypeEnumMap, json['type']),
  data: json['data'] as String?,
  phoneNumber: json['phone_number'] as String?,
  email: json['email'] as String?,
  files: (json['files'] as List<dynamic>?)
      ?.map((e) => PassportFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  frontSide: json['front_side'] == null
      ? null
      : PassportFile.fromJson(json['front_side'] as Map<String, dynamic>),
  reverseSide: json['reverse_side'] == null
      ? null
      : PassportFile.fromJson(json['reverse_side'] as Map<String, dynamic>),
  selfie: json['selfie'] == null
      ? null
      : PassportFile.fromJson(json['selfie'] as Map<String, dynamic>),
  translation: (json['translation'] as List<dynamic>?)
      ?.map((e) => PassportFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  hash: json['hash'] as String,
);

Map<String, dynamic> _$EncryptedPassportElementToJson(
  _EncryptedPassportElement instance,
) => <String, dynamic>{
  'type': _$PassportTypeEnumMap[instance.type]!,
  'data': ?instance.data,
  'phone_number': ?instance.phoneNumber,
  'email': ?instance.email,
  'files': ?instance.files,
  'front_side': ?instance.frontSide,
  'reverse_side': ?instance.reverseSide,
  'selfie': ?instance.selfie,
  'translation': ?instance.translation,
  'hash': instance.hash,
};

const _$PassportTypeEnumMap = {
  PassportType.passport: 'passport',
  PassportType.driverLicense: 'driver_license',
  PassportType.identityCard: 'identity_card',
  PassportType.internalPassport: 'internal_passport',
  PassportType.address: 'address',
  PassportType.utilityBill: 'utility_bill',
  PassportType.bankStatement: 'bank_statement',
  PassportType.rentalAgreement: 'rental_agreement',
  PassportType.passportRegistration: 'passport_registration',
  PassportType.temporaryRegistration: 'temporary_registration',
  PassportType.phoneNumber: 'phone_number',
  PassportType.email: 'email',
  PassportType.personalDetails: 'personal_details',
};
