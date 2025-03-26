// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invoice _$InvoiceFromJson(Map<String, dynamic> json) => _Invoice(
      title: json['title'] as String,
      description: json['description'] as String,
      startParameter: json['start_parameter'] as String,
      currency: json['currency'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
    );

Map<String, dynamic> _$InvoiceToJson(_Invoice instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'start_parameter': instance.startParameter,
      'currency': instance.currency,
      'total_amount': instance.totalAmount,
    };
