// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StarTransactions _$StarTransactionsFromJson(Map<String, dynamic> json) =>
    _StarTransactions(
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => StarTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StarTransactionsToJson(_StarTransactions instance) =>
    <String, dynamic>{'transactions': instance.transactions};
