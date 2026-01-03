// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_withdrawal_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RevenueWithdrawalStatePending _$RevenueWithdrawalStatePendingFromJson(
  Map<String, dynamic> json,
) => RevenueWithdrawalStatePending(
  type:
      $enumDecodeNullable(_$RevenueWithdrawalStateTypeEnumMap, json['type']) ??
      RevenueWithdrawalStateType.pending,
);

Map<String, dynamic> _$RevenueWithdrawalStatePendingToJson(
  RevenueWithdrawalStatePending instance,
) => <String, dynamic>{
  'type': _$RevenueWithdrawalStateTypeEnumMap[instance.type]!,
};

const _$RevenueWithdrawalStateTypeEnumMap = {
  RevenueWithdrawalStateType.pending: 'pending',
  RevenueWithdrawalStateType.succeeded: 'succeeded',
  RevenueWithdrawalStateType.failed: 'failed',
};

RevenueWithdrawalStateSucceeded _$RevenueWithdrawalStateSucceededFromJson(
  Map<String, dynamic> json,
) => RevenueWithdrawalStateSucceeded(
  type:
      $enumDecodeNullable(_$RevenueWithdrawalStateTypeEnumMap, json['type']) ??
      RevenueWithdrawalStateType.succeeded,
  date: (json['date'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$RevenueWithdrawalStateSucceededToJson(
  RevenueWithdrawalStateSucceeded instance,
) => <String, dynamic>{
  'type': _$RevenueWithdrawalStateTypeEnumMap[instance.type]!,
  'date': instance.date,
  'url': instance.url,
};

RevenueWithdrawalStateFailed _$RevenueWithdrawalStateFailedFromJson(
  Map<String, dynamic> json,
) => RevenueWithdrawalStateFailed(
  type:
      $enumDecodeNullable(_$RevenueWithdrawalStateTypeEnumMap, json['type']) ??
      RevenueWithdrawalStateType.failed,
);

Map<String, dynamic> _$RevenueWithdrawalStateFailedToJson(
  RevenueWithdrawalStateFailed instance,
) => <String, dynamic>{
  'type': _$RevenueWithdrawalStateTypeEnumMap[instance.type]!,
};
