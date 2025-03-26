// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_shared.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsersShared _$UsersSharedFromJson(Map<String, dynamic> json) => _UsersShared(
      requestId: (json['request_id'] as num).toInt(),
      users: (json['users'] as List<dynamic>)
          .map((e) => SharedUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersSharedToJson(_UsersShared instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'users': instance.users,
    };
