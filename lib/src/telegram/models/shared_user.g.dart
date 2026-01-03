// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SharedUser _$SharedUserFromJson(Map<String, dynamic> json) => _SharedUser(
  userId: (json['user_id'] as num).toInt(),
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  username: json['username'] as String?,
  photo: (json['photo'] as List<dynamic>?)
      ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SharedUserToJson(_SharedUser instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'username': ?instance.username,
      'photo': ?instance.photo,
    };
