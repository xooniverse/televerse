// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_invite_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatInviteLink _$ChatInviteLinkFromJson(Map<String, dynamic> json) =>
    _ChatInviteLink(
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

Map<String, dynamic> _$ChatInviteLinkToJson(_ChatInviteLink instance) =>
    <String, dynamic>{
      'invite_link': instance.inviteLink,
      'creator': ?instance.creator,
      'creates_join_request': ?instance.createsJoinRequest,
      'is_primary': ?instance.isPrimary,
      'is_revoked': ?instance.isRevoked,
      'name': ?instance.name,
      'expire_date': ?instance.expireDate,
      'member_limit': ?instance.memberLimit,
      'pending_member_count': ?instance.pendingMemberCount,
    };
