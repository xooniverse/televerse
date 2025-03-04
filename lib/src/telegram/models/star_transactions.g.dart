// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StarTransactionsImpl _$$StarTransactionsImplFromJson(
        Map<String, dynamic> json) =>
    _$StarTransactionsImpl(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => StarTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StarTransactionsImplToJson(
        _$StarTransactionsImpl instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };
