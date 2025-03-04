// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_administrator_rights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatAdministratorRights _$ChatAdministratorRightsFromJson(
    Map<String, dynamic> json) {
  return _ChatAdministratorRights.fromJson(json);
}

/// @nodoc
mixin _$ChatAdministratorRights {
  /// True, if the user's presence in the chat is hidden
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous => throw _privateConstructorUsedError;

  /// True, if the administrator can access the chat event log, chat
  /// statistics, message statistics in channels, see channel members, see
  /// anonymous administrators in supergroups and ignore slow mode. Implied by
  /// any other administrator privilege
  @JsonKey(name: 'can_manage_chat')
  bool get canManageChat => throw _privateConstructorUsedError;

  /// True, if the administrator can delete messages of other users
  @JsonKey(name: 'can_delete_messages')
  bool get canDeleteMessages => throw _privateConstructorUsedError;

  /// True, if the administrator can manage video chats
  @JsonKey(name: 'can_manage_video_chats')
  bool get canManageVideoChats => throw _privateConstructorUsedError;

  /// True, if the administrator can restrict, ban or unban chat members
  @JsonKey(name: 'can_restrict_members')
  bool get canRestrictMembers => throw _privateConstructorUsedError;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that he has promoted,
  /// directly or indirectly (promoted by administrators that were appointed
  /// by the user)
  @JsonKey(name: 'can_promote_members')
  bool get canPromoteMembers => throw _privateConstructorUsedError;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @JsonKey(name: 'can_change_info')
  bool get canChangeInfo => throw _privateConstructorUsedError;

  /// True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  bool get canInviteUsers => throw _privateConstructorUsedError;

  /// Optional. True, if the administrator can post in the channel; channels
  /// only
  @JsonKey(name: 'can_post_messages')
  bool? get canPostMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages; channels only
  @JsonKey(name: 'can_edit_messages')
  bool? get canEditMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to pin messages; groups and
  /// supergroups only
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages => throw _privateConstructorUsedError;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics; supergroups only
  @JsonKey(name: 'can_manage_forum')
  bool? get canManageForum => throw _privateConstructorUsedError;

  /// Optional. True, if the administrator can post stories in the channel;
  /// channels only
  @JsonKey(name: 'can_post_stories')
  bool? get canPostStories => throw _privateConstructorUsedError;

  /// Optional. True, if the administrator can edit stories posted by other
  /// users; channels only
  @JsonKey(name: 'can_edit_stories')
  bool? get canEditStories => throw _privateConstructorUsedError;

  /// Optional. True, if the administrator can delete stories posted by other
  /// users
  @JsonKey(name: 'can_delete_stories')
  bool? get canDeleteStories => throw _privateConstructorUsedError;

  /// Serializes this ChatAdministratorRights to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatAdministratorRightsCopyWith<ChatAdministratorRights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAdministratorRightsCopyWith<$Res> {
  factory $ChatAdministratorRightsCopyWith(ChatAdministratorRights value,
          $Res Function(ChatAdministratorRights) then) =
      _$ChatAdministratorRightsCopyWithImpl<$Res, ChatAdministratorRights>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'can_manage_chat') bool canManageChat,
      @JsonKey(name: 'can_delete_messages') bool canDeleteMessages,
      @JsonKey(name: 'can_manage_video_chats') bool canManageVideoChats,
      @JsonKey(name: 'can_restrict_members') bool canRestrictMembers,
      @JsonKey(name: 'can_promote_members') bool canPromoteMembers,
      @JsonKey(name: 'can_change_info') bool canChangeInfo,
      @JsonKey(name: 'can_invite_users') bool canInviteUsers,
      @JsonKey(name: 'can_post_messages') bool? canPostMessages,
      @JsonKey(name: 'can_edit_messages') bool? canEditMessages,
      @JsonKey(name: 'can_pin_messages') bool? canPinMessages,
      @JsonKey(name: 'can_manage_forum') bool? canManageForum,
      @JsonKey(name: 'can_post_stories') bool? canPostStories,
      @JsonKey(name: 'can_edit_stories') bool? canEditStories,
      @JsonKey(name: 'can_delete_stories') bool? canDeleteStories});
}

/// @nodoc
class _$ChatAdministratorRightsCopyWithImpl<$Res,
        $Val extends ChatAdministratorRights>
    implements $ChatAdministratorRightsCopyWith<$Res> {
  _$ChatAdministratorRightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAnonymous = null,
    Object? canManageChat = null,
    Object? canDeleteMessages = null,
    Object? canManageVideoChats = null,
    Object? canRestrictMembers = null,
    Object? canPromoteMembers = null,
    Object? canChangeInfo = null,
    Object? canInviteUsers = null,
    Object? canPostMessages = freezed,
    Object? canEditMessages = freezed,
    Object? canPinMessages = freezed,
    Object? canManageForum = freezed,
    Object? canPostStories = freezed,
    Object? canEditStories = freezed,
    Object? canDeleteStories = freezed,
  }) {
    return _then(_value.copyWith(
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageChat: null == canManageChat
          ? _value.canManageChat
          : canManageChat // ignore: cast_nullable_to_non_nullable
              as bool,
      canDeleteMessages: null == canDeleteMessages
          ? _value.canDeleteMessages
          : canDeleteMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageVideoChats: null == canManageVideoChats
          ? _value.canManageVideoChats
          : canManageVideoChats // ignore: cast_nullable_to_non_nullable
              as bool,
      canRestrictMembers: null == canRestrictMembers
          ? _value.canRestrictMembers
          : canRestrictMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      canPromoteMembers: null == canPromoteMembers
          ? _value.canPromoteMembers
          : canPromoteMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeInfo: null == canChangeInfo
          ? _value.canChangeInfo
          : canChangeInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      canInviteUsers: null == canInviteUsers
          ? _value.canInviteUsers
          : canInviteUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canPostMessages: freezed == canPostMessages
          ? _value.canPostMessages
          : canPostMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditMessages: freezed == canEditMessages
          ? _value.canEditMessages
          : canEditMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPinMessages: freezed == canPinMessages
          ? _value.canPinMessages
          : canPinMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageForum: freezed == canManageForum
          ? _value.canManageForum
          : canManageForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPostStories: freezed == canPostStories
          ? _value.canPostStories
          : canPostStories // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditStories: freezed == canEditStories
          ? _value.canEditStories
          : canEditStories // ignore: cast_nullable_to_non_nullable
              as bool?,
      canDeleteStories: freezed == canDeleteStories
          ? _value.canDeleteStories
          : canDeleteStories // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatAdministratorRightsImplCopyWith<$Res>
    implements $ChatAdministratorRightsCopyWith<$Res> {
  factory _$$ChatAdministratorRightsImplCopyWith(
          _$ChatAdministratorRightsImpl value,
          $Res Function(_$ChatAdministratorRightsImpl) then) =
      __$$ChatAdministratorRightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'can_manage_chat') bool canManageChat,
      @JsonKey(name: 'can_delete_messages') bool canDeleteMessages,
      @JsonKey(name: 'can_manage_video_chats') bool canManageVideoChats,
      @JsonKey(name: 'can_restrict_members') bool canRestrictMembers,
      @JsonKey(name: 'can_promote_members') bool canPromoteMembers,
      @JsonKey(name: 'can_change_info') bool canChangeInfo,
      @JsonKey(name: 'can_invite_users') bool canInviteUsers,
      @JsonKey(name: 'can_post_messages') bool? canPostMessages,
      @JsonKey(name: 'can_edit_messages') bool? canEditMessages,
      @JsonKey(name: 'can_pin_messages') bool? canPinMessages,
      @JsonKey(name: 'can_manage_forum') bool? canManageForum,
      @JsonKey(name: 'can_post_stories') bool? canPostStories,
      @JsonKey(name: 'can_edit_stories') bool? canEditStories,
      @JsonKey(name: 'can_delete_stories') bool? canDeleteStories});
}

/// @nodoc
class __$$ChatAdministratorRightsImplCopyWithImpl<$Res>
    extends _$ChatAdministratorRightsCopyWithImpl<$Res,
        _$ChatAdministratorRightsImpl>
    implements _$$ChatAdministratorRightsImplCopyWith<$Res> {
  __$$ChatAdministratorRightsImplCopyWithImpl(
      _$ChatAdministratorRightsImpl _value,
      $Res Function(_$ChatAdministratorRightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAnonymous = null,
    Object? canManageChat = null,
    Object? canDeleteMessages = null,
    Object? canManageVideoChats = null,
    Object? canRestrictMembers = null,
    Object? canPromoteMembers = null,
    Object? canChangeInfo = null,
    Object? canInviteUsers = null,
    Object? canPostMessages = freezed,
    Object? canEditMessages = freezed,
    Object? canPinMessages = freezed,
    Object? canManageForum = freezed,
    Object? canPostStories = freezed,
    Object? canEditStories = freezed,
    Object? canDeleteStories = freezed,
  }) {
    return _then(_$ChatAdministratorRightsImpl(
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageChat: null == canManageChat
          ? _value.canManageChat
          : canManageChat // ignore: cast_nullable_to_non_nullable
              as bool,
      canDeleteMessages: null == canDeleteMessages
          ? _value.canDeleteMessages
          : canDeleteMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageVideoChats: null == canManageVideoChats
          ? _value.canManageVideoChats
          : canManageVideoChats // ignore: cast_nullable_to_non_nullable
              as bool,
      canRestrictMembers: null == canRestrictMembers
          ? _value.canRestrictMembers
          : canRestrictMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      canPromoteMembers: null == canPromoteMembers
          ? _value.canPromoteMembers
          : canPromoteMembers // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeInfo: null == canChangeInfo
          ? _value.canChangeInfo
          : canChangeInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      canInviteUsers: null == canInviteUsers
          ? _value.canInviteUsers
          : canInviteUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canPostMessages: freezed == canPostMessages
          ? _value.canPostMessages
          : canPostMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditMessages: freezed == canEditMessages
          ? _value.canEditMessages
          : canEditMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPinMessages: freezed == canPinMessages
          ? _value.canPinMessages
          : canPinMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      canManageForum: freezed == canManageForum
          ? _value.canManageForum
          : canManageForum // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPostStories: freezed == canPostStories
          ? _value.canPostStories
          : canPostStories // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEditStories: freezed == canEditStories
          ? _value.canEditStories
          : canEditStories // ignore: cast_nullable_to_non_nullable
              as bool?,
      canDeleteStories: freezed == canDeleteStories
          ? _value.canDeleteStories
          : canDeleteStories // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatAdministratorRightsImpl implements _ChatAdministratorRights {
  const _$ChatAdministratorRightsImpl(
      {@JsonKey(name: 'is_anonymous') required this.isAnonymous,
      @JsonKey(name: 'can_manage_chat') required this.canManageChat,
      @JsonKey(name: 'can_delete_messages') required this.canDeleteMessages,
      @JsonKey(name: 'can_manage_video_chats')
      required this.canManageVideoChats,
      @JsonKey(name: 'can_restrict_members') required this.canRestrictMembers,
      @JsonKey(name: 'can_promote_members') required this.canPromoteMembers,
      @JsonKey(name: 'can_change_info') required this.canChangeInfo,
      @JsonKey(name: 'can_invite_users') required this.canInviteUsers,
      @JsonKey(name: 'can_post_messages') this.canPostMessages,
      @JsonKey(name: 'can_edit_messages') this.canEditMessages,
      @JsonKey(name: 'can_pin_messages') this.canPinMessages,
      @JsonKey(name: 'can_manage_forum') this.canManageForum,
      @JsonKey(name: 'can_post_stories') this.canPostStories,
      @JsonKey(name: 'can_edit_stories') this.canEditStories,
      @JsonKey(name: 'can_delete_stories') this.canDeleteStories});

  factory _$ChatAdministratorRightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatAdministratorRightsImplFromJson(json);

  /// True, if the user's presence in the chat is hidden
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  /// True, if the administrator can access the chat event log, chat
  /// statistics, message statistics in channels, see channel members, see
  /// anonymous administrators in supergroups and ignore slow mode. Implied by
  /// any other administrator privilege
  @override
  @JsonKey(name: 'can_manage_chat')
  final bool canManageChat;

  /// True, if the administrator can delete messages of other users
  @override
  @JsonKey(name: 'can_delete_messages')
  final bool canDeleteMessages;

  /// True, if the administrator can manage video chats
  @override
  @JsonKey(name: 'can_manage_video_chats')
  final bool canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members
  @override
  @JsonKey(name: 'can_restrict_members')
  final bool canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that he has promoted,
  /// directly or indirectly (promoted by administrators that were appointed
  /// by the user)
  @override
  @JsonKey(name: 'can_promote_members')
  final bool canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @override
  @JsonKey(name: 'can_change_info')
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @override
  @JsonKey(name: 'can_invite_users')
  final bool canInviteUsers;

  /// Optional. True, if the administrator can post in the channel; channels
  /// only
  @override
  @JsonKey(name: 'can_post_messages')
  final bool? canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages; channels only
  @override
  @JsonKey(name: 'can_edit_messages')
  final bool? canEditMessages;

  /// Optional. True, if the user is allowed to pin messages; groups and
  /// supergroups only
  @override
  @JsonKey(name: 'can_pin_messages')
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics; supergroups only
  @override
  @JsonKey(name: 'can_manage_forum')
  final bool? canManageForum;

  /// Optional. True, if the administrator can post stories in the channel;
  /// channels only
  @override
  @JsonKey(name: 'can_post_stories')
  final bool? canPostStories;

  /// Optional. True, if the administrator can edit stories posted by other
  /// users; channels only
  @override
  @JsonKey(name: 'can_edit_stories')
  final bool? canEditStories;

  /// Optional. True, if the administrator can delete stories posted by other
  /// users
  @override
  @JsonKey(name: 'can_delete_stories')
  final bool? canDeleteStories;

  @override
  String toString() {
    return 'ChatAdministratorRights(isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageForum: $canManageForum, canPostStories: $canPostStories, canEditStories: $canEditStories, canDeleteStories: $canDeleteStories)';
  }

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatAdministratorRightsImplCopyWith<_$ChatAdministratorRightsImpl>
      get copyWith => __$$ChatAdministratorRightsImplCopyWithImpl<
          _$ChatAdministratorRightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatAdministratorRightsImplToJson(
      this,
    );
  }
}

abstract class _ChatAdministratorRights implements ChatAdministratorRights {
  const factory _ChatAdministratorRights(
          {@JsonKey(name: 'is_anonymous') required final bool isAnonymous,
          @JsonKey(name: 'can_manage_chat') required final bool canManageChat,
          @JsonKey(name: 'can_delete_messages')
          required final bool canDeleteMessages,
          @JsonKey(name: 'can_manage_video_chats')
          required final bool canManageVideoChats,
          @JsonKey(name: 'can_restrict_members')
          required final bool canRestrictMembers,
          @JsonKey(name: 'can_promote_members')
          required final bool canPromoteMembers,
          @JsonKey(name: 'can_change_info') required final bool canChangeInfo,
          @JsonKey(name: 'can_invite_users') required final bool canInviteUsers,
          @JsonKey(name: 'can_post_messages') final bool? canPostMessages,
          @JsonKey(name: 'can_edit_messages') final bool? canEditMessages,
          @JsonKey(name: 'can_pin_messages') final bool? canPinMessages,
          @JsonKey(name: 'can_manage_forum') final bool? canManageForum,
          @JsonKey(name: 'can_post_stories') final bool? canPostStories,
          @JsonKey(name: 'can_edit_stories') final bool? canEditStories,
          @JsonKey(name: 'can_delete_stories') final bool? canDeleteStories}) =
      _$ChatAdministratorRightsImpl;

  factory _ChatAdministratorRights.fromJson(Map<String, dynamic> json) =
      _$ChatAdministratorRightsImpl.fromJson;

  /// True, if the user's presence in the chat is hidden
  @override
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;

  /// True, if the administrator can access the chat event log, chat
  /// statistics, message statistics in channels, see channel members, see
  /// anonymous administrators in supergroups and ignore slow mode. Implied by
  /// any other administrator privilege
  @override
  @JsonKey(name: 'can_manage_chat')
  bool get canManageChat;

  /// True, if the administrator can delete messages of other users
  @override
  @JsonKey(name: 'can_delete_messages')
  bool get canDeleteMessages;

  /// True, if the administrator can manage video chats
  @override
  @JsonKey(name: 'can_manage_video_chats')
  bool get canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members
  @override
  @JsonKey(name: 'can_restrict_members')
  bool get canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that he has promoted,
  /// directly or indirectly (promoted by administrators that were appointed
  /// by the user)
  @override
  @JsonKey(name: 'can_promote_members')
  bool get canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @override
  @JsonKey(name: 'can_change_info')
  bool get canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @override
  @JsonKey(name: 'can_invite_users')
  bool get canInviteUsers;

  /// Optional. True, if the administrator can post in the channel; channels
  /// only
  @override
  @JsonKey(name: 'can_post_messages')
  bool? get canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages; channels only
  @override
  @JsonKey(name: 'can_edit_messages')
  bool? get canEditMessages;

  /// Optional. True, if the user is allowed to pin messages; groups and
  /// supergroups only
  @override
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics; supergroups only
  @override
  @JsonKey(name: 'can_manage_forum')
  bool? get canManageForum;

  /// Optional. True, if the administrator can post stories in the channel;
  /// channels only
  @override
  @JsonKey(name: 'can_post_stories')
  bool? get canPostStories;

  /// Optional. True, if the administrator can edit stories posted by other
  /// users; channels only
  @override
  @JsonKey(name: 'can_edit_stories')
  bool? get canEditStories;

  /// Optional. True, if the administrator can delete stories posted by other
  /// users
  @override
  @JsonKey(name: 'can_delete_stories')
  bool? get canDeleteStories;

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatAdministratorRightsImplCopyWith<_$ChatAdministratorRightsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
