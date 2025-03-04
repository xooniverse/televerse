// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labeled_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabeledPriceImpl _$$LabeledPriceImplFromJson(Map<String, dynamic> json) =>
    _$LabeledPriceImpl(
      label: json['label'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$$LabeledPriceImplToJson(_$LabeledPriceImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
    };
