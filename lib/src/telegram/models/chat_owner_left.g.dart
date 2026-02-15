// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_owner_left.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatOwnerLeft _$ChatOwnerLeftFromJson(Map<String, dynamic> json) =>
    _ChatOwnerLeft(
      newOwner: json['new_owner'] == null
          ? null
          : User.fromJson(json['new_owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatOwnerLeftToJson(_ChatOwnerLeft instance) =>
    <String, dynamic>{'new_owner': ?instance.newOwner};
