// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StarAmount _$StarAmountFromJson(Map<String, dynamic> json) => _StarAmount(
      amount: (json['amount'] as num).toInt(),
      nanostarAmount: (json['nanostar_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StarAmountToJson(_StarAmount instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      if (instance.nanostarAmount case final value?) 'nanostar_amount': value,
    };
