// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceImpl _$$InvoiceImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      startParameter: json['start_parameter'] as String,
      currency: json['currency'] as String,
      totalAmount: (json['total_amount'] as num).toInt(),
    );

Map<String, dynamic> _$$InvoiceImplToJson(_$InvoiceImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'start_parameter': instance.startParameter,
      'currency': instance.currency,
      'total_amount': instance.totalAmount,
    };
