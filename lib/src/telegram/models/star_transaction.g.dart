// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StarTransaction _$StarTransactionFromJson(Map<String, dynamic> json) =>
    _StarTransaction(
      id: json['id'] as String,
      amount: (json['amount'] as num).toInt(),
      date: (json['date'] as num).toInt(),
      source: json['source'] == null
          ? null
          : TransactionPartner.fromJson(json['source'] as Map<String, dynamic>),
      receiver: json['receiver'] == null
          ? null
          : TransactionPartner.fromJson(
              json['receiver'] as Map<String, dynamic>),
      nanostarAmount: (json['nanostar_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StarTransactionToJson(_StarTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'date': instance.date,
      if (instance.source case final value?) 'source': value,
      if (instance.receiver case final value?) 'receiver': value,
      if (instance.nanostarAmount case final value?) 'nanostar_amount': value,
    };
