// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passport_element_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PassportElementErrorDataFieldImpl
    _$$PassportElementErrorDataFieldImplFromJson(Map<String, dynamic> json) =>
        _$PassportElementErrorDataFieldImpl(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.data,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fieldName: json['field_name'] as String,
          dataHash: json['data_hash'] as String,
        );

Map<String, dynamic> _$$PassportElementErrorDataFieldImplToJson(
        _$PassportElementErrorDataFieldImpl instance) =>
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

_$PassportElementErrorFrontSideImpl
    _$$PassportElementErrorFrontSideImplFromJson(Map<String, dynamic> json) =>
        _$PassportElementErrorFrontSideImpl(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.frontSide,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fileHash: json['file_hash'] as String,
        );

Map<String, dynamic> _$$PassportElementErrorFrontSideImplToJson(
        _$PassportElementErrorFrontSideImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

_$PassportElementErrorReverseSideImpl
    _$$PassportElementErrorReverseSideImplFromJson(Map<String, dynamic> json) =>
        _$PassportElementErrorReverseSideImpl(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.reverseSide,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fileHash: json['file_hash'] as String,
        );

Map<String, dynamic> _$$PassportElementErrorReverseSideImplToJson(
        _$PassportElementErrorReverseSideImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

_$PassportElementErrorSelfieImpl _$$PassportElementErrorSelfieImplFromJson(
        Map<String, dynamic> json) =>
    _$PassportElementErrorSelfieImpl(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.selfie,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHash: json['file_hash'] as String,
    );

Map<String, dynamic> _$$PassportElementErrorSelfieImplToJson(
        _$PassportElementErrorSelfieImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

_$PassportElementErrorFileImpl _$$PassportElementErrorFileImplFromJson(
        Map<String, dynamic> json) =>
    _$PassportElementErrorFileImpl(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.file,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHash: json['file_hash'] as String,
    );

Map<String, dynamic> _$$PassportElementErrorFileImplToJson(
        _$PassportElementErrorFileImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

_$PassportElementErrorFilesImpl _$$PassportElementErrorFilesImplFromJson(
        Map<String, dynamic> json) =>
    _$PassportElementErrorFilesImpl(
      source: $enumDecodeNullable(
              _$PassportElementErrorSourceEnumMap, json['source']) ??
          PassportElementErrorSource.files,
      type: $enumDecode(_$PassportTypeEnumMap, json['type']),
      message: json['message'] as String,
      fileHashes: (json['file_hashes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PassportElementErrorFilesImplToJson(
        _$PassportElementErrorFilesImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hashes': instance.fileHashes,
    };

_$PassportElementErrorTranslationFileImpl
    _$$PassportElementErrorTranslationFileImplFromJson(
            Map<String, dynamic> json) =>
        _$PassportElementErrorTranslationFileImpl(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.translationFile,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fileHash: json['file_hash'] as String,
        );

Map<String, dynamic> _$$PassportElementErrorTranslationFileImplToJson(
        _$PassportElementErrorTranslationFileImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hash': instance.fileHash,
    };

_$PassportElementErrorTranslationFilesImpl
    _$$PassportElementErrorTranslationFilesImplFromJson(
            Map<String, dynamic> json) =>
        _$PassportElementErrorTranslationFilesImpl(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.translationFiles,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          fileHashes: (json['file_hashes'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$$PassportElementErrorTranslationFilesImplToJson(
        _$PassportElementErrorTranslationFilesImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'file_hashes': instance.fileHashes,
    };

_$PassportElementErrorUnspecifiedImpl
    _$$PassportElementErrorUnspecifiedImplFromJson(Map<String, dynamic> json) =>
        _$PassportElementErrorUnspecifiedImpl(
          source: $enumDecodeNullable(
                  _$PassportElementErrorSourceEnumMap, json['source']) ??
              PassportElementErrorSource.unspecified,
          type: $enumDecode(_$PassportTypeEnumMap, json['type']),
          message: json['message'] as String,
          elementHash: json['element_hash'] as String,
        );

Map<String, dynamic> _$$PassportElementErrorUnspecifiedImplToJson(
        _$PassportElementErrorUnspecifiedImpl instance) =>
    <String, dynamic>{
      'source': _$PassportElementErrorSourceEnumMap[instance.source]!,
      'type': instance.type,
      'message': instance.message,
      'element_hash': instance.elementHash,
    };
