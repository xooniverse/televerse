// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paid_media_purchased.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaidMediaPurchasedImpl _$$PaidMediaPurchasedImplFromJson(
        Map<String, dynamic> json) =>
    _$PaidMediaPurchasedImpl(
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      paidMediaPayload: json['paid_media_payload'] as String,
    );

Map<String, dynamic> _$$PaidMediaPurchasedImplToJson(
        _$PaidMediaPurchasedImpl instance) =>
    <String, dynamic>{
      'from': instance.from,
      'paid_media_payload': instance.paidMediaPayload,
    };
