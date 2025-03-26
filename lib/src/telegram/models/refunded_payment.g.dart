// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refunded_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefundedPayment _$RefundedPaymentFromJson(Map<String, dynamic> json) =>
    _RefundedPayment(
      currency: json['currency'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
      invoicePayload: json['invoice_payload'] as String,
      telegramPaymentChargeId: json['telegram_payment_charge_id'] as String,
      providerPaymentChargeId: json['provider_payment_charge_id'] as String?,
    );

Map<String, dynamic> _$RefundedPaymentToJson(_RefundedPayment instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'total_amount': instance.totalAmount,
      'invoice_payload': instance.invoicePayload,
      'telegram_payment_charge_id': instance.telegramPaymentChargeId,
      if (instance.providerPaymentChargeId case final value?)
        'provider_payment_charge_id': value,
    };
