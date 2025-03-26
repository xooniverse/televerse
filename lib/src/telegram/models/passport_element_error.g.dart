// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_element_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassportElementErrorDataField _$PassportElementErrorDataFieldFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorDataField(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.data,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fieldName: json['field_name'] as String,
      dataHash: json['data_hash'] as String,
    );

Map<String, dynamic> _$PassportElementErrorDataFieldToJson(
        PassportElementErrorDataField instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'field_name': instance.fieldName,
      'data_hash': instance.dataHash,
    };

const _$PassportElementErrorSourceEnumMap = {
  PassportElementErrorSource.data: 'data',
  PassportElementErrorSource.frontSide: 'front_side',
  PassportElementErrorSource.reverseSide: 'reverse_side',
  PassportElementErrorSource.selfie: 'selfie',
  PassportElementErrorSource.file: 'file',
  PassportElementErrorSource.files: 'files',
  PassportElementErrorSource.translationFile: 'translation_file',
  PassportElementErrorSource.translationFiles: 'translation_files',
  PassportElementErrorSource.unspecified: 'unspecified',
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

PassportElementErrorFrontSide _$PassportElementErrorFrontSideFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorFrontSide(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.frontSide,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHash: json['file_hash'] as String,
    );

Map<String, dynamic> _$PassportElementErrorFrontSideToJson(
        PassportElementErrorFrontSide instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

PassportElementErrorReverseSide _$PassportElementErrorReverseSideFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorReverseSide(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.reverseSide,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHash: json['file_hash'] as String,
    );

Map<String, dynamic> _$PassportElementErrorReverseSideToJson(
        PassportElementErrorReverseSide instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

PassportElementErrorSelfie _$PassportElementErrorSelfieFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorSelfie(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.selfie,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHash: json['file_hash'] as String,
    );

Map<String, dynamic> _$PassportElementErrorSelfieToJson(
        PassportElementErrorSelfie instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

PassportElementErrorFile _$PassportElementErrorFileFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorFile(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.file,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHash: json['file_hash'] as String,
    );

Map<String, dynamic> _$PassportElementErrorFileToJson(
        PassportElementErrorFile instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

PassportElementErrorFiles _$PassportElementErrorFilesFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorFiles(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.files,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHashes: (json['file_hashes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PassportElementErrorFilesToJson(
        PassportElementErrorFiles instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hashes': instance.fileHashes,
    };

PassportElementErrorTranslationFile
    _$PassportElementErrorTranslationFileFromJson(Map<String, dynamic> json) =>
        PassportElementErrorTranslationFile(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.translationFile,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fileHash: json['file_hash'] as String,
        );

Map<String, dynamic> _$PassportElementErrorTranslationFileToJson(
        PassportElementErrorTranslationFile instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

PassportElementErrorTranslationFiles
    _$PassportElementErrorTranslationFilesFromJson(Map<String, dynamic> json) =>
        PassportElementErrorTranslationFiles(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.translationFiles,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fileHashes: (json['file_hashes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$PassportElementErrorTranslationFilesToJson(
        PassportElementErrorTranslationFiles instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hashes': instance.fileHashes,
    };

PassportElementErrorUnspecified _$PassportElementErrorUnspecifiedFromJson(
        Map<String, dynamic> json) =>
    PassportElementErrorUnspecified(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.unspecified,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      elementHash: json['element_hash'] as String,
    );

Map<String, dynamic> _$PassportElementErrorUnspecifiedToJson(
        PassportElementErrorUnspecified instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'element_hash': instance.elementHash,
    };
