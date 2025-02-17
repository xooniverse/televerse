// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_withdrawal_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RevenueWithdrawalStatePendingImpl
    _$$RevenueWithdrawalStatePendingImplFromJson(Map<String, dynamic> json) =>
        _$RevenueWithdrawalStatePendingImpl(
          type: $enumDecodeNullable(
                  _$RevenueWithdrawalStateTypeEnumMap, json['type']) ??
              RevenueWithdrawalStateType.pending,
        );

Map<String, dynamic> _$$RevenueWithdrawalStatePendingImplToJson(
        _$RevenueWithdrawalStatePendingImpl instance) =>
    <String, dynamic>{
      'type': _$RevenueWithdrawalStateTypeEnumMap[instance.type]!,
    };

const _$RevenueWithdrawalStateTypeEnumMap = {
  RevenueWithdrawalStateType.pending: 'pending',
  RevenueWithdrawalStateType.succeeded: 'succeeded',
  RevenueWithdrawalStateType.failed: 'failed',
};

_$RevenueWithdrawalStateSucceededImpl
    _$$RevenueWithdrawalStateSucceededImplFromJson(Map<String, dynamic> json) =>
        _$RevenueWithdrawalStateSucceededImpl(
          type: $enumDecodeNullable(
                  _$RevenueWithdrawalStateTypeEnumMap, json['type']) ??
              RevenueWithdrawalStateType.succeeded,
          date: (json['date'] as num).toInt(),
          url: json['url'] as String,
        );

Map<String, dynamic> _$$RevenueWithdrawalStateSucceededImplToJson(
        _$RevenueWithdrawalStateSucceededImpl instance) =>
    <String, dynamic>{
      'type': _$RevenueWithdrawalStateTypeEnumMap[instance.type]!,
      'date': instance.date,
      'url': instance.url,
    };

_$RevenueWithdrawalStateFailedImpl _$$RevenueWithdrawalStateFailedImplFromJson(
        Map<String, dynamic> json) =>
    _$RevenueWithdrawalStateFailedImpl(
      type: $enumDecodeNullable(
              _$RevenueWithdrawalStateTypeEnumMap, json['type']) ??
          RevenueWithdrawalStateType.failed,
    );

Map<String, dynamic> _$$RevenueWithdrawalStateFailedImplToJson(
        _$RevenueWithdrawalStateFailedImpl instance) =>
    <String, dynamic>{
      'type': _$RevenueWithdrawalStateTypeEnumMap[instance.type]!,
    };
