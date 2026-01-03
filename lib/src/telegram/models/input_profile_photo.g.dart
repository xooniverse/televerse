// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_profile_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputProfilePhotoStatic _$InputProfilePhotoStaticFromJson(
  Map<String, dynamic> json,
) => InputProfilePhotoStatic(
  type:
      $enumDecodeNullable(_$InputProfilePhotoTypeEnumMap, json['type']) ??
      InputProfilePhotoType.static,
  photo: const InputFileConverter().fromJson(json['photo'] as String),
);

Map<String, dynamic> _$InputProfilePhotoStaticToJson(
  InputProfilePhotoStatic instance,
) => <String, dynamic>{
  'type': _$InputProfilePhotoTypeEnumMap[instance.type]!,
  'photo': const InputFileConverter().toJson(instance.photo),
};

const _$InputProfilePhotoTypeEnumMap = {
  InputProfilePhotoType.static: 'static',
  InputProfilePhotoType.animated: 'animated',
};

InputProfilePhotoAnimated _$InputProfilePhotoAnimatedFromJson(
  Map<String, dynamic> json,
) => InputProfilePhotoAnimated(
  type:
      $enumDecodeNullable(_$InputProfilePhotoTypeEnumMap, json['type']) ??
      InputProfilePhotoType.animated,
  animation: const InputFileConverter().fromJson(json['animation'] as String),
  mainFrameTimestamp: (json['main_frame_timestamp'] as num?)?.toDouble(),
);

Map<String, dynamic> _$InputProfilePhotoAnimatedToJson(
  InputProfilePhotoAnimated instance,
) => <String, dynamic>{
  'type': _$InputProfilePhotoTypeEnumMap[instance.type]!,
  'animation': const InputFileConverter().toJson(instance.animation),
  'main_frame_timestamp': ?instance.mainFrameTimestamp,
};
