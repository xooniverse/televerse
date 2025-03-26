// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_full_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatFullInfo _$ChatFullInfoFromJson(Map<String, dynamic> json) =>
    _ChatFullInfo(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$ChatTypeEnumMap, json['type']),
      title: json['title'] as String?,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      isForum: json['is_forum'] as bool?,
      photo: json['photo'] == null
          ? null
          : ChatPhoto.fromJson(json['photo'] as Map<String, dynamic>),
      activeUsernames: (json['active_usernames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bio: json['bio'] as String?,
      hasPrivateForwards: json['has_private_forwards'] as bool?,
      hasRestrictedVoiceAndVideoMessages:
          json['has_restricted_voice_and_video_messages'] as bool?,
      joinToSendMessages: json['join_to_send_messages'] as bool?,
      joinByRequest: json['join_by_request'] as bool?,
      description: json['description'] as String?,
      inviteLink: json['invite_link'] as String?,
      pinnedMessage: json['pinned_message'] == null
          ? null
          : Message.fromJson(json['pinned_message'] as Map<String, dynamic>),
      permissions: json['permissions'] == null
          ? null
          : ChatPermissions.fromJson(
              json['permissions'] as Map<String, dynamic>),
      slowModeDelay: (json['slow_mode_delay'] as num?)?.toInt(),
      messageAutoDeleteTime:
          (json['message_auto_delete_time'] as num?)?.toInt(),
      hasProtectedContent: json['has_protected_content'] as bool?,
      stickerSetName: json['sticker_set_name'] as String?,
      canSetStickerSet: json['can_set_sticker_set'] as bool?,
      linkedChatId: (json['linked_chat_id'] as num?)?.toInt(),
      location: json['location'] == null
          ? null
          : ChatLocation.fromJson(json['location'] as Map<String, dynamic>),
      hasHiddenMembers: json['has_hidden_members'] as bool?,
      hasAggressiveAntiSpamEnabled:
          json['has_aggressive_anti_spam_enabled'] as bool?,
      emojiStatusExpirationDate:
          (json['emoji_status_expiration_date'] as num?)?.toInt(),
      availableReactions: (json['available_reactions'] as List<dynamic>?)
          ?.map((e) => ReactionType.fromJson(e as Map<String, dynamic>))
          .toList(),
      emojiStatusCustomEmojiId: json['emoji_status_custom_emoji_id'] as String?,
      accentColorId: (json['accent_color_id'] as num?)?.toInt(),
      backgroundCustomEmojiId: json['background_custom_emoji_id'] as String?,
      profileAccentColorId: (json['profile_accent_color_id'] as num?)?.toInt(),
      profileBackgroundCustomEmojiId:
          json['profile_background_custom_emoji_id'] as String?,
      hasVisibleHistory: json['has_visible_history'] as bool?,
      unrestrictBoostCount: (json['unrestrict_boost_count'] as num?)?.toInt(),
      customEmojiStickerSetName:
          json['custom_emoji_sticker_set_name'] as String?,
      businessIntro: json['business_intro'] == null
          ? null
          : BusinessIntro.fromJson(
              json['business_intro'] as Map<String, dynamic>),
      businessLocation: json['business_location'] == null
          ? null
          : BusinessLocation.fromJson(
              json['business_location'] as Map<String, dynamic>),
      businessOpeningHours: json['business_opening_hours'] == null
          ? null
          : BusinessOpeningHours.fromJson(
              json['business_opening_hours'] as Map<String, dynamic>),
      personalChat: json['personal_chat'] == null
          ? null
          : Chat.fromJson(json['personal_chat'] as Map<String, dynamic>),
      birthdate: json['birthdate'] == null
          ? null
          : Birthdate.fromJson(json['birthdate'] as Map<String, dynamic>),
      maxReactionCount: (json['max_reaction_count'] as num?)?.toInt() ?? 0,
      canSendPaidMedia: json['can_send_paid_media'] as bool?,
      canSendGift: json['can_send_gift'] as bool?,
    );

Map<String, dynamic> _$ChatFullInfoToJson(_ChatFullInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$ChatTypeEnumMap[instance.type]!,
      if (instance.title case final value?) 'title': value,
      if (instance.username case final value?) 'username': value,
      if (instance.firstName case final value?) 'first_name': value,
      if (instance.lastName case final value?) 'last_name': value,
      if (instance.isForum case final value?) 'is_forum': value,
      if (instance.photo case final value?) 'photo': value,
      if (instance.activeUsernames case final value?) 'active_usernames': value,
      if (instance.bio case final value?) 'bio': value,
      if (instance.hasPrivateForwards case final value?)
        'has_private_forwards': value,
      if (instance.hasRestrictedVoiceAndVideoMessages case final value?)
        'has_restricted_voice_and_video_messages': value,
      if (instance.joinToSendMessages case final value?)
        'join_to_send_messages': value,
      if (instance.joinByRequest case final value?) 'join_by_request': value,
      if (instance.description case final value?) 'description': value,
      if (instance.inviteLink case final value?) 'invite_link': value,
      if (instance.pinnedMessage case final value?) 'pinned_message': value,
      if (instance.permissions case final value?) 'permissions': value,
      if (instance.slowModeDelay case final value?) 'slow_mode_delay': value,
      if (instance.messageAutoDeleteTime case final value?)
        'message_auto_delete_time': value,
      if (instance.hasProtectedContent case final value?)
        'has_protected_content': value,
      if (instance.stickerSetName case final value?) 'sticker_set_name': value,
      if (instance.canSetStickerSet case final value?)
        'can_set_sticker_set': value,
      if (instance.linkedChatId case final value?) 'linked_chat_id': value,
      if (instance.location case final value?) 'location': value,
      if (instance.hasHiddenMembers case final value?)
        'has_hidden_members': value,
      if (instance.hasAggressiveAntiSpamEnabled case final value?)
        'has_aggressive_anti_spam_enabled': value,
      if (instance.emojiStatusExpirationDate case final value?)
        'emoji_status_expiration_date': value,
      if (instance.availableReactions case final value?)
        'available_reactions': value,
      if (instance.emojiStatusCustomEmojiId case final value?)
        'emoji_status_custom_emoji_id': value,
      if (instance.accentColorId case final value?) 'accent_color_id': value,
      if (instance.backgroundCustomEmojiId case final value?)
        'background_custom_emoji_id': value,
      if (instance.profileAccentColorId case final value?)
        'profile_accent_color_id': value,
      if (instance.profileBackgroundCustomEmojiId case final value?)
        'profile_background_custom_emoji_id': value,
      if (instance.hasVisibleHistory case final value?)
        'has_visible_history': value,
      if (instance.unrestrictBoostCount case final value?)
        'unrestrict_boost_count': value,
      if (instance.customEmojiStickerSetName case final value?)
        'custom_emoji_sticker_set_name': value,
      if (instance.businessIntro case final value?) 'business_intro': value,
      if (instance.businessLocation case final value?)
        'business_location': value,
      if (instance.businessOpeningHours case final value?)
        'business_opening_hours': value,
      if (instance.personalChat case final value?) 'personal_chat': value,
      if (instance.birthdate case final value?) 'birthdate': value,
      'max_reaction_count': instance.maxReactionCount,
      if (instance.canSendPaidMedia case final value?)
        'can_send_paid_media': value,
      if (instance.canSendGift case final value?) 'can_send_gift': value,
    };

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
