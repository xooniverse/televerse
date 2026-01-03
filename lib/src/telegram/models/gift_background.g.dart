// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_background.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GiftBackground _$GiftBackgroundFromJson(Map<String, dynamic> json) =>
    _GiftBackground(
      centerColor: (json['center_color'] as num).toInt(),
      edgeColor: (json['edge_color'] as num).toInt(),
      textColor: (json['text_color'] as num).toInt(),
    );

Map<String, dynamic> _$GiftBackgroundToJson(_GiftBackground instance) =>
    <String, dynamic>{
      'center_color': instance.centerColor,
      'edge_color': instance.edgeColor,
      'text_color': instance.textColor,
    };
