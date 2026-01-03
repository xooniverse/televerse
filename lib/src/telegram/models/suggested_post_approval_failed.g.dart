// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggested_post_approval_failed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SuggestedPostApprovalFailed _$SuggestedPostApprovalFailedFromJson(
  Map<String, dynamic> json,
) => _SuggestedPostApprovalFailed(
  suggestedPostMessage: json['suggested_post_message'] == null
      ? null
      : Message.fromJson(
          json['suggested_post_message'] as Map<String, dynamic>,
        ),
  price: SuggestedPostPrice.fromJson(json['price'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SuggestedPostApprovalFailedToJson(
  _SuggestedPostApprovalFailed instance,
) => <String, dynamic>{
  'suggested_post_message': ?instance.suggestedPostMessage,
  'price': instance.price,
};
