// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_bot_rights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BusinessBotRights {
  /// Optional. True, if the bot can send and edit messages in the private
  /// chats that had incoming messages in the last 24 hours
  @JsonKey(name: 'can_reply')
  bool? get canReply;

  /// Optional. True, if the bot can mark incoming private messages as read
  @JsonKey(name: 'can_read_messages')
  bool? get canReadMessages;

  /// Optional. True, if the bot can delete messages sent by the bot
  @JsonKey(name: 'can_delete_outgoing_messages')
  bool? get canDeleteOutgoingMessages;

  /// Optional. True, if the bot can delete all private messages in managed chats
  @JsonKey(name: 'can_delete_all_messages')
  bool? get canDeleteAllMessages;

  /// Optional. True, if the bot can edit the first and last name of the business account
  @JsonKey(name: 'can_edit_name')
  bool? get canEditName;

  /// Optional. True, if the bot can edit the bio of the business account
  @JsonKey(name: 'can_edit_bio')
  bool? get canEditBio;

  /// Optional. True, if the bot can edit the profile photo of the business account
  @JsonKey(name: 'can_edit_profile_photo')
  bool? get canEditProfilePhoto;

  /// Optional. True, if the bot can edit the username of the business account
  @JsonKey(name: 'can_edit_username')
  bool? get canEditUsername;

  /// Optional. True, if the bot can change the privacy settings pertaining to gifts for the business account
  @JsonKey(name: 'can_change_gift_settings')
  bool? get canChangeGiftSettings;

  /// Optional. True, if the bot can view gifts and the amount of Telegram Stars owned by the business account
  @JsonKey(name: 'can_view_gifts_and_stars')
  bool? get canViewGiftsAndStars;

  /// Optional. True, if the bot can convert regular gifts owned by the business account to Telegram Stars
  @JsonKey(name: 'can_convert_gifts_to_stars')
  bool? get canConvertGiftsToStars;

  /// Optional. True, if the bot can transfer and upgrade gifts owned by the business account
  @JsonKey(name: 'can_transfer_and_upgrade_gifts')
  bool? get canTransferAndUpgradeGifts;

  /// Optional. True, if the bot can transfer Telegram Stars received by the business account to its own account, or use them to upgrade and transfer gifts
  @JsonKey(name: 'can_transfer_stars')
  bool? get canTransferStars;

  /// Optional. True, if the bot can post, edit and delete stories on behalf of the business account
  @JsonKey(name: 'can_manage_stories')
  bool? get canManageStories;

  /// Create a copy of BusinessBotRights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BusinessBotRightsCopyWith<BusinessBotRights> get copyWith =>
      _$BusinessBotRightsCopyWithImpl<BusinessBotRights>(
          this as BusinessBotRights, _$identity);

  /// Serializes this BusinessBotRights to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'BusinessBotRights(canReply: $canReply, canReadMessages: $canReadMessages, canDeleteOutgoingMessages: $canDeleteOutgoingMessages, canDeleteAllMessages: $canDeleteAllMessages, canEditName: $canEditName, canEditBio: $canEditBio, canEditProfilePhoto: $canEditProfilePhoto, canEditUsername: $canEditUsername, canChangeGiftSettings: $canChangeGiftSettings, canViewGiftsAndStars: $canViewGiftsAndStars, canConvertGiftsToStars: $canConvertGiftsToStars, canTransferAndUpgradeGifts: $canTransferAndUpgradeGifts, canTransferStars: $canTransferStars, canManageStories: $canManageStories)';
  }
}

/// @nodoc
abstract mixin class $BusinessBotRightsCopyWith<$Res> {
  factory $BusinessBotRightsCopyWith(
          BusinessBotRights value, $Res Function(BusinessBotRights) _then) =
      _$BusinessBotRightsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'can_reply') bool? canReply,
      @JsonKey(name: 'can_read_messages') bool? canReadMessages,
      @JsonKey(name: 'can_delete_outgoing_messages')
      bool? canDeleteOutgoingMessages,
      @JsonKey(name: 'can_delete_all_messages') bool? canDeleteAllMessages,
      @JsonKey(name: 'can_edit_name') bool? canEditName,
      @JsonKey(name: 'can_edit_bio') bool? canEditBio,
      @JsonKey(name: 'can_edit_profile_photo') bool? canEditProfilePhoto,
      @JsonKey(name: 'can_edit_username') bool? canEditUsername,
      @JsonKey(name: 'can_change_gift_settings') bool? canChangeGiftSettings,
      @JsonKey(name: 'can_view_gifts_and_stars') bool? canViewGiftsAndStars,
      @JsonKey(name: 'can_convert_gifts_to_stars') bool? canConvertGiftsToStars,
      @JsonKey(name: 'can_transfer_and_upgrade_gifts')
      bool? canTransferAndUpgradeGifts,
      @JsonKey(name: 'can_transfer_stars') bool? canTransferStars,
      @JsonKey(name: 'can_manage_stories') bool? canManageStories});
}

/// @nodoc
class _$BusinessBotRightsCopyWithImpl<$Res>
    implements $BusinessBotRightsCopyWith<$Res> {
  _$BusinessBotRightsCopyWithImpl(this._self, this._then);

  final BusinessBotRights _self;
  final $Res Function(BusinessBotRights) _then;

  /// Create a copy of BusinessBotRights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canReply = freezed,
    Object? canReadMessages = freezed,
    Object? canDeleteOutgoingMessages = freezed,
    Object? canDeleteAllMessages = freezed,
    Object? canEditName = freezed,
    Object? canEditBio = freezed,
    Object? canEditProfilePhoto = freezed,
    Object? canEditUsername = freezed,
    Object? canChangeGiftSettings = freezed,
    Object? canViewGiftsAndStars = freezed,
    Object? canConvertGiftsToStars = freezed,
    Object? canTransferAndUpgradeGifts = freezed,
    Object? canTransferStars = freezed,
    Object? canManageStories = freezed,
  }) {
    return _then(_self.copyWith(
      canReply: freezed == canReply
          ? _self.canReply
          : canReply // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReadMessages: freezed == canReadMessages
          ? _self.canReadMessages
          : canReadMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canDeleteOutgoingMessages: freezed == canDeleteOutgoingMessages
          ? _self.canDeleteOutgoingMessages
          : canDeleteOutgoingMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canDeleteAllMessages: freezed == canDeleteAllMessages
          ? _self.canDeleteAllMessages
          : canDeleteAllMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditName: freezed == canEditName
          ? _self.canEditName
          : canEditName // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditBio: freezed == canEditBio
          ? _self.canEditBio
          : canEditBio // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditProfilePhoto: freezed == canEditProfilePhoto
          ? _self.canEditProfilePhoto
          : canEditProfilePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditUsername: freezed == canEditUsername
          ? _self.canEditUsername
          : canEditUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      canChangeGiftSettings: freezed == canChangeGiftSettings
          ? _self.canChangeGiftSettings
          : canChangeGiftSettings // ignore: cast_nullable_to_non_nullable
              as bool?,
      canViewGiftsAndStars: freezed == canViewGiftsAndStars
          ? _self.canViewGiftsAndStars
          : canViewGiftsAndStars // ignore: cast_nullable_to_non_nullable
              as bool?,
      canConvertGiftsToStars: freezed == canConvertGiftsToStars
          ? _self.canConvertGiftsToStars
          : canConvertGiftsToStars // ignore: cast_nullable_to_non_nullable
              as bool?,
      canTransferAndUpgradeGifts: freezed == canTransferAndUpgradeGifts
          ? _self.canTransferAndUpgradeGifts
          : canTransferAndUpgradeGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      canTransferStars: freezed == canTransferStars
          ? _self.canTransferStars
          : canTransferStars // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageStories: freezed == canManageStories
          ? _self.canManageStories
          : canManageStories // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BusinessBotRights implements BusinessBotRights {
  const _BusinessBotRights(
      {@JsonKey(name: 'can_reply') this.canReply,
      @JsonKey(name: 'can_read_messages') this.canReadMessages,
      @JsonKey(name: 'can_delete_outgoing_messages')
      this.canDeleteOutgoingMessages,
      @JsonKey(name: 'can_delete_all_messages') this.canDeleteAllMessages,
      @JsonKey(name: 'can_edit_name') this.canEditName,
      @JsonKey(name: 'can_edit_bio') this.canEditBio,
      @JsonKey(name: 'can_edit_profile_photo') this.canEditProfilePhoto,
      @JsonKey(name: 'can_edit_username') this.canEditUsername,
      @JsonKey(name: 'can_change_gift_settings') this.canChangeGiftSettings,
      @JsonKey(name: 'can_view_gifts_and_stars') this.canViewGiftsAndStars,
      @JsonKey(name: 'can_convert_gifts_to_stars') this.canConvertGiftsToStars,
      @JsonKey(name: 'can_transfer_and_upgrade_gifts')
      this.canTransferAndUpgradeGifts,
      @JsonKey(name: 'can_transfer_stars') this.canTransferStars,
      @JsonKey(name: 'can_manage_stories') this.canManageStories});
  factory _BusinessBotRights.fromJson(Map<String, dynamic> json) =>
      _$BusinessBotRightsFromJson(json);

  /// Optional. True, if the bot can send and edit messages in the private
  /// chats that had incoming messages in the last 24 hours
  @override
  @JsonKey(name: 'can_reply')
  final bool? canReply;

  /// Optional. True, if the bot can mark incoming private messages as read
  @override
  @JsonKey(name: 'can_read_messages')
  final bool? canReadMessages;

  /// Optional. True, if the bot can delete messages sent by the bot
  @override
  @JsonKey(name: 'can_delete_outgoing_messages')
  final bool? canDeleteOutgoingMessages;

  /// Optional. True, if the bot can delete all private messages in managed chats
  @override
  @JsonKey(name: 'can_delete_all_messages')
  final bool? canDeleteAllMessages;

  /// Optional. True, if the bot can edit the first and last name of the business account
  @override
  @JsonKey(name: 'can_edit_name')
  final bool? canEditName;

  /// Optional. True, if the bot can edit the bio of the business account
  @override
  @JsonKey(name: 'can_edit_bio')
  final bool? canEditBio;

  /// Optional. True, if the bot can edit the profile photo of the business account
  @override
  @JsonKey(name: 'can_edit_profile_photo')
  final bool? canEditProfilePhoto;

  /// Optional. True, if the bot can edit the username of the business account
  @override
  @JsonKey(name: 'can_edit_username')
  final bool? canEditUsername;

  /// Optional. True, if the bot can change the privacy settings pertaining to gifts for the business account
  @override
  @JsonKey(name: 'can_change_gift_settings')
  final bool? canChangeGiftSettings;

  /// Optional. True, if the bot can view gifts and the amount of Telegram Stars owned by the business account
  @override
  @JsonKey(name: 'can_view_gifts_and_stars')
  final bool? canViewGiftsAndStars;

  /// Optional. True, if the bot can convert regular gifts owned by the business account to Telegram Stars
  @override
  @JsonKey(name: 'can_convert_gifts_to_stars')
  final bool? canConvertGiftsToStars;

  /// Optional. True, if the bot can transfer and upgrade gifts owned by the business account
  @override
  @JsonKey(name: 'can_transfer_and_upgrade_gifts')
  final bool? canTransferAndUpgradeGifts;

  /// Optional. True, if the bot can transfer Telegram Stars received by the business account to its own account, or use them to upgrade and transfer gifts
  @override
  @JsonKey(name: 'can_transfer_stars')
  final bool? canTransferStars;

  /// Optional. True, if the bot can post, edit and delete stories on behalf of the business account
  @override
  @JsonKey(name: 'can_manage_stories')
  final bool? canManageStories;

  /// Create a copy of BusinessBotRights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BusinessBotRightsCopyWith<_BusinessBotRights> get copyWith =>
      __$BusinessBotRightsCopyWithImpl<_BusinessBotRights>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BusinessBotRightsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'BusinessBotRights(canReply: $canReply, canReadMessages: $canReadMessages, canDeleteOutgoingMessages: $canDeleteOutgoingMessages, canDeleteAllMessages: $canDeleteAllMessages, canEditName: $canEditName, canEditBio: $canEditBio, canEditProfilePhoto: $canEditProfilePhoto, canEditUsername: $canEditUsername, canChangeGiftSettings: $canChangeGiftSettings, canViewGiftsAndStars: $canViewGiftsAndStars, canConvertGiftsToStars: $canConvertGiftsToStars, canTransferAndUpgradeGifts: $canTransferAndUpgradeGifts, canTransferStars: $canTransferStars, canManageStories: $canManageStories)';
  }
}

/// @nodoc
abstract mixin class _$BusinessBotRightsCopyWith<$Res>
    implements $BusinessBotRightsCopyWith<$Res> {
  factory _$BusinessBotRightsCopyWith(
          _BusinessBotRights value, $Res Function(_BusinessBotRights) _then) =
      __$BusinessBotRightsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'can_reply') bool? canReply,
      @JsonKey(name: 'can_read_messages') bool? canReadMessages,
      @JsonKey(name: 'can_delete_outgoing_messages')
      bool? canDeleteOutgoingMessages,
      @JsonKey(name: 'can_delete_all_messages') bool? canDeleteAllMessages,
      @JsonKey(name: 'can_edit_name') bool? canEditName,
      @JsonKey(name: 'can_edit_bio') bool? canEditBio,
      @JsonKey(name: 'can_edit_profile_photo') bool? canEditProfilePhoto,
      @JsonKey(name: 'can_edit_username') bool? canEditUsername,
      @JsonKey(name: 'can_change_gift_settings') bool? canChangeGiftSettings,
      @JsonKey(name: 'can_view_gifts_and_stars') bool? canViewGiftsAndStars,
      @JsonKey(name: 'can_convert_gifts_to_stars') bool? canConvertGiftsToStars,
      @JsonKey(name: 'can_transfer_and_upgrade_gifts')
      bool? canTransferAndUpgradeGifts,
      @JsonKey(name: 'can_transfer_stars') bool? canTransferStars,
      @JsonKey(name: 'can_manage_stories') bool? canManageStories});
}

/// @nodoc
class __$BusinessBotRightsCopyWithImpl<$Res>
    implements _$BusinessBotRightsCopyWith<$Res> {
  __$BusinessBotRightsCopyWithImpl(this._self, this._then);

  final _BusinessBotRights _self;
  final $Res Function(_BusinessBotRights) _then;

  /// Create a copy of BusinessBotRights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? canReply = freezed,
    Object? canReadMessages = freezed,
    Object? canDeleteOutgoingMessages = freezed,
    Object? canDeleteAllMessages = freezed,
    Object? canEditName = freezed,
    Object? canEditBio = freezed,
    Object? canEditProfilePhoto = freezed,
    Object? canEditUsername = freezed,
    Object? canChangeGiftSettings = freezed,
    Object? canViewGiftsAndStars = freezed,
    Object? canConvertGiftsToStars = freezed,
    Object? canTransferAndUpgradeGifts = freezed,
    Object? canTransferStars = freezed,
    Object? canManageStories = freezed,
  }) {
    return _then(_BusinessBotRights(
      canReply: freezed == canReply
          ? _self.canReply
          : canReply // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReadMessages: freezed == canReadMessages
          ? _self.canReadMessages
          : canReadMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canDeleteOutgoingMessages: freezed == canDeleteOutgoingMessages
          ? _self.canDeleteOutgoingMessages
          : canDeleteOutgoingMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canDeleteAllMessages: freezed == canDeleteAllMessages
          ? _self.canDeleteAllMessages
          : canDeleteAllMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditName: freezed == canEditName
          ? _self.canEditName
          : canEditName // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditBio: freezed == canEditBio
          ? _self.canEditBio
          : canEditBio // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditProfilePhoto: freezed == canEditProfilePhoto
          ? _self.canEditProfilePhoto
          : canEditProfilePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditUsername: freezed == canEditUsername
          ? _self.canEditUsername
          : canEditUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      canChangeGiftSettings: freezed == canChangeGiftSettings
          ? _self.canChangeGiftSettings
          : canChangeGiftSettings // ignore: cast_nullable_to_non_nullable
              as bool?,
      canViewGiftsAndStars: freezed == canViewGiftsAndStars
          ? _self.canViewGiftsAndStars
          : canViewGiftsAndStars // ignore: cast_nullable_to_non_nullable
              as bool?,
      canConvertGiftsToStars: freezed == canConvertGiftsToStars
          ? _self.canConvertGiftsToStars
          : canConvertGiftsToStars // ignore: cast_nullable_to_non_nullable
              as bool?,
      canTransferAndUpgradeGifts: freezed == canTransferAndUpgradeGifts
          ? _self.canTransferAndUpgradeGifts
          : canTransferAndUpgradeGifts // ignore: cast_nullable_to_non_nullable
              as bool?,
      canTransferStars: freezed == canTransferStars
          ? _self.canTransferStars
          : canTransferStars // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageStories: freezed == canManageStories
          ? _self.canManageStories
          : canManageStories // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
