part of 'models.dart';

/// This object represents a chat.
class ChatFullInfo extends Chat implements WithID {
  /// Optional. Chat photo.
  final ChatPhoto? photo;

  /// Optional. If non-empty, the list of all active chat usernames; for private chats, supergroups and channels.
  final List<String>? activeUsernames;

  /// Optional. Bio of the other party in a private chat.
  final String? bio;

  /// Optional. True, if privacy settings of the other party in the private chat allows to use tg://user?id=<user_id> links only in chats with the user.
  final bool? hasPrivateForwards;

  /// Optional. True, if the privacy settings of the other party restrict sending voice and video note messages in the private chat.
  final bool? hasRestrictedVoiceAndVideoMessages;

  /// Optional. True, if users need to join the supergroup before they can send messages.
  final bool? joinToSendMessages;

  /// Optional. True, if all users directly joining the supergroup need to be approved by supergroup administrators.
  final bool? joinByRequest;

  /// Optional. Description, for groups, supergroups and channel chats.
  final String? description;

  /// Optional. Primary invite link, for groups, supergroups and channel chats.
  final String? inviteLink;

  /// Optional. The most recent pinned message (by sending date).
  final Message? pinnedMessage;

  /// Optional. Default chat member permissions, for groups and supergroups.
  final ChatPermissions? permissions;

  /// Optional. For supergroups, the minimum allowed delay between consecutive messages sent by each unpriviledged user; in seconds.
  final int? slowModeDelay;

  /// Optional. The time after which all messages sent to the chat will be automatically deleted; in seconds.
  final int? messageAutoDeleteTime;

  /// Optional. True, if messages from the chat can't be forwarded to other chats.
  final bool? hasProtectedContent;

  /// Optional. For supergroups, name of group sticker set.
  final String? stickerSetName;

  /// Optional. True, if the bot can change the group sticker set.
  final bool? canSetStickerSet;

  /// Optional. Unique identifier for the linked chat, i.e. the discussion group identifier for a channel and vice versa; for supergroups and channel chats. This identifier may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
  final int? linkedChatId;

  /// Optional. For supergroups, the location to which the supergroup is connected.
  final ChatLocation? location;

  /// Optional. True, if non-administrators can only get the list of bots and administrators in the chat.
  final bool? hasHiddenMembers;

  /// Optional. True, if aggressive anti-spam checks are enabled in the supergroup. The field is only available to chat administrators.
  final bool? hasAggressiveAntiSpamEnabled;

  /// Optional. Expiration date of the emoji status of the other party in a private chat, if any.
  final int? emojiStatusExpirationDate;

  /// Optional. Expiration date of the emoji status of the chat or the other party in a private chat, in Unix time, if any.
  final List<ReactionType>? availableReactions;

  /// Optional. Custom emoji identifier of the emoji status of the chat or the other party in a private chat.
  final String? emojiStatusCustomEmojiId;

  /// Optional. Identifier of the accent color for the chat name and backgrounds of the chat photo, reply header, and link preview. See [accent colors](https://core.telegram.org/bots/api#accent-colors) for more details. Always returned in [getChat](https://core.telegram.org/bots/api#getchat)
  final int? accentColorId;

  /// Optional. Custom emoji identifier of emoji chosen by the chat for the reply header and link preview background.
  final String? backgroundCustomEmojiId;

  /// Optional. Identifier of the accent color for the chat's profile background. See profile accent colors for more details.
  final int? profileAccentColorId;

  /// Optional. Custom emoji identifier of the emoji chosen by the chat for its profile background.
  final String? profileBackgroundCustomEmojiId;

  /// Optional. True, if new chat members will have access to old messages; available only to chat administrators.
  final bool? hasVisibleHistory;

  /// Optional. For supergroups, the minimum number of boosts that a non-administrator user needs to add in order to ignore slow mode and chat permissions.
  final int? unrestrictBoostCount;

  /// Optional. For supergroups, the name of the group's custom emoji sticker set. Custom emoji from this set can be used by all users and bots in the group.
  final String? customEmojiStickerSetName;

  /// Optional. For private chats with business accounts, the intro of the business.
  final BusinessIntro? businessIntro;

  /// Optional. For private chats with business accounts, the location of the business.
  final BusinessLocation? businessLocation;

  /// Optional. For private chats with business accounts, the opening hours of the business.
  final BusinessOpeningHours? businessOpeningHours;

  /// Optional. For private chats, the personal channel of the user.
  final Chat? personalChat;

  /// Optional. For private chats, the date of birth of the user.
  final Birthdate? birthdate;

  /// The maximum number of reactions that can be set on a message in the chat
  final int maxReactionCount;

  /// Optional. True, if paid media messages can be sent or forwarded to the channel chat. The field is available only for channel chats.
  final bool? canSendPaidMedia;

  /// Constructs a [Chat] object.
  const ChatFullInfo({
    required super.id,
    required super.type,
    super.title,
    super.username,
    super.firstName,
    super.lastName,
    super.isForum,
    this.photo,
    this.activeUsernames,
    this.bio,
    this.hasPrivateForwards,
    this.hasRestrictedVoiceAndVideoMessages,
    this.joinToSendMessages,
    this.joinByRequest,
    this.description,
    this.inviteLink,
    this.pinnedMessage,
    this.permissions,
    this.slowModeDelay,
    this.messageAutoDeleteTime,
    this.hasProtectedContent,
    this.stickerSetName,
    this.canSetStickerSet,
    this.linkedChatId,
    this.location,
    this.hasHiddenMembers,
    this.hasAggressiveAntiSpamEnabled,
    this.emojiStatusExpirationDate,
    this.availableReactions,
    this.emojiStatusCustomEmojiId,
    this.accentColorId,
    this.backgroundCustomEmojiId,
    this.profileAccentColorId,
    this.profileBackgroundCustomEmojiId,
    this.hasVisibleHistory,
    this.unrestrictBoostCount,
    this.customEmojiStickerSetName,
    this.businessIntro,
    this.businessLocation,
    this.businessOpeningHours,
    this.personalChat,
    this.birthdate,
    this.maxReactionCount = 0,
    this.canSendPaidMedia,
  });

  /// Creates a [Chat] object from json.
  factory ChatFullInfo.fromJson(Map<String, dynamic> json) {
    return ChatFullInfo(
      id: json['id'] as int,
      type: ChatType.fromJson(json['type'] as String),
      title: json['title'],
      username: json['username'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      isForum: json['is_forum'],
      photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
      activeUsernames: (json['active_usernames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      bio: json['bio'],
      hasPrivateForwards: json['has_private_forwards'],
      hasRestrictedVoiceAndVideoMessages:
          json['has_restricted_voice_and_video_messages'],
      joinToSendMessages: json['join_to_send_messages'],
      joinByRequest: json['join_by_request'],
      description: json['description'],
      inviteLink: json['invite_link'],
      pinnedMessage: json['pinned_message'] == null
          ? null
          : Message.fromJson(json['pinned_message']),
      permissions: json['permissions'] == null
          ? null
          : ChatPermissions.fromJson(json['permissions']),
      slowModeDelay: json['slow_mode_delay'],
      messageAutoDeleteTime: json['message_auto_delete_time'],
      hasProtectedContent: json['has_protected_content'],
      stickerSetName: json['sticker_set_name'],
      canSetStickerSet: json['can_set_sticker_set'],
      linkedChatId: json['linked_chat_id'],
      location: json['location'] == null
          ? null
          : ChatLocation.fromJson(json['location']),
      hasHiddenMembers: json['has_hidden_members'],
      hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
      emojiStatusExpirationDate: json['emoji_status_expiration_date'],
      availableReactions: (json['available_reactions'] as List<dynamic>?)
          ?.map((e) => ReactionType.fromJson(e))
          .toList(),
      emojiStatusCustomEmojiId: json['emoji_status_custom_emoji_id'],
      accentColorId: json['accent_color_id'],
      backgroundCustomEmojiId: json['background_custom_emoji_id'],
      profileAccentColorId: json['profile_accent_color_id'],
      profileBackgroundCustomEmojiId:
          json['profile_background_custom_emoji_id'],
      hasVisibleHistory: json['has_visible_history'],
      unrestrictBoostCount: json['unrestrict_boost_count'],
      customEmojiStickerSetName: json['custom_emoji_sticker_set_name'],
      businessIntro: json['business_intro'] == null
          ? null
          : BusinessIntro.fromJson(json['business_intro']),
      businessLocation: json['business_location'] == null
          ? null
          : BusinessLocation.fromJson(json['business_location']),
      businessOpeningHours: json['business_opening_hours'] == null
          ? null
          : BusinessOpeningHours.fromJson(json['business_opening_hours']),
      personalChat: json['personal_chat'] == null
          ? null
          : Chat.fromJson(json['personal_chat']),
      birthdate: json['birthdate'] == null
          ? null
          : Birthdate.fromJson(json['birthdate']),
      maxReactionCount: json["max_reaction_count"],
      canSendPaidMedia: json["can_send_paid_media"],
    );
  }

  /// Converts a [ChatFullInfo] object to json.
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.toJson(),
      'title': title,
      'username': username,
      'first_name': firstName,
      'last_name': lastName,
      'is_forum': isForum,
      'photo': photo?.toJson(),
      'active_usernames': activeUsernames,
      'bio': bio,
      'has_private_forwards': hasPrivateForwards,
      'has_restricted_voice_and_video_messages':
          hasRestrictedVoiceAndVideoMessages,
      'join_to_send_messages': joinToSendMessages,
      'join_by_request': joinByRequest,
      'description': description,
      'invite_link': inviteLink,
      'pinned_message': pinnedMessage?.toJson(),
      'permissions': permissions?.toJson(),
      'slow_mode_delay': slowModeDelay,
      'message_auto_delete_time': messageAutoDeleteTime,
      'has_protected_content': hasProtectedContent,
      'sticker_set_name': stickerSetName,
      'can_set_sticker_set': canSetStickerSet,
      'linked_chat_id': linkedChatId,
      'location': location?.toJson(),
      'has_hidden_members': hasHiddenMembers,
      'has_aggressive_anti_spam_enabled': hasAggressiveAntiSpamEnabled,
      'emoji_status_expiration_date': emojiStatusExpirationDate,
      'available_reactions': availableReactions?.map((e) {
        return e.toJson();
      }).toList(),
      'emoji_status_custom_emoji_id': emojiStatusCustomEmojiId,
      'accent_color_id': accentColorId,
      'background_custom_emoji_id': backgroundCustomEmojiId,
      'profile_accent_color_id': profileAccentColorId,
      'profile_background_custom_emoji_id': profileBackgroundCustomEmojiId,
      'has_visible_history': hasVisibleHistory,
      'unrestrict_boost_count': unrestrictBoostCount,
      'custom_emoji_sticker_set_name': customEmojiStickerSetName,
      'business_intro': businessIntro?.toJson(),
      'business_location': businessLocation?.toJson(),
      'business_opening_hours': businessOpeningHours?.toJson(),
      'personal_chat': personalChat?.toJson(),
      'birthdate': birthdate?.toJson(),
      'can_send_paid_media': canSendPaidMedia,
    }..removeWhere(_nullFilter);
  }
}
