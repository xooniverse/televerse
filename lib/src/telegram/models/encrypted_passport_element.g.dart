// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_passport_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EncryptedPassportElementImpl _$$EncryptedPassportElementImplFromJson(
        Map<String, dynamic> json) =>
    _$EncryptedPassportElementImpl(
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

Map<String, dynamic> _$$EncryptedPassportElementImplToJson(
        _$EncryptedPassportElementImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      if (instance.data case final value?) 'data': value,
      if (instance.phoneNumber case final value?) 'phone_number': value,
      if (instance.email case final value?) 'email': value,
      if (instance.files case final value?) 'files': value,
      if (instance.frontSide case final value?) 'front_side': value,
      if (instance.reverseSide case final value?) 'reverse_side': value,
      if (instance.selfie case final value?) 'selfie': value,
      if (instance.translation case final value?) 'translation': value,
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
