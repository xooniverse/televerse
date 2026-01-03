// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labeled_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabeledPrice _$LabeledPriceFromJson(Map<String, dynamic> json) =>
    _LabeledPrice(
      label: json['label'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$LabeledPriceToJson(_LabeledPrice instance) =>
    <String, dynamic>{'label': instance.label, 'amount': instance.amount};
