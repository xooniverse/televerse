// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_intro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessIntro _$BusinessIntroFromJson(Map<String, dynamic> json) =>
    _BusinessIntro(
      title: json['title'] as String?,
      message: json['message'] as String?,
      sticker: json['sticker'] == null
          ? null
          : Sticker.fromJson(json['sticker'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BusinessIntroToJson(_BusinessIntro instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.message case final value?) 'message': value,
      if (instance.sticker case final value?) 'sticker': value,
    };
