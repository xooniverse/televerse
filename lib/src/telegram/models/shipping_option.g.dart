// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingOptionImpl _$$ShippingOptionImplFromJson(Map<String, dynamic> json) =>
    _$ShippingOptionImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      prices: (json['prices'] as List<dynamic>)
          .map((e) => LabeledPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShippingOptionImplToJson(
        _$ShippingOptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'prices': instance.prices,
    };
