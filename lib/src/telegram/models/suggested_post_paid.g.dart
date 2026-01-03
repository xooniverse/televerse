// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_paid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostPaid _$SuggestedPostPaidFromJson(Map<String, dynamic> json) =>
    _SuggestedPostPaid(
      suggestedPostMessage: json['suggested_post_message'] == null
          ? null
          : Message.fromJson(
              json['suggested_post_message'] as Map<String, dynamic>,
            ),
      currency: json['currency'] as String,
      amount: (json['amount'] as num?)?.toInt(),
      starAmount: json['star_amount'] == null
          ? null
          : StarAmount.fromJson(json['star_amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SuggestedPostPaidToJson(_SuggestedPostPaid instance) =>
    <String, dynamic>{
      'suggested_post_message': ?instance.suggestedPostMessage,
      'currency': instance.currency,
      'amount': ?instance.amount,
      'star_amount': ?instance.starAmount,
    };
