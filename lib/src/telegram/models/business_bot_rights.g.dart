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
      if (instance.canReply case final value?) 'can_reply': value,
      if (instance.canReadMessages case final value?)
        'can_read_messages': value,
      if (instance.canDeleteOutgoingMessages case final value?)
        'can_delete_outgoing_messages': value,
      if (instance.canDeleteAllMessages case final value?)
        'can_delete_all_messages': value,
      if (instance.canEditName case final value?) 'can_edit_name': value,
      if (instance.canEditBio case final value?) 'can_edit_bio': value,
      if (instance.canEditProfilePhoto case final value?)
        'can_edit_profile_photo': value,
      if (instance.canEditUsername case final value?)
        'can_edit_username': value,
      if (instance.canChangeGiftSettings case final value?)
        'can_change_gift_settings': value,
      if (instance.canViewGiftsAndStars case final value?)
        'can_view_gifts_and_stars': value,
      if (instance.canConvertGiftsToStars case final value?)
        'can_convert_gifts_to_stars': value,
      if (instance.canTransferAndUpgradeGifts case final value?)
        'can_transfer_and_upgrade_gifts': value,
      if (instance.canTransferStars case final value?)
        'can_transfer_stars': value,
      if (instance.canManageStories case final value?)
        'can_manage_stories': value,
    };
