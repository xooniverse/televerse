// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SharedUserImpl _$$SharedUserImplFromJson(Map<String, dynamic> json) =>
    _$SharedUserImpl(
      userId: (json['user_id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => PhotoSize.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SharedUserImplToJson(_$SharedUserImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.username case final value?) 'username': value,
      if (instance.photo case final value?) 'photo': value,
    };
