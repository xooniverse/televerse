// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_invite_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatInviteLinkImpl _$$ChatInviteLinkImplFromJson(Map<String, dynamic> json) =>
    _$ChatInviteLinkImpl(
      inviteLink: json['invite_link'] as String,
      creator: json['creator'] == null
          ? null
          : User.fromJson(json['creator'] as Map<String, dynamic>),
      createsJoinRequest: json['creates_join_request'] as bool?,
      isPrimary: json['is_primary'] as bool?,
      isRevoked: json['is_revoked'] as bool?,
      name: json['name'] as String?,
      expireDate: (json['expire_date'] as num?)?.toInt(),
      memberLimit: (json['member_limit'] as num?)?.toInt(),
      pendingMemberCount: (json['pending_member_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChatInviteLinkImplToJson(
        _$ChatInviteLinkImpl instance) =>
    <String, dynamic>{
      'invite_link': instance.inviteLink,
      if (instance.creator case final value?) 'creator': value,
      if (instance.createsJoinRequest case final value?)
        'creates_join_request': value,
      if (instance.isPrimary case final value?) 'is_primary': value,
      if (instance.isRevoked case final value?) 'is_revoked': value,
      if (instance.name case final value?) 'name': value,
      if (instance.expireDate case final value?) 'expire_date': value,
      if (instance.memberLimit case final value?) 'member_limit': value,
      if (instance.pendingMemberCount case final value?)
        'pending_member_count': value,
    };
