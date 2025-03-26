// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
      phoneNumber: json['phone_number'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      vcard: json['vcard'] as String?,
    );

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'first_name': instance.firstName,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.userId case final value?) 'user_id': value,
      if (instance.vcard case final value?) 'vcard': value,
    };
