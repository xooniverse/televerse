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
  'last_name': ?instance.lastName,
  'user_id': ?instance.userId,
  'vcard': ?instance.vcard,
};
