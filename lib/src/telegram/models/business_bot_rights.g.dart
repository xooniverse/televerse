// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_bot_rights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BusinessBotRights _$BusinessBotRightsFromJson(Map<String, dynamic> json) =>
    _BusinessBotRights(
      canReply: json['can_reply'] as bool?,
      canReadMessages: json['can_read_messages'] as bool?,
      canDeleteOutgoingMessages: json['can_delete_outgoing_messages'] as bool?,
      canDeleteAllMessages: json['can_delete_all_messages'] as bool?,
      canEditName: json['can_edit_name'] as bool?,
      canEditBio: json['can_edit_bio'] as bool?,
      canEditProfilePhoto: json['can_edit_profile_photo'] as bool?,
      canEditUsername: json['can_edit_username'] as bool?,
      canChangeGiftSettings: json['can_change_gift_settings'] as bool?,
      canViewGiftsAndStars: json['can_view_gifts_and_stars'] as bool?,
      canConvertGiftsToStars: json['can_convert_gifts_to_stars'] as bool?,
      canTransferAndUpgradeGifts:
          json['can_transfer_and_upgrade_gifts'] as bool?,
      canTransferStars: json['can_transfer_stars'] as bool?,
      canManageStories: json['can_manage_stories'] as bool?,
    );

Map<String, dynamic> _$BusinessBotRightsToJson(_BusinessBotRights instance) =>
    <String, dynamic>{
      'can_reply': ?instance.canReply,
      'can_read_messages': ?instance.canReadMessages,
      'can_delete_outgoing_messages': ?instance.canDeleteOutgoingMessages,
      'can_delete_all_messages': ?instance.canDeleteAllMessages,
      'can_edit_name': ?instance.canEditName,
      'can_edit_bio': ?instance.canEditBio,
      'can_edit_profile_photo': ?instance.canEditProfilePhoto,
      'can_edit_username': ?instance.canEditUsername,
      'can_change_gift_settings': ?instance.canChangeGiftSettings,
      'can_view_gifts_and_stars': ?instance.canViewGiftsAndStars,
      'can_convert_gifts_to_stars': ?instance.canConvertGiftsToStars,
      'can_transfer_and_upgrade_gifts': ?instance.canTransferAndUpgradeGifts,
      'can_transfer_stars': ?instance.canTransferStars,
      'can_manage_stories': ?instance.canManageStories,
    };
