// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_button_request_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeyboardButtonRequestUsers _$KeyboardButtonRequestUsersFromJson(
        Map<String, dynamic> json) =>
    _KeyboardButtonRequestUsers(
      requestId: (json['request_id'] as num).toInt(),
      userIsBot: json['user_is_bot'] as bool?,
      userIsPremium: json['user_is_premium'] as bool?,
      maxQuantity: (json['max_quantity'] as num?)?.toInt(),
      requestName: json['request_name'] as bool?,
      requestUsername: json['request_username'] as bool?,
      requestPhoto: json['request_photo'] as bool?,
    );

Map<String, dynamic> _$KeyboardButtonRequestUsersToJson(
        _KeyboardButtonRequestUsers instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      if (instance.userIsBot case final value?) 'user_is_bot': value,
      if (instance.userIsPremium case final value?) 'user_is_premium': value,
      if (instance.maxQuantity case final value?) 'max_quantity': value,
      if (instance.requestName case final value?) 'request_name': value,
      if (instance.requestUsername case final value?) 'request_username': value,
      if (instance.requestPhoto case final value?) 'request_photo': value,
    };
