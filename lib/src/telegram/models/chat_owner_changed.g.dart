// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_owner_changed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatOwnerChanged _$ChatOwnerChangedFromJson(Map<String, dynamic> json) =>
    _ChatOwnerChanged(
      newOwner: User.fromJson(json['new_owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatOwnerChangedToJson(_ChatOwnerChanged instance) =>
    <String, dynamic>{'new_owner': instance.newOwner};
