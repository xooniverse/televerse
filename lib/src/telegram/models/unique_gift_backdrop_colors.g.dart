// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_gift_backdrop_colors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniqueGiftBackdropColors _$UniqueGiftBackdropColorsFromJson(
  Map<String, dynamic> json,
) => _UniqueGiftBackdropColors(
  centerColor: (json['center_color'] as num).toInt(),
  edgeColor: (json['edge_color'] as num).toInt(),
  symbolColor: (json['symbol_color'] as num).toInt(),
  textColor: (json['text_color'] as num).toInt(),
);

Map<String, dynamic> _$UniqueGiftBackdropColorsToJson(
  _UniqueGiftBackdropColors instance,
) => <String, dynamic>{
  'center_color': instance.centerColor,
  'edge_color': instance.edgeColor,
  'symbol_color': instance.symbolColor,
  'text_color': instance.textColor,
};
