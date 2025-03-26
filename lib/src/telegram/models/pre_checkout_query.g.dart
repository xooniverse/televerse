// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_checkout_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PreCheckoutQuery _$PreCheckoutQueryFromJson(Map<String, dynamic> json) =>
    _PreCheckoutQuery(
      id: json['id'] as String,
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      currency: json['currency'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
      invoicePayload: json['invoice_payload'] as String,
      shippingOptionId: json['shipping_option_id'] as String?,
      orderInfo: json['order_info'] == null
          ? null
          : OrderInfo.fromJson(json['order_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreCheckoutQueryToJson(_PreCheckoutQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'currency': instance.currency,
      'total_amount': instance.totalAmount,
      'invoice_payload': instance.invoicePayload,
      if (instance.shippingOptionId case final value?)
        'shipping_option_id': value,
      if (instance.orderInfo case final value?) 'order_info': value,
    };
