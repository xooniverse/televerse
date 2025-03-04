// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftsImpl _$$GiftsImplFromJson(Map<String, dynamic> json) => _$GiftsImpl(
      gifts: (json['gifts'] as List<dynamic>)
          .map((e) => Gift.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GiftsImplToJson(_$GiftsImpl instance) =>
    <String, dynamic>{
      'gifts': instance.gifts,
    };
