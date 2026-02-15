// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_full_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatFullInfo _$ChatFullInfoFromJson(
  Map<String, dynamic> json,
) => _ChatFullInfo(
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
      : ChatPermissions.fromJson(json['permissions'] as Map<String, dynamic>),
  slowModeDelay: (json['slow_mode_delay'] as num?)?.toInt(),
  messageAutoDeleteTime: (json['message_auto_delete_time'] as num?)?.toInt(),
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
  emojiStatusExpirationDate: (json['emoji_status_expiration_date'] as num?)
      ?.toInt(),
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
  customEmojiStickerSetName: json['custom_emoji_sticker_set_name'] as String?,
  businessIntro: json['business_intro'] == null
      ? null
      : BusinessIntro.fromJson(json['business_intro'] as Map<String, dynamic>),
  businessLocation: json['business_location'] == null
      ? null
      : BusinessLocation.fromJson(
          json['business_location'] as Map<String, dynamic>,
        ),
  businessOpeningHours: json['business_opening_hours'] == null
      ? null
      : BusinessOpeningHours.fromJson(
          json['business_opening_hours'] as Map<String, dynamic>,
        ),
  personalChat: json['personal_chat'] == null
      ? null
      : Chat.fromJson(json['personal_chat'] as Map<String, dynamic>),
  birthdate: json['birthdate'] == null
      ? null
      : Birthdate.fromJson(json['birthdate'] as Map<String, dynamic>),
  maxReactionCount: (json['max_reaction_count'] as num?)?.toInt() ?? 0,
  canSendPaidMedia: json['can_send_paid_media'] as bool?,
  acceptedGiftTypes: AcceptedGiftTypes.fromJson(
    json['accepted_gift_types'] as Map<String, dynamic>,
  ),
  isDirectMessages: json['is_direct_messages'] as bool?,
  parentChat: json['parent_chat'] == null
      ? null
      : Chat.fromJson(json['parent_chat'] as Map<String, dynamic>),
  rating: json['rating'] == null
      ? null
      : UserRating.fromJson(json['rating'] as Map<String, dynamic>),
  paidMessageStarCount: (json['paid_message_star_count'] as num?)?.toInt(),
  uniqueGiftColors: json['unique_gift_colors'] == null
      ? null
      : UniqueGiftColors.fromJson(
          json['unique_gift_colors'] as Map<String, dynamic>,
        ),
  firstProfileAudio: json['first_profile_audio'] == null
      ? null
      : Audio.fromJson(json['first_profile_audio'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChatFullInfoToJson(
  _ChatFullInfo instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$ChatTypeEnumMap[instance.type]!,
  'title': ?instance.title,
  'username': ?instance.username,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'is_forum': ?instance.isForum,
  'photo': ?instance.photo,
  'active_usernames': ?instance.activeUsernames,
  'bio': ?instance.bio,
  'has_private_forwards': ?instance.hasPrivateForwards,
  'has_restricted_voice_and_video_messages':
      ?instance.hasRestrictedVoiceAndVideoMessages,
  'join_to_send_messages': ?instance.joinToSendMessages,
  'join_by_request': ?instance.joinByRequest,
  'description': ?instance.description,
  'invite_link': ?instance.inviteLink,
  'pinned_message': ?instance.pinnedMessage,
  'permissions': ?instance.permissions,
  'slow_mode_delay': ?instance.slowModeDelay,
  'message_auto_delete_time': ?instance.messageAutoDeleteTime,
  'has_protected_content': ?instance.hasProtectedContent,
  'sticker_set_name': ?instance.stickerSetName,
  'can_set_sticker_set': ?instance.canSetStickerSet,
  'linked_chat_id': ?instance.linkedChatId,
  'location': ?instance.location,
  'has_hidden_members': ?instance.hasHiddenMembers,
  'has_aggressive_anti_spam_enabled': ?instance.hasAggressiveAntiSpamEnabled,
  'emoji_status_expiration_date': ?instance.emojiStatusExpirationDate,
  'available_reactions': ?instance.availableReactions,
  'emoji_status_custom_emoji_id': ?instance.emojiStatusCustomEmojiId,
  'accent_color_id': ?instance.accentColorId,
  'background_custom_emoji_id': ?instance.backgroundCustomEmojiId,
  'profile_accent_color_id': ?instance.profileAccentColorId,
  'profile_background_custom_emoji_id':
      ?instance.profileBackgroundCustomEmojiId,
  'has_visible_history': ?instance.hasVisibleHistory,
  'unrestrict_boost_count': ?instance.unrestrictBoostCount,
  'custom_emoji_sticker_set_name': ?instance.customEmojiStickerSetName,
  'business_intro': ?instance.businessIntro,
  'business_location': ?instance.businessLocation,
  'business_opening_hours': ?instance.businessOpeningHours,
  'personal_chat': ?instance.personalChat,
  'birthdate': ?instance.birthdate,
  'max_reaction_count': instance.maxReactionCount,
  'can_send_paid_media': ?instance.canSendPaidMedia,
  'accepted_gift_types': instance.acceptedGiftTypes,
  'is_direct_messages': ?instance.isDirectMessages,
  'parent_chat': ?instance.parentChat,
  'rating': ?instance.rating,
  'paid_message_star_count': ?instance.paidMessageStarCount,
  'unique_gift_colors': ?instance.uniqueGiftColors,
  'first_profile_audio': ?instance.firstProfileAudio,
};

const _$ChatTypeEnumMap = {
  ChatType.private: 'private',
  ChatType.group: 'group',
  ChatType.supergroup: 'supergroup',
  ChatType.channel: 'channel',
  ChatType.sender: 'sender',
};
