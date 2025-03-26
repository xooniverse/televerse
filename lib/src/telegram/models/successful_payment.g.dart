// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'successful_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuccessfulPayment _$SuccessfulPaymentFromJson(Map<String, dynamic> json) =>
    _SuccessfulPayment(
      currency: json['currency'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
      invoicePayload: json['invoice_payload'] as String,
      shippingOptionId: json['shipping_option_id'] as String?,
      orderInfo: json['order_info'] == null
          ? null
          : OrderInfo.fromJson(json['order_info'] as Map<String, dynamic>),
      telegramPaymentChargeId: json['telegram_payment_charge_id'] as String,
      providerPaymentChargeId: json['provider_payment_charge_id'] as String,
      isRecurring: json['is_recurring'] as bool?,
      isFirstRecurring: json['is_first_recurring'] as bool?,
    );

Map<String, dynamic> _$SuccessfulPaymentToJson(_SuccessfulPayment instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'total_amount': instance.totalAmount,
      'invoice_payload': instance.invoicePayload,
      if (instance.shippingOptionId case final value?)
        'shipping_option_id': value,
      if (instance.orderInfo case final value?) 'order_info': value,
      'telegram_payment_charge_id': instance.telegramPaymentChargeId,
      'provider_payment_charge_id': instance.providerPaymentChargeId,
      if (instance.isRecurring case final value?) 'is_recurring': value,
      if (instance.isFirstRecurring case final value?)
        'is_first_recurring': value,
    };
