// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_approved.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostApproved _$SuggestedPostApprovedFromJson(
  Map<String, dynamic> json,
) => _SuggestedPostApproved(
  suggestedPostMessage: json['suggested_post_message'] == null
      ? null
      : Message.fromJson(
          json['suggested_post_message'] as Map<String, dynamic>,
        ),
  price: json['price'] == null
      ? null
      : SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>),
  sendDate: (json['send_date'] as num).toInt(),
);

Map<String, dynamic> _$SuggestedPostApprovedToJson(
  _SuggestedPostApproved instance,
) => <String, dynamic>{
  'suggested_post_message': ?instance.suggestedPostMessage,
  'price': ?instance.price,
  'send_date': instance.sendDate,
};
