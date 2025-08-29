// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_refunded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostRefunded _$SuggestedPostRefundedFromJson(
        Map<String, dynamic> json) =>
    _SuggestedPostRefunded(
      suggestedPostMessage: json['suggested_post_message'] == null
          ? null
          : Message.fromJson(
              json['suggested_post_message'] as Map<String, dynamic>),
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$SuggestedPostRefundedToJson(
        _SuggestedPostRefunded instance) =>
    <String, dynamic>{
      if (instance.suggestedPostMessage case final value?)
        'suggested_post_message': value,
      'reason': instance.reason,
    };
