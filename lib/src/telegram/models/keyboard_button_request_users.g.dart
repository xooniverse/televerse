// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_request_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButtonRequestUsers _$KeyboardButtonRequestUsersFromJson(
  Map<String, dynamic> json,
) => _KeyboardButtonRequestUsers(
  requestId: (json['request_id'] as num).toInt(),
  userIsBot: json['user_is_bot'] as bool?,
  userIsPremium: json['user_is_premium'] as bool?,
  maxQuantity: (json['max_quantity'] as num?)?.toInt(),
  requestName: json['request_name'] as bool?,
  requestUsername: json['request_username'] as bool?,
  requestPhoto: json['request_photo'] as bool?,
);

Map<String, dynamic> _$KeyboardButtonRequestUsersToJson(
  _KeyboardButtonRequestUsers instance,
) => <String, dynamic>{
  'request_id': instance.requestId,
  'user_is_bot': ?instance.userIsBot,
  'user_is_premium': ?instance.userIsPremium,
  'max_quantity': ?instance.maxQuantity,
  'request_name': ?instance.requestName,
  'request_username': ?instance.requestUsername,
  'request_photo': ?instance.requestPhoto,
};
