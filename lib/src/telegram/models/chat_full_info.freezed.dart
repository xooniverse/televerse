// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_full_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatFullInfo {
  /// Unique identifier for this chat.
  @JsonKey(name: 'id')
  int get id;

  /// Type of the chat.
  @JsonKey(name: 'type')
  ChatType get type;

  /// Optional. Title of the chat.
  @JsonKey(name: 'title')
  String? get title;

  /// Optional. Username of the chat.
  @JsonKey(name: 'username')
  String? get username;

  /// Optional. First name in private chats.
  @JsonKey(name: 'first_name')
  String? get firstName;

  /// Optional. Last name in private chats.
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. True if the chat is a forum.
  @JsonKey(name: 'is_forum')
  bool? get isForum;

  /// Optional. Chat photo.
  @JsonKey(name: 'photo')
  ChatPhoto? get photo;

  /// Optional. If non-empty, the list of all active chat usernames.
  @JsonKey(name: 'active_usernames')
  List<String>? get activeUsernames;

  /// Optional. Bio of the other party in a private chat.
  @JsonKey(name: 'bio')
  String? get bio;

  /// Optional. True if privacy settings restrict forwarding.
  @JsonKey(name: 'has_private_forwards')
  bool? get hasPrivateForwards;

  /// Optional. True if voice and video note messages are restricted.
  @JsonKey(name: 'has_restricted_voice_and_video_messages')
  bool? get hasRestrictedVoiceAndVideoMessages;

  /// Optional. True if users need to join before sending messages.
  @JsonKey(name: 'join_to_send_messages')
  bool? get joinToSendMessages;

  /// Optional. True if joining requires administrator approval.
  @JsonKey(name: 'join_by_request')
  bool? get joinByRequest;

  /// Optional. Description for groups, supergroups, and channels.
  @JsonKey(name: 'description')
  String? get description;

  /// Optional. Primary invite link.
  @JsonKey(name: 'invite_link')
  String? get inviteLink;

  /// Optional. The most recent pinned message.
  @JsonKey(name: 'pinned_message')
  Message? get pinnedMessage;

  /// Optional. Default chat member permissions.
  @JsonKey(name: 'permissions')
  ChatPermissions? get permissions;

  /// Optional. Minimum delay between messages in supergroups.
  @JsonKey(name: 'slow_mode_delay')
  int? get slowModeDelay;

  /// Optional. Time after which messages are automatically deleted.
  @JsonKey(name: 'message_auto_delete_time')
  int? get messageAutoDeleteTime;

  /// Optional. True if messages can't be forwarded.
  @JsonKey(name: 'has_protected_content')
  bool? get hasProtectedContent;

  /// Optional. Name of group sticker set.
  @JsonKey(name: 'sticker_set_name')
  String? get stickerSetName;

  /// Optional. True if the bot can change the group sticker set.
  @JsonKey(name: 'can_set_sticker_set')
  bool? get canSetStickerSet;

  /// Optional. Unique identifier for the linked chat.
  @JsonKey(name: 'linked_chat_id')
  int? get linkedChatId;

  /// Optional. Location for supergroups.
  @JsonKey(name: 'location')
  ChatLocation? get location;

  /// Optional. True if non-administrators can only see bots and admins.
  @JsonKey(name: 'has_hidden_members')
  bool? get hasHiddenMembers;

  /// Optional. True if aggressive anti-spam is enabled.
  @JsonKey(name: 'has_aggressive_anti_spam_enabled')
  bool? get hasAggressiveAntiSpamEnabled;

  /// Optional. Expiration date of emoji status.
  @JsonKey(name: 'emoji_status_expiration_date')
  int? get emojiStatusExpirationDate;

  /// Optional. Available reaction types.
  @JsonKey(name: 'available_reactions')
  List<ReactionType>? get availableReactions;

  /// Optional. Custom emoji identifier for emoji status.
  @JsonKey(name: 'emoji_status_custom_emoji_id')
  String? get emojiStatusCustomEmojiId;

  /// Optional. Identifier for accent color.
  @JsonKey(name: 'accent_color_id')
  int? get accentColorId;

  /// Optional. Custom emoji identifier for background.
  @JsonKey(name: 'background_custom_emoji_id')
  String? get backgroundCustomEmojiId;

  /// Optional. Identifier for profile accent color.
  @JsonKey(name: 'profile_accent_color_id')
  int? get profileAccentColorId;

  /// Optional. Custom emoji identifier for profile background.
  @JsonKey(name: 'profile_background_custom_emoji_id')
  String? get profileBackgroundCustomEmojiId;

  /// Optional. True if new members can see old messages.
  @JsonKey(name: 'has_visible_history')
  bool? get hasVisibleHistory;

  /// Optional. Minimum boost count to ignore restrictions.
  @JsonKey(name: 'unrestrict_boost_count')
  int? get unrestrictBoostCount;

  /// Optional. Name of custom emoji sticker set.
  @JsonKey(name: 'custom_emoji_sticker_set_name')
  String? get customEmojiStickerSetName;

  /// Optional. Business intro for business accounts.
  @JsonKey(name: 'business_intro')
  BusinessIntro? get businessIntro;

  /// Optional. Business location for business accounts.
  @JsonKey(name: 'business_location')
  BusinessLocation? get businessLocation;

  /// Optional. Business opening hours.
  @JsonKey(name: 'business_opening_hours')
  BusinessOpeningHours? get businessOpeningHours;

  /// Optional. Personal channel for private chats.
  @JsonKey(name: 'personal_chat')
  Chat? get personalChat;

  /// Optional. Date of birth for private chats.
  @JsonKey(name: 'birthdate')
  Birthdate? get birthdate;

  /// Maximum number of reactions allowed.
  @JsonKey(name: 'max_reaction_count')
  int get maxReactionCount;

  /// Optional. True if paid media can be sent.
  @JsonKey(name: 'can_send_paid_media')
  bool? get canSendPaidMedia;

  /// Information about types of gifts that are accepted by the chat or by the corresponding user for private chats.
  @JsonKey(name: 'accepted_gift_types')
  AcceptedGiftTypes get acceptedGiftTypes;

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatFullInfoCopyWith<ChatFullInfo> get copyWith =>
      _$ChatFullInfoCopyWithImpl<ChatFullInfo>(
          this as ChatFullInfo, _$identity);

  /// Serializes this ChatFullInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatFullInfo(id: $id, type: $type, title: $title, username: $username, firstName: $firstName, lastName: $lastName, isForum: $isForum, photo: $photo, activeUsernames: $activeUsernames, bio: $bio, hasPrivateForwards: $hasPrivateForwards, hasRestrictedVoiceAndVideoMessages: $hasRestrictedVoiceAndVideoMessages, joinToSendMessages: $joinToSendMessages, joinByRequest: $joinByRequest, description: $description, inviteLink: $inviteLink, pinnedMessage: $pinnedMessage, permissions: $permissions, slowModeDelay: $slowModeDelay, messageAutoDeleteTime: $messageAutoDeleteTime, hasProtectedContent: $hasProtectedContent, stickerSetName: $stickerSetName, canSetStickerSet: $canSetStickerSet, linkedChatId: $linkedChatId, location: $location, hasHiddenMembers: $hasHiddenMembers, hasAggressiveAntiSpamEnabled: $hasAggressiveAntiSpamEnabled, emojiStatusExpirationDate: $emojiStatusExpirationDate, availableReactions: $availableReactions, emojiStatusCustomEmojiId: $emojiStatusCustomEmojiId, accentColorId: $accentColorId, backgroundCustomEmojiId: $backgroundCustomEmojiId, profileAccentColorId: $profileAccentColorId, profileBackgroundCustomEmojiId: $profileBackgroundCustomEmojiId, hasVisibleHistory: $hasVisibleHistory, unrestrictBoostCount: $unrestrictBoostCount, customEmojiStickerSetName: $customEmojiStickerSetName, businessIntro: $businessIntro, businessLocation: $businessLocation, businessOpeningHours: $businessOpeningHours, personalChat: $personalChat, birthdate: $birthdate, maxReactionCount: $maxReactionCount, canSendPaidMedia: $canSendPaidMedia, acceptedGiftTypes: $acceptedGiftTypes)';
  }
}

/// @nodoc
abstract mixin class $ChatFullInfoCopyWith<$Res> {
  factory $ChatFullInfoCopyWith(
          ChatFullInfo value, $Res Function(ChatFullInfo) _then) =
      _$ChatFullInfoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') ChatType type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'is_forum') bool? isForum,
      @JsonKey(name: 'photo') ChatPhoto? photo,
      @JsonKey(name: 'active_usernames') List<String>? activeUsernames,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'has_private_forwards') bool? hasPrivateForwards,
      @JsonKey(name: 'has_restricted_voice_and_video_messages')
      bool? hasRestrictedVoiceAndVideoMessages,
      @JsonKey(name: 'join_to_send_messages') bool? joinToSendMessages,
      @JsonKey(name: 'join_by_request') bool? joinByRequest,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'invite_link') String? inviteLink,
      @JsonKey(name: 'pinned_message') Message? pinnedMessage,
      @JsonKey(name: 'permissions') ChatPermissions? permissions,
      @JsonKey(name: 'slow_mode_delay') int? slowModeDelay,
      @JsonKey(name: 'message_auto_delete_time') int? messageAutoDeleteTime,
      @JsonKey(name: 'has_protected_content') bool? hasProtectedContent,
      @JsonKey(name: 'sticker_set_name') String? stickerSetName,
      @JsonKey(name: 'can_set_sticker_set') bool? canSetStickerSet,
      @JsonKey(name: 'linked_chat_id') int? linkedChatId,
      @JsonKey(name: 'location') ChatLocation? location,
      @JsonKey(name: 'has_hidden_members') bool? hasHiddenMembers,
      @JsonKey(name: 'has_aggressive_anti_spam_enabled')
      bool? hasAggressiveAntiSpamEnabled,
      @JsonKey(name: 'emoji_status_expiration_date')
      int? emojiStatusExpirationDate,
      @JsonKey(name: 'available_reactions')
      List<ReactionType>? availableReactions,
      @JsonKey(name: 'emoji_status_custom_emoji_id')
      String? emojiStatusCustomEmojiId,
      @JsonKey(name: 'accent_color_id') int? accentColorId,
      @JsonKey(name: 'background_custom_emoji_id')
      String? backgroundCustomEmojiId,
      @JsonKey(name: 'profile_accent_color_id') int? profileAccentColorId,
      @JsonKey(name: 'profile_background_custom_emoji_id')
      String? profileBackgroundCustomEmojiId,
      @JsonKey(name: 'has_visible_history') bool? hasVisibleHistory,
      @JsonKey(name: 'unrestrict_boost_count') int? unrestrictBoostCount,
      @JsonKey(name: 'custom_emoji_sticker_set_name')
      String? customEmojiStickerSetName,
      @JsonKey(name: 'business_intro') BusinessIntro? businessIntro,
      @JsonKey(name: 'business_location') BusinessLocation? businessLocation,
      @JsonKey(name: 'business_opening_hours')
      BusinessOpeningHours? businessOpeningHours,
      @JsonKey(name: 'personal_chat') Chat? personalChat,
      @JsonKey(name: 'birthdate') Birthdate? birthdate,
      @JsonKey(name: 'max_reaction_count') int maxReactionCount,
      @JsonKey(name: 'can_send_paid_media') bool? canSendPaidMedia,
      @JsonKey(name: 'accepted_gift_types')
      AcceptedGiftTypes acceptedGiftTypes});

  $ChatPhotoCopyWith<$Res>? get photo;
  $ChatPermissionsCopyWith<$Res>? get permissions;
  $ChatLocationCopyWith<$Res>? get location;
  $BusinessIntroCopyWith<$Res>? get businessIntro;
  $BusinessLocationCopyWith<$Res>? get businessLocation;
  $BusinessOpeningHoursCopyWith<$Res>? get businessOpeningHours;
  $ChatCopyWith<$Res>? get personalChat;
  $BirthdateCopyWith<$Res>? get birthdate;
  $AcceptedGiftTypesCopyWith<$Res> get acceptedGiftTypes;
}

/// @nodoc
class _$ChatFullInfoCopyWithImpl<$Res> implements $ChatFullInfoCopyWith<$Res> {
  _$ChatFullInfoCopyWithImpl(this._self, this._then);

  final ChatFullInfo _self;
  final $Res Function(ChatFullInfo) _then;

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isForum = freezed,
    Object? photo = freezed,
    Object? activeUsernames = freezed,
    Object? bio = freezed,
    Object? hasPrivateForwards = freezed,
    Object? hasRestrictedVoiceAndVideoMessages = freezed,
    Object? joinToSendMessages = freezed,
    Object? joinByRequest = freezed,
    Object? description = freezed,
    Object? inviteLink = freezed,
    Object? pinnedMessage = freezed,
    Object? permissions = freezed,
    Object? slowModeDelay = freezed,
    Object? messageAutoDeleteTime = freezed,
    Object? hasProtectedContent = freezed,
    Object? stickerSetName = freezed,
    Object? canSetStickerSet = freezed,
    Object? linkedChatId = freezed,
    Object? location = freezed,
    Object? hasHiddenMembers = freezed,
    Object? hasAggressiveAntiSpamEnabled = freezed,
    Object? emojiStatusExpirationDate = freezed,
    Object? availableReactions = freezed,
    Object? emojiStatusCustomEmojiId = freezed,
    Object? accentColorId = freezed,
    Object? backgroundCustomEmojiId = freezed,
    Object? profileAccentColorId = freezed,
    Object? profileBackgroundCustomEmojiId = freezed,
    Object? hasVisibleHistory = freezed,
    Object? unrestrictBoostCount = freezed,
    Object? customEmojiStickerSetName = freezed,
    Object? businessIntro = freezed,
    Object? businessLocation = freezed,
    Object? businessOpeningHours = freezed,
    Object? personalChat = freezed,
    Object? birthdate = freezed,
    Object? maxReactionCount = null,
    Object? canSendPaidMedia = freezed,
    Object? acceptedGiftTypes = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isForum: freezed == isForum
          ? _self.isForum
          : isForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ChatPhoto?,
      activeUsernames: freezed == activeUsernames
          ? _self.activeUsernames
          : activeUsernames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPrivateForwards: freezed == hasPrivateForwards
          ? _self.hasPrivateForwards
          : hasPrivateForwards // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasRestrictedVoiceAndVideoMessages: freezed ==
              hasRestrictedVoiceAndVideoMessages
          ? _self.hasRestrictedVoiceAndVideoMessages
          : hasRestrictedVoiceAndVideoMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      joinToSendMessages: freezed == joinToSendMessages
          ? _self.joinToSendMessages
          : joinToSendMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      joinByRequest: freezed == joinByRequest
          ? _self.joinByRequest
          : joinByRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLink: freezed == inviteLink
          ? _self.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      pinnedMessage: freezed == pinnedMessage
          ? _self.pinnedMessage
          : pinnedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      permissions: freezed == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as ChatPermissions?,
      slowModeDelay: freezed == slowModeDelay
          ? _self.slowModeDelay
          : slowModeDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      messageAutoDeleteTime: freezed == messageAutoDeleteTime
          ? _self.messageAutoDeleteTime
          : messageAutoDeleteTime // ignore: cast_nullable_to_non_nullable
              as int?,
      hasProtectedContent: freezed == hasProtectedContent
          ? _self.hasProtectedContent
          : hasProtectedContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      stickerSetName: freezed == stickerSetName
          ? _self.stickerSetName
          : stickerSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      canSetStickerSet: freezed == canSetStickerSet
          ? _self.canSetStickerSet
          : canSetStickerSet // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedChatId: freezed == linkedChatId
          ? _self.linkedChatId
          : linkedChatId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as ChatLocation?,
      hasHiddenMembers: freezed == hasHiddenMembers
          ? _self.hasHiddenMembers
          : hasHiddenMembers // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasAggressiveAntiSpamEnabled: freezed == hasAggressiveAntiSpamEnabled
          ? _self.hasAggressiveAntiSpamEnabled
          : hasAggressiveAntiSpamEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      emojiStatusExpirationDate: freezed == emojiStatusExpirationDate
          ? _self.emojiStatusExpirationDate
          : emojiStatusExpirationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      availableReactions: freezed == availableReactions
          ? _self.availableReactions
          : availableReactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionType>?,
      emojiStatusCustomEmojiId: freezed == emojiStatusCustomEmojiId
          ? _self.emojiStatusCustomEmojiId
          : emojiStatusCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      accentColorId: freezed == accentColorId
          ? _self.accentColorId
          : accentColorId // ignore: cast_nullable_to_non_nullable
              as int?,
      backgroundCustomEmojiId: freezed == backgroundCustomEmojiId
          ? _self.backgroundCustomEmojiId
          : backgroundCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileAccentColorId: freezed == profileAccentColorId
          ? _self.profileAccentColorId
          : profileAccentColorId // ignore: cast_nullable_to_non_nullable
              as int?,
      profileBackgroundCustomEmojiId: freezed == profileBackgroundCustomEmojiId
          ? _self.profileBackgroundCustomEmojiId
          : profileBackgroundCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasVisibleHistory: freezed == hasVisibleHistory
          ? _self.hasVisibleHistory
          : hasVisibleHistory // ignore: cast_nullable_to_non_nullable
              as bool?,
      unrestrictBoostCount: freezed == unrestrictBoostCount
          ? _self.unrestrictBoostCount
          : unrestrictBoostCount // ignore: cast_nullable_to_non_nullable
              as int?,
      customEmojiStickerSetName: freezed == customEmojiStickerSetName
          ? _self.customEmojiStickerSetName
          : customEmojiStickerSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessIntro: freezed == businessIntro
          ? _self.businessIntro
          : businessIntro // ignore: cast_nullable_to_non_nullable
              as BusinessIntro?,
      businessLocation: freezed == businessLocation
          ? _self.businessLocation
          : businessLocation // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      businessOpeningHours: freezed == businessOpeningHours
          ? _self.businessOpeningHours
          : businessOpeningHours // ignore: cast_nullable_to_non_nullable
              as BusinessOpeningHours?,
      personalChat: freezed == personalChat
          ? _self.personalChat
          : personalChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      birthdate: freezed == birthdate
          ? _self.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as Birthdate?,
      maxReactionCount: null == maxReactionCount
          ? _self.maxReactionCount
          : maxReactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      canSendPaidMedia: freezed == canSendPaidMedia
          ? _self.canSendPaidMedia
          : canSendPaidMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      acceptedGiftTypes: null == acceptedGiftTypes
          ? _self.acceptedGiftTypes
          : acceptedGiftTypes // ignore: cast_nullable_to_non_nullable
              as AcceptedGiftTypes,
    ));
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatPhotoCopyWith<$Res>? get photo {
    if (_self.photo == null) {
      return null;
    }

    return $ChatPhotoCopyWith<$Res>(_self.photo!, (value) {
      return _then(_self.copyWith(photo: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatPermissionsCopyWith<$Res>? get permissions {
    if (_self.permissions == null) {
      return null;
    }

    return $ChatPermissionsCopyWith<$Res>(_self.permissions!, (value) {
      return _then(_self.copyWith(permissions: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $ChatLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessIntroCopyWith<$Res>? get businessIntro {
    if (_self.businessIntro == null) {
      return null;
    }

    return $BusinessIntroCopyWith<$Res>(_self.businessIntro!, (value) {
      return _then(_self.copyWith(businessIntro: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessLocationCopyWith<$Res>? get businessLocation {
    if (_self.businessLocation == null) {
      return null;
    }

    return $BusinessLocationCopyWith<$Res>(_self.businessLocation!, (value) {
      return _then(_self.copyWith(businessLocation: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessOpeningHoursCopyWith<$Res>? get businessOpeningHours {
    if (_self.businessOpeningHours == null) {
      return null;
    }

    return $BusinessOpeningHoursCopyWith<$Res>(_self.businessOpeningHours!,
        (value) {
      return _then(_self.copyWith(businessOpeningHours: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get personalChat {
    if (_self.personalChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.personalChat!, (value) {
      return _then(_self.copyWith(personalChat: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirthdateCopyWith<$Res>? get birthdate {
    if (_self.birthdate == null) {
      return null;
    }

    return $BirthdateCopyWith<$Res>(_self.birthdate!, (value) {
      return _then(_self.copyWith(birthdate: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcceptedGiftTypesCopyWith<$Res> get acceptedGiftTypes {
    return $AcceptedGiftTypesCopyWith<$Res>(_self.acceptedGiftTypes, (value) {
      return _then(_self.copyWith(acceptedGiftTypes: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatFullInfo implements ChatFullInfo {
  const _ChatFullInfo(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'is_forum') this.isForum,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'active_usernames') final List<String>? activeUsernames,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'has_private_forwards') this.hasPrivateForwards,
      @JsonKey(name: 'has_restricted_voice_and_video_messages')
      this.hasRestrictedVoiceAndVideoMessages,
      @JsonKey(name: 'join_to_send_messages') this.joinToSendMessages,
      @JsonKey(name: 'join_by_request') this.joinByRequest,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'invite_link') this.inviteLink,
      @JsonKey(name: 'pinned_message') this.pinnedMessage,
      @JsonKey(name: 'permissions') this.permissions,
      @JsonKey(name: 'slow_mode_delay') this.slowModeDelay,
      @JsonKey(name: 'message_auto_delete_time') this.messageAutoDeleteTime,
      @JsonKey(name: 'has_protected_content') this.hasProtectedContent,
      @JsonKey(name: 'sticker_set_name') this.stickerSetName,
      @JsonKey(name: 'can_set_sticker_set') this.canSetStickerSet,
      @JsonKey(name: 'linked_chat_id') this.linkedChatId,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'has_hidden_members') this.hasHiddenMembers,
      @JsonKey(name: 'has_aggressive_anti_spam_enabled')
      this.hasAggressiveAntiSpamEnabled,
      @JsonKey(name: 'emoji_status_expiration_date')
      this.emojiStatusExpirationDate,
      @JsonKey(name: 'available_reactions')
      final List<ReactionType>? availableReactions,
      @JsonKey(name: 'emoji_status_custom_emoji_id')
      this.emojiStatusCustomEmojiId,
      @JsonKey(name: 'accent_color_id') this.accentColorId,
      @JsonKey(name: 'background_custom_emoji_id') this.backgroundCustomEmojiId,
      @JsonKey(name: 'profile_accent_color_id') this.profileAccentColorId,
      @JsonKey(name: 'profile_background_custom_emoji_id')
      this.profileBackgroundCustomEmojiId,
      @JsonKey(name: 'has_visible_history') this.hasVisibleHistory,
      @JsonKey(name: 'unrestrict_boost_count') this.unrestrictBoostCount,
      @JsonKey(name: 'custom_emoji_sticker_set_name')
      this.customEmojiStickerSetName,
      @JsonKey(name: 'business_intro') this.businessIntro,
      @JsonKey(name: 'business_location') this.businessLocation,
      @JsonKey(name: 'business_opening_hours') this.businessOpeningHours,
      @JsonKey(name: 'personal_chat') this.personalChat,
      @JsonKey(name: 'birthdate') this.birthdate,
      @JsonKey(name: 'max_reaction_count') this.maxReactionCount = 0,
      @JsonKey(name: 'can_send_paid_media') this.canSendPaidMedia,
      @JsonKey(name: 'accepted_gift_types') required this.acceptedGiftTypes})
      : _activeUsernames = activeUsernames,
        _availableReactions = availableReactions;
  factory _ChatFullInfo.fromJson(Map<String, dynamic> json) =>
      _$ChatFullInfoFromJson(json);

  /// Unique identifier for this chat.
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Type of the chat.
  @override
  @JsonKey(name: 'type')
  final ChatType type;

  /// Optional. Title of the chat.
  @override
  @JsonKey(name: 'title')
  final String? title;

  /// Optional. Username of the chat.
  @override
  @JsonKey(name: 'username')
  final String? username;

  /// Optional. First name in private chats.
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// Optional. Last name in private chats.
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. True if the chat is a forum.
  @override
  @JsonKey(name: 'is_forum')
  final bool? isForum;

  /// Optional. Chat photo.
  @override
  @JsonKey(name: 'photo')
  final ChatPhoto? photo;

  /// Optional. If non-empty, the list of all active chat usernames.
  final List<String>? _activeUsernames;

  /// Optional. If non-empty, the list of all active chat usernames.
  @override
  @JsonKey(name: 'active_usernames')
  List<String>? get activeUsernames {
    final value = _activeUsernames;
    if (value == null) return null;
    if (_activeUsernames is EqualUnmodifiableListView) return _activeUsernames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Bio of the other party in a private chat.
  @override
  @JsonKey(name: 'bio')
  final String? bio;

  /// Optional. True if privacy settings restrict forwarding.
  @override
  @JsonKey(name: 'has_private_forwards')
  final bool? hasPrivateForwards;

  /// Optional. True if voice and video note messages are restricted.
  @override
  @JsonKey(name: 'has_restricted_voice_and_video_messages')
  final bool? hasRestrictedVoiceAndVideoMessages;

  /// Optional. True if users need to join before sending messages.
  @override
  @JsonKey(name: 'join_to_send_messages')
  final bool? joinToSendMessages;

  /// Optional. True if joining requires administrator approval.
  @override
  @JsonKey(name: 'join_by_request')
  final bool? joinByRequest;

  /// Optional. Description for groups, supergroups, and channels.
  @override
  @JsonKey(name: 'description')
  final String? description;

  /// Optional. Primary invite link.
  @override
  @JsonKey(name: 'invite_link')
  final String? inviteLink;

  /// Optional. The most recent pinned message.
  @override
  @JsonKey(name: 'pinned_message')
  final Message? pinnedMessage;

  /// Optional. Default chat member permissions.
  @override
  @JsonKey(name: 'permissions')
  final ChatPermissions? permissions;

  /// Optional. Minimum delay between messages in supergroups.
  @override
  @JsonKey(name: 'slow_mode_delay')
  final int? slowModeDelay;

  /// Optional. Time after which messages are automatically deleted.
  @override
  @JsonKey(name: 'message_auto_delete_time')
  final int? messageAutoDeleteTime;

  /// Optional. True if messages can't be forwarded.
  @override
  @JsonKey(name: 'has_protected_content')
  final bool? hasProtectedContent;

  /// Optional. Name of group sticker set.
  @override
  @JsonKey(name: 'sticker_set_name')
  final String? stickerSetName;

  /// Optional. True if the bot can change the group sticker set.
  @override
  @JsonKey(name: 'can_set_sticker_set')
  final bool? canSetStickerSet;

  /// Optional. Unique identifier for the linked chat.
  @override
  @JsonKey(name: 'linked_chat_id')
  final int? linkedChatId;

  /// Optional. Location for supergroups.
  @override
  @JsonKey(name: 'location')
  final ChatLocation? location;

  /// Optional. True if non-administrators can only see bots and admins.
  @override
  @JsonKey(name: 'has_hidden_members')
  final bool? hasHiddenMembers;

  /// Optional. True if aggressive anti-spam is enabled.
  @override
  @JsonKey(name: 'has_aggressive_anti_spam_enabled')
  final bool? hasAggressiveAntiSpamEnabled;

  /// Optional. Expiration date of emoji status.
  @override
  @JsonKey(name: 'emoji_status_expiration_date')
  final int? emojiStatusExpirationDate;

  /// Optional. Available reaction types.
  final List<ReactionType>? _availableReactions;

  /// Optional. Available reaction types.
  @override
  @JsonKey(name: 'available_reactions')
  List<ReactionType>? get availableReactions {
    final value = _availableReactions;
    if (value == null) return null;
    if (_availableReactions is EqualUnmodifiableListView)
      return _availableReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Optional. Custom emoji identifier for emoji status.
  @override
  @JsonKey(name: 'emoji_status_custom_emoji_id')
  final String? emojiStatusCustomEmojiId;

  /// Optional. Identifier for accent color.
  @override
  @JsonKey(name: 'accent_color_id')
  final int? accentColorId;

  /// Optional. Custom emoji identifier for background.
  @override
  @JsonKey(name: 'background_custom_emoji_id')
  final String? backgroundCustomEmojiId;

  /// Optional. Identifier for profile accent color.
  @override
  @JsonKey(name: 'profile_accent_color_id')
  final int? profileAccentColorId;

  /// Optional. Custom emoji identifier for profile background.
  @override
  @JsonKey(name: 'profile_background_custom_emoji_id')
  final String? profileBackgroundCustomEmojiId;

  /// Optional. True if new members can see old messages.
  @override
  @JsonKey(name: 'has_visible_history')
  final bool? hasVisibleHistory;

  /// Optional. Minimum boost count to ignore restrictions.
  @override
  @JsonKey(name: 'unrestrict_boost_count')
  final int? unrestrictBoostCount;

  /// Optional. Name of custom emoji sticker set.
  @override
  @JsonKey(name: 'custom_emoji_sticker_set_name')
  final String? customEmojiStickerSetName;

  /// Optional. Business intro for business accounts.
  @override
  @JsonKey(name: 'business_intro')
  final BusinessIntro? businessIntro;

  /// Optional. Business location for business accounts.
  @override
  @JsonKey(name: 'business_location')
  final BusinessLocation? businessLocation;

  /// Optional. Business opening hours.
  @override
  @JsonKey(name: 'business_opening_hours')
  final BusinessOpeningHours? businessOpeningHours;

  /// Optional. Personal channel for private chats.
  @override
  @JsonKey(name: 'personal_chat')
  final Chat? personalChat;

  /// Optional. Date of birth for private chats.
  @override
  @JsonKey(name: 'birthdate')
  final Birthdate? birthdate;

  /// Maximum number of reactions allowed.
  @override
  @JsonKey(name: 'max_reaction_count')
  final int maxReactionCount;

  /// Optional. True if paid media can be sent.
  @override
  @JsonKey(name: 'can_send_paid_media')
  final bool? canSendPaidMedia;

  /// Information about types of gifts that are accepted by the chat or by the corresponding user for private chats.
  @override
  @JsonKey(name: 'accepted_gift_types')
  final AcceptedGiftTypes acceptedGiftTypes;

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatFullInfoCopyWith<_ChatFullInfo> get copyWith =>
      __$ChatFullInfoCopyWithImpl<_ChatFullInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatFullInfoToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatFullInfo(id: $id, type: $type, title: $title, username: $username, firstName: $firstName, lastName: $lastName, isForum: $isForum, photo: $photo, activeUsernames: $activeUsernames, bio: $bio, hasPrivateForwards: $hasPrivateForwards, hasRestrictedVoiceAndVideoMessages: $hasRestrictedVoiceAndVideoMessages, joinToSendMessages: $joinToSendMessages, joinByRequest: $joinByRequest, description: $description, inviteLink: $inviteLink, pinnedMessage: $pinnedMessage, permissions: $permissions, slowModeDelay: $slowModeDelay, messageAutoDeleteTime: $messageAutoDeleteTime, hasProtectedContent: $hasProtectedContent, stickerSetName: $stickerSetName, canSetStickerSet: $canSetStickerSet, linkedChatId: $linkedChatId, location: $location, hasHiddenMembers: $hasHiddenMembers, hasAggressiveAntiSpamEnabled: $hasAggressiveAntiSpamEnabled, emojiStatusExpirationDate: $emojiStatusExpirationDate, availableReactions: $availableReactions, emojiStatusCustomEmojiId: $emojiStatusCustomEmojiId, accentColorId: $accentColorId, backgroundCustomEmojiId: $backgroundCustomEmojiId, profileAccentColorId: $profileAccentColorId, profileBackgroundCustomEmojiId: $profileBackgroundCustomEmojiId, hasVisibleHistory: $hasVisibleHistory, unrestrictBoostCount: $unrestrictBoostCount, customEmojiStickerSetName: $customEmojiStickerSetName, businessIntro: $businessIntro, businessLocation: $businessLocation, businessOpeningHours: $businessOpeningHours, personalChat: $personalChat, birthdate: $birthdate, maxReactionCount: $maxReactionCount, canSendPaidMedia: $canSendPaidMedia, acceptedGiftTypes: $acceptedGiftTypes)';
  }
}

/// @nodoc
abstract mixin class _$ChatFullInfoCopyWith<$Res>
    implements $ChatFullInfoCopyWith<$Res> {
  factory _$ChatFullInfoCopyWith(
          _ChatFullInfo value, $Res Function(_ChatFullInfo) _then) =
      __$ChatFullInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') ChatType type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'is_forum') bool? isForum,
      @JsonKey(name: 'photo') ChatPhoto? photo,
      @JsonKey(name: 'active_usernames') List<String>? activeUsernames,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'has_private_forwards') bool? hasPrivateForwards,
      @JsonKey(name: 'has_restricted_voice_and_video_messages')
      bool? hasRestrictedVoiceAndVideoMessages,
      @JsonKey(name: 'join_to_send_messages') bool? joinToSendMessages,
      @JsonKey(name: 'join_by_request') bool? joinByRequest,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'invite_link') String? inviteLink,
      @JsonKey(name: 'pinned_message') Message? pinnedMessage,
      @JsonKey(name: 'permissions') ChatPermissions? permissions,
      @JsonKey(name: 'slow_mode_delay') int? slowModeDelay,
      @JsonKey(name: 'message_auto_delete_time') int? messageAutoDeleteTime,
      @JsonKey(name: 'has_protected_content') bool? hasProtectedContent,
      @JsonKey(name: 'sticker_set_name') String? stickerSetName,
      @JsonKey(name: 'can_set_sticker_set') bool? canSetStickerSet,
      @JsonKey(name: 'linked_chat_id') int? linkedChatId,
      @JsonKey(name: 'location') ChatLocation? location,
      @JsonKey(name: 'has_hidden_members') bool? hasHiddenMembers,
      @JsonKey(name: 'has_aggressive_anti_spam_enabled')
      bool? hasAggressiveAntiSpamEnabled,
      @JsonKey(name: 'emoji_status_expiration_date')
      int? emojiStatusExpirationDate,
      @JsonKey(name: 'available_reactions')
      List<ReactionType>? availableReactions,
      @JsonKey(name: 'emoji_status_custom_emoji_id')
      String? emojiStatusCustomEmojiId,
      @JsonKey(name: 'accent_color_id') int? accentColorId,
      @JsonKey(name: 'background_custom_emoji_id')
      String? backgroundCustomEmojiId,
      @JsonKey(name: 'profile_accent_color_id') int? profileAccentColorId,
      @JsonKey(name: 'profile_background_custom_emoji_id')
      String? profileBackgroundCustomEmojiId,
      @JsonKey(name: 'has_visible_history') bool? hasVisibleHistory,
      @JsonKey(name: 'unrestrict_boost_count') int? unrestrictBoostCount,
      @JsonKey(name: 'custom_emoji_sticker_set_name')
      String? customEmojiStickerSetName,
      @JsonKey(name: 'business_intro') BusinessIntro? businessIntro,
      @JsonKey(name: 'business_location') BusinessLocation? businessLocation,
      @JsonKey(name: 'business_opening_hours')
      BusinessOpeningHours? businessOpeningHours,
      @JsonKey(name: 'personal_chat') Chat? personalChat,
      @JsonKey(name: 'birthdate') Birthdate? birthdate,
      @JsonKey(name: 'max_reaction_count') int maxReactionCount,
      @JsonKey(name: 'can_send_paid_media') bool? canSendPaidMedia,
      @JsonKey(name: 'accepted_gift_types')
      AcceptedGiftTypes acceptedGiftTypes});

  @override
  $ChatPhotoCopyWith<$Res>? get photo;
  @override
  $ChatPermissionsCopyWith<$Res>? get permissions;
  @override
  $ChatLocationCopyWith<$Res>? get location;
  @override
  $BusinessIntroCopyWith<$Res>? get businessIntro;
  @override
  $BusinessLocationCopyWith<$Res>? get businessLocation;
  @override
  $BusinessOpeningHoursCopyWith<$Res>? get businessOpeningHours;
  @override
  $ChatCopyWith<$Res>? get personalChat;
  @override
  $BirthdateCopyWith<$Res>? get birthdate;
  @override
  $AcceptedGiftTypesCopyWith<$Res> get acceptedGiftTypes;
}

/// @nodoc
class __$ChatFullInfoCopyWithImpl<$Res>
    implements _$ChatFullInfoCopyWith<$Res> {
  __$ChatFullInfoCopyWithImpl(this._self, this._then);

  final _ChatFullInfo _self;
  final $Res Function(_ChatFullInfo) _then;

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isForum = freezed,
    Object? photo = freezed,
    Object? activeUsernames = freezed,
    Object? bio = freezed,
    Object? hasPrivateForwards = freezed,
    Object? hasRestrictedVoiceAndVideoMessages = freezed,
    Object? joinToSendMessages = freezed,
    Object? joinByRequest = freezed,
    Object? description = freezed,
    Object? inviteLink = freezed,
    Object? pinnedMessage = freezed,
    Object? permissions = freezed,
    Object? slowModeDelay = freezed,
    Object? messageAutoDeleteTime = freezed,
    Object? hasProtectedContent = freezed,
    Object? stickerSetName = freezed,
    Object? canSetStickerSet = freezed,
    Object? linkedChatId = freezed,
    Object? location = freezed,
    Object? hasHiddenMembers = freezed,
    Object? hasAggressiveAntiSpamEnabled = freezed,
    Object? emojiStatusExpirationDate = freezed,
    Object? availableReactions = freezed,
    Object? emojiStatusCustomEmojiId = freezed,
    Object? accentColorId = freezed,
    Object? backgroundCustomEmojiId = freezed,
    Object? profileAccentColorId = freezed,
    Object? profileBackgroundCustomEmojiId = freezed,
    Object? hasVisibleHistory = freezed,
    Object? unrestrictBoostCount = freezed,
    Object? customEmojiStickerSetName = freezed,
    Object? businessIntro = freezed,
    Object? businessLocation = freezed,
    Object? businessOpeningHours = freezed,
    Object? personalChat = freezed,
    Object? birthdate = freezed,
    Object? maxReactionCount = null,
    Object? canSendPaidMedia = freezed,
    Object? acceptedGiftTypes = null,
  }) {
    return _then(_ChatFullInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatType,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isForum: freezed == isForum
          ? _self.isForum
          : isForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      photo: freezed == photo
          ? _self.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as ChatPhoto?,
      activeUsernames: freezed == activeUsernames
          ? _self._activeUsernames
          : activeUsernames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      hasPrivateForwards: freezed == hasPrivateForwards
          ? _self.hasPrivateForwards
          : hasPrivateForwards // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasRestrictedVoiceAndVideoMessages: freezed ==
              hasRestrictedVoiceAndVideoMessages
          ? _self.hasRestrictedVoiceAndVideoMessages
          : hasRestrictedVoiceAndVideoMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      joinToSendMessages: freezed == joinToSendMessages
          ? _self.joinToSendMessages
          : joinToSendMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      joinByRequest: freezed == joinByRequest
          ? _self.joinByRequest
          : joinByRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLink: freezed == inviteLink
          ? _self.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String?,
      pinnedMessage: freezed == pinnedMessage
          ? _self.pinnedMessage
          : pinnedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      permissions: freezed == permissions
          ? _self.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as ChatPermissions?,
      slowModeDelay: freezed == slowModeDelay
          ? _self.slowModeDelay
          : slowModeDelay // ignore: cast_nullable_to_non_nullable
              as int?,
      messageAutoDeleteTime: freezed == messageAutoDeleteTime
          ? _self.messageAutoDeleteTime
          : messageAutoDeleteTime // ignore: cast_nullable_to_non_nullable
              as int?,
      hasProtectedContent: freezed == hasProtectedContent
          ? _self.hasProtectedContent
          : hasProtectedContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      stickerSetName: freezed == stickerSetName
          ? _self.stickerSetName
          : stickerSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      canSetStickerSet: freezed == canSetStickerSet
          ? _self.canSetStickerSet
          : canSetStickerSet // ignore: cast_nullable_to_non_nullable
              as bool?,
      linkedChatId: freezed == linkedChatId
          ? _self.linkedChatId
          : linkedChatId // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as ChatLocation?,
      hasHiddenMembers: freezed == hasHiddenMembers
          ? _self.hasHiddenMembers
          : hasHiddenMembers // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasAggressiveAntiSpamEnabled: freezed == hasAggressiveAntiSpamEnabled
          ? _self.hasAggressiveAntiSpamEnabled
          : hasAggressiveAntiSpamEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      emojiStatusExpirationDate: freezed == emojiStatusExpirationDate
          ? _self.emojiStatusExpirationDate
          : emojiStatusExpirationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      availableReactions: freezed == availableReactions
          ? _self._availableReactions
          : availableReactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionType>?,
      emojiStatusCustomEmojiId: freezed == emojiStatusCustomEmojiId
          ? _self.emojiStatusCustomEmojiId
          : emojiStatusCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      accentColorId: freezed == accentColorId
          ? _self.accentColorId
          : accentColorId // ignore: cast_nullable_to_non_nullable
              as int?,
      backgroundCustomEmojiId: freezed == backgroundCustomEmojiId
          ? _self.backgroundCustomEmojiId
          : backgroundCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      profileAccentColorId: freezed == profileAccentColorId
          ? _self.profileAccentColorId
          : profileAccentColorId // ignore: cast_nullable_to_non_nullable
              as int?,
      profileBackgroundCustomEmojiId: freezed == profileBackgroundCustomEmojiId
          ? _self.profileBackgroundCustomEmojiId
          : profileBackgroundCustomEmojiId // ignore: cast_nullable_to_non_nullable
              as String?,
      hasVisibleHistory: freezed == hasVisibleHistory
          ? _self.hasVisibleHistory
          : hasVisibleHistory // ignore: cast_nullable_to_non_nullable
              as bool?,
      unrestrictBoostCount: freezed == unrestrictBoostCount
          ? _self.unrestrictBoostCount
          : unrestrictBoostCount // ignore: cast_nullable_to_non_nullable
              as int?,
      customEmojiStickerSetName: freezed == customEmojiStickerSetName
          ? _self.customEmojiStickerSetName
          : customEmojiStickerSetName // ignore: cast_nullable_to_non_nullable
              as String?,
      businessIntro: freezed == businessIntro
          ? _self.businessIntro
          : businessIntro // ignore: cast_nullable_to_non_nullable
              as BusinessIntro?,
      businessLocation: freezed == businessLocation
          ? _self.businessLocation
          : businessLocation // ignore: cast_nullable_to_non_nullable
              as BusinessLocation?,
      businessOpeningHours: freezed == businessOpeningHours
          ? _self.businessOpeningHours
          : businessOpeningHours // ignore: cast_nullable_to_non_nullable
              as BusinessOpeningHours?,
      personalChat: freezed == personalChat
          ? _self.personalChat
          : personalChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      birthdate: freezed == birthdate
          ? _self.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as Birthdate?,
      maxReactionCount: null == maxReactionCount
          ? _self.maxReactionCount
          : maxReactionCount // ignore: cast_nullable_to_non_nullable
              as int,
      canSendPaidMedia: freezed == canSendPaidMedia
          ? _self.canSendPaidMedia
          : canSendPaidMedia // ignore: cast_nullable_to_non_nullable
              as bool?,
      acceptedGiftTypes: null == acceptedGiftTypes
          ? _self.acceptedGiftTypes
          : acceptedGiftTypes // ignore: cast_nullable_to_non_nullable
              as AcceptedGiftTypes,
    ));
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatPhotoCopyWith<$Res>? get photo {
    if (_self.photo == null) {
      return null;
    }

    return $ChatPhotoCopyWith<$Res>(_self.photo!, (value) {
      return _then(_self.copyWith(photo: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatPermissionsCopyWith<$Res>? get permissions {
    if (_self.permissions == null) {
      return null;
    }

    return $ChatPermissionsCopyWith<$Res>(_self.permissions!, (value) {
      return _then(_self.copyWith(permissions: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $ChatLocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessIntroCopyWith<$Res>? get businessIntro {
    if (_self.businessIntro == null) {
      return null;
    }

    return $BusinessIntroCopyWith<$Res>(_self.businessIntro!, (value) {
      return _then(_self.copyWith(businessIntro: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessLocationCopyWith<$Res>? get businessLocation {
    if (_self.businessLocation == null) {
      return null;
    }

    return $BusinessLocationCopyWith<$Res>(_self.businessLocation!, (value) {
      return _then(_self.copyWith(businessLocation: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessOpeningHoursCopyWith<$Res>? get businessOpeningHours {
    if (_self.businessOpeningHours == null) {
      return null;
    }

    return $BusinessOpeningHoursCopyWith<$Res>(_self.businessOpeningHours!,
        (value) {
      return _then(_self.copyWith(businessOpeningHours: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res>? get personalChat {
    if (_self.personalChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_self.personalChat!, (value) {
      return _then(_self.copyWith(personalChat: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirthdateCopyWith<$Res>? get birthdate {
    if (_self.birthdate == null) {
      return null;
    }

    return $BirthdateCopyWith<$Res>(_self.birthdate!, (value) {
      return _then(_self.copyWith(birthdate: value));
    });
  }

  /// Create a copy of ChatFullInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AcceptedGiftTypesCopyWith<$Res> get acceptedGiftTypes {
    return $AcceptedGiftTypesCopyWith<$Res>(_self.acceptedGiftTypes, (value) {
      return _then(_self.copyWith(acceptedGiftTypes: value));
    });
  }
}
