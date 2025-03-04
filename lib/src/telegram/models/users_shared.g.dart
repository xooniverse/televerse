// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_shared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersSharedImpl _$$UsersSharedImplFromJson(Map<String, dynamic> json) =>
    _$UsersSharedImpl(
      requestId: (json['request_id'] as num).toInt(),
      users: (json['users'] as List<dynamic>)
          .map((e) => SharedUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsersSharedImplToJson(_$UsersSharedImpl instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'users': instance.users,
    };
