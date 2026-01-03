// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_administrator_rights.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatAdministratorRights {
  /// True, if the user's presence in the chat is hidden
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;

  /// True, if the administrator can access the chat event log, chat
  /// statistics, message statistics in channels, see channel members, see
  /// anonymous administrators in supergroups and ignore slow mode. Implied by
  /// any other administrator privilege
  @JsonKey(name: 'can_manage_chat')
  bool get canManageChat;

  /// True, if the administrator can delete messages of other users
  @JsonKey(name: 'can_delete_messages')
  bool get canDeleteMessages;

  /// True, if the administrator can manage video chats
  @JsonKey(name: 'can_manage_video_chats')
  bool get canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members
  @JsonKey(name: 'can_restrict_members')
  bool get canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that he has promoted,
  /// directly or indirectly (promoted by administrators that were appointed
  /// by the user)
  @JsonKey(name: 'can_promote_members')
  bool get canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @JsonKey(name: 'can_change_info')
  bool get canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  bool get canInviteUsers;

  /// Optional. True, if the administrator can post in the channel; channels
  /// only
  @JsonKey(name: 'can_post_messages')
  bool? get canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages; channels only
  @JsonKey(name: 'can_edit_messages')
  bool? get canEditMessages;

  /// Optional. True, if the user is allowed to pin messages; groups and
  /// supergroups only
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics; supergroups only
  @JsonKey(name: 'can_manage_forum')
  bool? get canManageForum;

  /// Optional. True, if the administrator can post stories in the channel;
  /// channels only
  @JsonKey(name: 'can_post_stories')
  bool? get canPostStories;

  /// Optional. True, if the administrator can edit stories posted by other
  /// users; channels only
  @JsonKey(name: 'can_edit_stories')
  bool? get canEditStories;

  /// Optional. True, if the administrator can delete stories posted by other
  /// users
  @JsonKey(name: 'can_delete_stories')
  bool? get canDeleteStories;

  /// Optional. True, if the administrator can manage direct messages of the channel and decline suggested posts; for channels only
  @JsonKey(name: 'can_manage_direct_messages')
  bool? get canManageDirectMessages;

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatAdministratorRightsCopyWith<ChatAdministratorRights> get copyWith =>
      _$ChatAdministratorRightsCopyWithImpl<ChatAdministratorRights>(
        this as ChatAdministratorRights,
        _$identity,
      );

  /// Serializes this ChatAdministratorRights to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatAdministratorRights(isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageForum: $canManageForum, canPostStories: $canPostStories, canEditStories: $canEditStories, canDeleteStories: $canDeleteStories, canManageDirectMessages: $canManageDirectMessages)';
  }
}

/// @nodoc
abstract mixin class $ChatAdministratorRightsCopyWith<$Res> {
  factory $ChatAdministratorRightsCopyWith(
    ChatAdministratorRights value,
    $Res Function(ChatAdministratorRights) _then,
  ) = _$ChatAdministratorRightsCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
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
    @JsonKey(name: 'can_delete_stories') bool? canDeleteStories,
    @JsonKey(name: 'can_manage_direct_messages') bool? canManageDirectMessages,
  });
}

/// @nodoc
class _$ChatAdministratorRightsCopyWithImpl<$Res>
    implements $ChatAdministratorRightsCopyWith<$Res> {
  _$ChatAdministratorRightsCopyWithImpl(this._self, this._then);

  final ChatAdministratorRights _self;
  final $Res Function(ChatAdministratorRights) _then;

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
    Object? canManageDirectMessages = freezed,
  }) {
    return _then(
      _self.copyWith(
        isAnonymous: null == isAnonymous
            ? _self.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageChat: null == canManageChat
            ? _self.canManageChat
            : canManageChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        canDeleteMessages: null == canDeleteMessages
            ? _self.canDeleteMessages
            : canDeleteMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageVideoChats: null == canManageVideoChats
            ? _self.canManageVideoChats
            : canManageVideoChats // ignore: cast_nullable_to_non_nullable
                  as bool,
        canRestrictMembers: null == canRestrictMembers
            ? _self.canRestrictMembers
            : canRestrictMembers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canPromoteMembers: null == canPromoteMembers
            ? _self.canPromoteMembers
            : canPromoteMembers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canChangeInfo: null == canChangeInfo
            ? _self.canChangeInfo
            : canChangeInfo // ignore: cast_nullable_to_non_nullable
                  as bool,
        canInviteUsers: null == canInviteUsers
            ? _self.canInviteUsers
            : canInviteUsers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canPostMessages: freezed == canPostMessages
            ? _self.canPostMessages
            : canPostMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canEditMessages: freezed == canEditMessages
            ? _self.canEditMessages
            : canEditMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canPinMessages: freezed == canPinMessages
            ? _self.canPinMessages
            : canPinMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canManageForum: freezed == canManageForum
            ? _self.canManageForum
            : canManageForum // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canPostStories: freezed == canPostStories
            ? _self.canPostStories
            : canPostStories // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canEditStories: freezed == canEditStories
            ? _self.canEditStories
            : canEditStories // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canDeleteStories: freezed == canDeleteStories
            ? _self.canDeleteStories
            : canDeleteStories // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canManageDirectMessages: freezed == canManageDirectMessages
            ? _self.canManageDirectMessages
            : canManageDirectMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [ChatAdministratorRights].
extension ChatAdministratorRightsPatterns on ChatAdministratorRights {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChatAdministratorRights value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatAdministratorRights() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChatAdministratorRights value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatAdministratorRights():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChatAdministratorRights value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatAdministratorRights() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatAdministratorRights implements ChatAdministratorRights {
  const _ChatAdministratorRights({
    @JsonKey(name: 'is_anonymous') required this.isAnonymous,
    @JsonKey(name: 'can_manage_chat') required this.canManageChat,
    @JsonKey(name: 'can_delete_messages') required this.canDeleteMessages,
    @JsonKey(name: 'can_manage_video_chats') required this.canManageVideoChats,
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
    @JsonKey(name: 'can_delete_stories') this.canDeleteStories,
    @JsonKey(name: 'can_manage_direct_messages') this.canManageDirectMessages,
  });
  factory _ChatAdministratorRights.fromJson(Map<String, dynamic> json) =>
      _$ChatAdministratorRightsFromJson(json);

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

  /// Optional. True, if the administrator can manage direct messages of the channel and decline suggested posts; for channels only
  @override
  @JsonKey(name: 'can_manage_direct_messages')
  final bool? canManageDirectMessages;

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatAdministratorRightsCopyWith<_ChatAdministratorRights> get copyWith =>
      __$ChatAdministratorRightsCopyWithImpl<_ChatAdministratorRights>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ChatAdministratorRightsToJson(this);
  }

  @override
  String toString() {
    return 'ChatAdministratorRights(isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageForum: $canManageForum, canPostStories: $canPostStories, canEditStories: $canEditStories, canDeleteStories: $canDeleteStories, canManageDirectMessages: $canManageDirectMessages)';
  }
}

/// @nodoc
abstract mixin class _$ChatAdministratorRightsCopyWith<$Res>
    implements $ChatAdministratorRightsCopyWith<$Res> {
  factory _$ChatAdministratorRightsCopyWith(
    _ChatAdministratorRights value,
    $Res Function(_ChatAdministratorRights) _then,
  ) = __$ChatAdministratorRightsCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
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
    @JsonKey(name: 'can_delete_stories') bool? canDeleteStories,
    @JsonKey(name: 'can_manage_direct_messages') bool? canManageDirectMessages,
  });
}

/// @nodoc
class __$ChatAdministratorRightsCopyWithImpl<$Res>
    implements _$ChatAdministratorRightsCopyWith<$Res> {
  __$ChatAdministratorRightsCopyWithImpl(this._self, this._then);

  final _ChatAdministratorRights _self;
  final $Res Function(_ChatAdministratorRights) _then;

  /// Create a copy of ChatAdministratorRights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    Object? canManageDirectMessages = freezed,
  }) {
    return _then(
      _ChatAdministratorRights(
        isAnonymous: null == isAnonymous
            ? _self.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageChat: null == canManageChat
            ? _self.canManageChat
            : canManageChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        canDeleteMessages: null == canDeleteMessages
            ? _self.canDeleteMessages
            : canDeleteMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageVideoChats: null == canManageVideoChats
            ? _self.canManageVideoChats
            : canManageVideoChats // ignore: cast_nullable_to_non_nullable
                  as bool,
        canRestrictMembers: null == canRestrictMembers
            ? _self.canRestrictMembers
            : canRestrictMembers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canPromoteMembers: null == canPromoteMembers
            ? _self.canPromoteMembers
            : canPromoteMembers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canChangeInfo: null == canChangeInfo
            ? _self.canChangeInfo
            : canChangeInfo // ignore: cast_nullable_to_non_nullable
                  as bool,
        canInviteUsers: null == canInviteUsers
            ? _self.canInviteUsers
            : canInviteUsers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canPostMessages: freezed == canPostMessages
            ? _self.canPostMessages
            : canPostMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canEditMessages: freezed == canEditMessages
            ? _self.canEditMessages
            : canEditMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canPinMessages: freezed == canPinMessages
            ? _self.canPinMessages
            : canPinMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canManageForum: freezed == canManageForum
            ? _self.canManageForum
            : canManageForum // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canPostStories: freezed == canPostStories
            ? _self.canPostStories
            : canPostStories // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canEditStories: freezed == canEditStories
            ? _self.canEditStories
            : canEditStories // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canDeleteStories: freezed == canDeleteStories
            ? _self.canDeleteStories
            : canDeleteStories // ignore: cast_nullable_to_non_nullable
                  as bool?,
        canManageDirectMessages: freezed == canManageDirectMessages
            ? _self.canManageDirectMessages
            : canManageDirectMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}
