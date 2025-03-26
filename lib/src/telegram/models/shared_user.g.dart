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
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.username case final value?) 'username': value,
      if (instance.photo case final value?) 'photo': value,
    };
