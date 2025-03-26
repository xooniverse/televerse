// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShippingQuery _$ShippingQueryFromJson(Map<String, dynamic> json) =>
    _ShippingQuery(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      invoicePayload: json['invoice_payload'] as String,
      shippingAddress: ShippingAddress.fromJson(
          json['shipping_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShippingQueryToJson(_ShippingQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'invoice_payload': instance.invoicePayload,
      'shipping_address': instance.shippingAddress,
    };
