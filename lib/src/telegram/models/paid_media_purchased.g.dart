// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paid_media_purchased.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaidMediaPurchased _$PaidMediaPurchasedFromJson(Map<String, dynamic> json) =>
    _PaidMediaPurchased(
      from: User.fromJson(json['from'] as Map<String, dynamic>),
      paidMediaPayload: json['paid_media_payload'] as String,
    );

Map<String, dynamic> _$PaidMediaPurchasedToJson(_PaidMediaPurchased instance) =>
    <String, dynamic>{
      'from': instance.from,
      'paid_media_payload': instance.paidMediaPayload,
    };
