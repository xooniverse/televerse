// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostInfo _$SuggestedPostInfoFromJson(Map<String, dynamic> json) =>
    _SuggestedPostInfo(
      state: json['state'] as String,
      price: json['price'] == null
          ? null
          : SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>),
      sendDate: (json['send_date'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SuggestedPostInfoToJson(_SuggestedPostInfo instance) =>
    <String, dynamic>{
      'state': instance.state,
      if (instance.price case final value?) 'price': value,
      if (instance.sendDate case final value?) 'send_date': value,
    };
