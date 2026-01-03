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
      'shipping_option_id': ?instance.shippingOptionId,
      'order_info': ?instance.orderInfo,
      'telegram_payment_charge_id': instance.telegramPaymentChargeId,
      'provider_payment_charge_id': instance.providerPaymentChargeId,
      'is_recurring': ?instance.isRecurring,
      'is_first_recurring': ?instance.isFirstRecurring,
    };
