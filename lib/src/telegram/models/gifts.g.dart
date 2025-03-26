// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Gifts _$GiftsFromJson(Map<String, dynamic> json) => _Gifts(
      gifts: (json['gifts'] as List<dynamic>)
          .map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GiftsToJson(_Gifts instance) => <String, dynamic>{
      'gifts': instance.gifts,
    };
