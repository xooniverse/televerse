// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ChatMember _$ChatMemberFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'creator':
      return ChatMemberOwner.fromJson(json);
    case 'administrator':
      return ChatMemberAdministrator.fromJson(json);
    case 'member':
      return ChatMemberMember.fromJson(json);
    case 'restricted':
      return ChatMemberRestricted.fromJson(json);
    case 'left':
      return ChatMemberLeft.fromJson(json);
    case 'kicked':
      return ChatMemberBanned.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'status',
        'ChatMember',
        'Invalid union type "${json['status']}"!',
      );
  }
}

/// @nodoc
mixin _$ChatMember {
  /// The member's status in the chat
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @JsonKey(name: 'user')
  User get user;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<ChatMember> get copyWith =>
      _$ChatMemberCopyWithImpl<ChatMember>(this as ChatMember, _$identity);

  /// Serializes this ChatMember to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatMember(status: $status, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberCopyWith<$Res> {
  factory $ChatMemberCopyWith(
    ChatMember value,
    $Res Function(ChatMember) _then,
  ) = _$ChatMemberCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
  });

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberCopyWithImpl<$Res> implements $ChatMemberCopyWith<$Res> {
  _$ChatMemberCopyWithImpl(this._self, this._then);

  final ChatMember _self;
  final $Res Function(ChatMember) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? user = null}) {
    return _then(
      _self.copyWith(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatMember].
extension ChatMemberPatterns on ChatMember {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? creator,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? kicked,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ChatMemberOwner() when creator != null:
        return creator(_that);
      case ChatMemberAdministrator() when administrator != null:
        return administrator(_that);
      case ChatMemberMember() when member != null:
        return member(_that);
      case ChatMemberRestricted() when restricted != null:
        return restricted(_that);
      case ChatMemberLeft() when left != null:
        return left(_that);
      case ChatMemberBanned() when kicked != null:
        return kicked(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) creator,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) kicked,
  }) {
    final _that = this;
    switch (_that) {
      case ChatMemberOwner():
        return creator(_that);
      case ChatMemberAdministrator():
        return administrator(_that);
      case ChatMemberMember():
        return member(_that);
      case ChatMemberRestricted():
        return restricted(_that);
      case ChatMemberLeft():
        return left(_that);
      case ChatMemberBanned():
        return kicked(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? creator,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? kicked,
  }) {
    final _that = this;
    switch (_that) {
      case ChatMemberOwner() when creator != null:
        return creator(_that);
      case ChatMemberAdministrator() when administrator != null:
        return administrator(_that);
      case ChatMemberMember() when member != null:
        return member(_that);
      case ChatMemberRestricted() when restricted != null:
        return restricted(_that);
      case ChatMemberLeft() when left != null:
        return left(_that);
      case ChatMemberBanned() when kicked != null:
        return kicked(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class ChatMemberOwner implements ChatMember {
  const ChatMemberOwner({
    @JsonKey(name: 'status') this.status = ChatMemberStatus.creator,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'is_anonymous') required this.isAnonymous,
    @JsonKey(name: 'custom_title') this.customTitle,
  });
  factory ChatMemberOwner.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberOwnerFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// True, if the user's presence in the chat is hidden
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  /// Optional. Custom title for this user
  @JsonKey(name: 'custom_title')
  final String? customTitle;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberOwnerCopyWith<ChatMemberOwner> get copyWith =>
      _$ChatMemberOwnerCopyWithImpl<ChatMemberOwner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberOwnerToJson(this);
  }

  @override
  String toString() {
    return 'ChatMember.creator(status: $status, user: $user, isAnonymous: $isAnonymous, customTitle: $customTitle)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberOwnerCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory $ChatMemberOwnerCopyWith(
    ChatMemberOwner value,
    $Res Function(ChatMemberOwner) _then,
  ) = _$ChatMemberOwnerCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
    @JsonKey(name: 'custom_title') String? customTitle,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberOwnerCopyWithImpl<$Res>
    implements $ChatMemberOwnerCopyWith<$Res> {
  _$ChatMemberOwnerCopyWithImpl(this._self, this._then);

  final ChatMemberOwner _self;
  final $Res Function(ChatMemberOwner) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? isAnonymous = null,
    Object? customTitle = freezed,
  }) {
    return _then(
      ChatMemberOwner(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        isAnonymous: null == isAnonymous
            ? _self.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as bool,
        customTitle: freezed == customTitle
            ? _self.customTitle
            : customTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatMemberAdministrator implements ChatMember {
  const ChatMemberAdministrator({
    @JsonKey(name: 'status') this.status = ChatMemberStatus.administrator,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'can_be_edited') required this.canBeEdited,
    @JsonKey(name: 'is_anonymous') required this.isAnonymous,
    @JsonKey(name: 'can_manage_chat') required this.canManageChat,
    @JsonKey(name: 'can_delete_messages') required this.canDeleteMessages,
    @JsonKey(name: 'can_manage_video_chats') required this.canManageVideoChats,
    @JsonKey(name: 'can_restrict_members') required this.canRestrictMembers,
    @JsonKey(name: 'can_promote_members') required this.canPromoteMembers,
    @JsonKey(name: 'can_change_info') required this.canChangeInfo,
    @JsonKey(name: 'can_invite_users') required this.canInviteUsers,
    @JsonKey(name: 'can_post_stories') required this.canPostStories,
    @JsonKey(name: 'can_edit_stories') required this.canEditStories,
    @JsonKey(name: 'can_delete_stories') required this.canDeleteStories,
    @JsonKey(name: 'can_post_messages') this.canPostMessages,
    @JsonKey(name: 'can_edit_messages') this.canEditMessages,
    @JsonKey(name: 'can_pin_messages') this.canPinMessages,
    @JsonKey(name: 'can_manage_topics') this.canManageTopics,
    @JsonKey(name: 'custom_title') this.customTitle,
    @JsonKey(name: 'can_manage_direct_messages') this.canManageDirectMessages,
  });
  factory ChatMemberAdministrator.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberAdministratorFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// True, if the bot is allowed to edit administrator privileges of that
  /// user
  @JsonKey(name: 'can_be_edited')
  final bool canBeEdited;

  /// True, if the user's presence in the chat is hidden
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  /// True, if the administrator can access the chat event log, get boost
  /// list, see hidden supergroup and channel members, report spam messages
  /// and ignore slow mode
  @JsonKey(name: 'can_manage_chat')
  final bool canManageChat;

  /// True, if the administrator can delete messages of other users
  @JsonKey(name: 'can_delete_messages')
  final bool canDeleteMessages;

  /// True, if the administrator can manage video chats
  @JsonKey(name: 'can_manage_video_chats')
  final bool canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members, or
  /// access supergroup statistics
  @JsonKey(name: 'can_restrict_members')
  final bool canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that they have promoted
  @JsonKey(name: 'can_promote_members')
  final bool canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @JsonKey(name: 'can_change_info')
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  final bool canInviteUsers;

  /// True, if the administrator can post stories to the chat
  @JsonKey(name: 'can_post_stories')
  final bool canPostStories;

  /// True, if the administrator can edit stories posted by other users
  @JsonKey(name: 'can_edit_stories')
  final bool canEditStories;

  /// True, if the administrator can delete stories posted by other users
  @JsonKey(name: 'can_delete_stories')
  final bool canDeleteStories;

  /// Optional. True, if the administrator can post messages in the channel,
  /// or access channel statistics
  @JsonKey(name: 'can_post_messages')
  final bool? canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages
  @JsonKey(name: 'can_edit_messages')
  final bool? canEditMessages;

  /// Optional. True, if the user is allowed to pin messages
  @JsonKey(name: 'can_pin_messages')
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics
  @JsonKey(name: 'can_manage_topics')
  final bool? canManageTopics;

  /// Optional. Custom title for this user
  @JsonKey(name: 'custom_title')
  final String? customTitle;

  /// Optional. True, if the administrator can manage direct messages of the channel and decline suggested posts; for channels only
  @JsonKey(name: 'can_manage_direct_messages')
  final bool? canManageDirectMessages;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberAdministratorCopyWith<ChatMemberAdministrator> get copyWith =>
      _$ChatMemberAdministratorCopyWithImpl<ChatMemberAdministrator>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberAdministratorToJson(this);
  }

  @override
  String toString() {
    return 'ChatMember.administrator(status: $status, user: $user, canBeEdited: $canBeEdited, isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostStories: $canPostStories, canEditStories: $canEditStories, canDeleteStories: $canDeleteStories, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, customTitle: $customTitle, canManageDirectMessages: $canManageDirectMessages)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberAdministratorCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory $ChatMemberAdministratorCopyWith(
    ChatMemberAdministrator value,
    $Res Function(ChatMemberAdministrator) _then,
  ) = _$ChatMemberAdministratorCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'can_be_edited') bool canBeEdited,
    @JsonKey(name: 'is_anonymous') bool isAnonymous,
    @JsonKey(name: 'can_manage_chat') bool canManageChat,
    @JsonKey(name: 'can_delete_messages') bool canDeleteMessages,
    @JsonKey(name: 'can_manage_video_chats') bool canManageVideoChats,
    @JsonKey(name: 'can_restrict_members') bool canRestrictMembers,
    @JsonKey(name: 'can_promote_members') bool canPromoteMembers,
    @JsonKey(name: 'can_change_info') bool canChangeInfo,
    @JsonKey(name: 'can_invite_users') bool canInviteUsers,
    @JsonKey(name: 'can_post_stories') bool canPostStories,
    @JsonKey(name: 'can_edit_stories') bool canEditStories,
    @JsonKey(name: 'can_delete_stories') bool canDeleteStories,
    @JsonKey(name: 'can_post_messages') bool? canPostMessages,
    @JsonKey(name: 'can_edit_messages') bool? canEditMessages,
    @JsonKey(name: 'can_pin_messages') bool? canPinMessages,
    @JsonKey(name: 'can_manage_topics') bool? canManageTopics,
    @JsonKey(name: 'custom_title') String? customTitle,
    @JsonKey(name: 'can_manage_direct_messages') bool? canManageDirectMessages,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberAdministratorCopyWithImpl<$Res>
    implements $ChatMemberAdministratorCopyWith<$Res> {
  _$ChatMemberAdministratorCopyWithImpl(this._self, this._then);

  final ChatMemberAdministrator _self;
  final $Res Function(ChatMemberAdministrator) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? canBeEdited = null,
    Object? isAnonymous = null,
    Object? canManageChat = null,
    Object? canDeleteMessages = null,
    Object? canManageVideoChats = null,
    Object? canRestrictMembers = null,
    Object? canPromoteMembers = null,
    Object? canChangeInfo = null,
    Object? canInviteUsers = null,
    Object? canPostStories = null,
    Object? canEditStories = null,
    Object? canDeleteStories = null,
    Object? canPostMessages = freezed,
    Object? canEditMessages = freezed,
    Object? canPinMessages = freezed,
    Object? canManageTopics = freezed,
    Object? customTitle = freezed,
    Object? canManageDirectMessages = freezed,
  }) {
    return _then(
      ChatMemberAdministrator(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        canBeEdited: null == canBeEdited
            ? _self.canBeEdited
            : canBeEdited // ignore: cast_nullable_to_non_nullable
                  as bool,
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
        canPostStories: null == canPostStories
            ? _self.canPostStories
            : canPostStories // ignore: cast_nullable_to_non_nullable
                  as bool,
        canEditStories: null == canEditStories
            ? _self.canEditStories
            : canEditStories // ignore: cast_nullable_to_non_nullable
                  as bool,
        canDeleteStories: null == canDeleteStories
            ? _self.canDeleteStories
            : canDeleteStories // ignore: cast_nullable_to_non_nullable
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
        canManageTopics: freezed == canManageTopics
            ? _self.canManageTopics
            : canManageTopics // ignore: cast_nullable_to_non_nullable
                  as bool?,
        customTitle: freezed == customTitle
            ? _self.customTitle
            : customTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        canManageDirectMessages: freezed == canManageDirectMessages
            ? _self.canManageDirectMessages
            : canManageDirectMessages // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatMemberMember implements ChatMember {
  const ChatMemberMember({
    @JsonKey(name: 'status') this.status = ChatMemberStatus.member,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'until_date') this.untilDate,
  });
  factory ChatMemberMember.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberMemberFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Optional. Date when restrictions will be lifted for this user; Unix time
  @JsonKey(name: 'until_date')
  final int? untilDate;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberMemberCopyWith<ChatMemberMember> get copyWith =>
      _$ChatMemberMemberCopyWithImpl<ChatMemberMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberMemberToJson(this);
  }

  @override
  String toString() {
    return 'ChatMember.member(status: $status, user: $user, untilDate: $untilDate)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberMemberCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory $ChatMemberMemberCopyWith(
    ChatMemberMember value,
    $Res Function(ChatMemberMember) _then,
  ) = _$ChatMemberMemberCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'until_date') int? untilDate,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberMemberCopyWithImpl<$Res>
    implements $ChatMemberMemberCopyWith<$Res> {
  _$ChatMemberMemberCopyWithImpl(this._self, this._then);

  final ChatMemberMember _self;
  final $Res Function(ChatMemberMember) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? untilDate = freezed,
  }) {
    return _then(
      ChatMemberMember(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        untilDate: freezed == untilDate
            ? _self.untilDate
            : untilDate // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatMemberRestricted implements ChatMember {
  const ChatMemberRestricted({
    @JsonKey(name: 'status') this.status = ChatMemberStatus.restricted,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'is_member') required this.isMember,
    @JsonKey(name: 'can_send_messages') required this.canSendMessages,
    @JsonKey(name: 'can_send_audios') required this.canSendAudios,
    @JsonKey(name: 'can_send_documents') required this.canSendDocuments,
    @JsonKey(name: 'can_send_photos') required this.canSendPhotos,
    @JsonKey(name: 'can_send_videos') required this.canSendVideos,
    @JsonKey(name: 'can_send_video_notes') required this.canSendVideoNotes,
    @JsonKey(name: 'can_send_voice_notes') required this.canSendVoiceNotes,
    @JsonKey(name: 'can_send_polls') required this.canSendPolls,
    @JsonKey(name: 'can_send_other_messages')
    required this.canSendOtherMessages,
    @JsonKey(name: 'can_add_web_page_previews')
    required this.canAddWebPagePreviews,
    @JsonKey(name: 'can_change_info') required this.canChangeInfo,
    @JsonKey(name: 'can_invite_users') required this.canInviteUsers,
    @JsonKey(name: 'can_pin_messages') required this.canPinMessages,
    @JsonKey(name: 'can_manage_topics') required this.canManageTopics,
    @JsonKey(name: 'until_date') required this.untilDate,
  });
  factory ChatMemberRestricted.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberRestrictedFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// True, if the user is a member of the chat at the moment of the request
  @JsonKey(name: 'is_member')
  final bool isMember;

  /// True, if the user is allowed to send text messages, contacts, giveaways,
  /// giveaway winners, invoices, locations and venues
  @JsonKey(name: 'can_send_messages')
  final bool canSendMessages;

  /// True, if the user is allowed to send audios
  @JsonKey(name: 'can_send_audios')
  final bool canSendAudios;

  /// True, if the user is allowed to send documents
  @JsonKey(name: 'can_send_documents')
  final bool canSendDocuments;

  /// True, if the user is allowed to send photos
  @JsonKey(name: 'can_send_photos')
  final bool canSendPhotos;

  /// True, if the user is allowed to send videos
  @JsonKey(name: 'can_send_videos')
  final bool canSendVideos;

  /// True, if the user is allowed to send video notes
  @JsonKey(name: 'can_send_video_notes')
  final bool canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  @JsonKey(name: 'can_send_voice_notes')
  final bool canSendVoiceNotes;

  /// True, if the user is allowed to send polls
  @JsonKey(name: 'can_send_polls')
  final bool canSendPolls;

  /// True, if the user is allowed to send animations, games, stickers and use
  /// inline bots
  @JsonKey(name: 'can_send_other_messages')
  final bool canSendOtherMessages;

  /// True, if the user is allowed to add web page previews to their messages
  @JsonKey(name: 'can_add_web_page_previews')
  final bool canAddWebPagePreviews;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @JsonKey(name: 'can_change_info')
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  final bool canInviteUsers;

  /// True, if the user is allowed to pin messages
  @JsonKey(name: 'can_pin_messages')
  final bool canPinMessages;

  /// True, if the user is allowed to create forum topics
  @JsonKey(name: 'can_manage_topics')
  final bool canManageTopics;

  /// Date when restrictions will be lifted for this user; Unix time. If 0,
  /// then the user is restricted forever
  @JsonKey(name: 'until_date')
  final int untilDate;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberRestrictedCopyWith<ChatMemberRestricted> get copyWith =>
      _$ChatMemberRestrictedCopyWithImpl<ChatMemberRestricted>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberRestrictedToJson(this);
  }

  @override
  String toString() {
    return 'ChatMember.restricted(status: $status, user: $user, isMember: $isMember, canSendMessages: $canSendMessages, canSendAudios: $canSendAudios, canSendDocuments: $canSendDocuments, canSendPhotos: $canSendPhotos, canSendVideos: $canSendVideos, canSendVideoNotes: $canSendVideoNotes, canSendVoiceNotes: $canSendVoiceNotes, canSendPolls: $canSendPolls, canSendOtherMessages: $canSendOtherMessages, canAddWebPagePreviews: $canAddWebPagePreviews, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, untilDate: $untilDate)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberRestrictedCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory $ChatMemberRestrictedCopyWith(
    ChatMemberRestricted value,
    $Res Function(ChatMemberRestricted) _then,
  ) = _$ChatMemberRestrictedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'is_member') bool isMember,
    @JsonKey(name: 'can_send_messages') bool canSendMessages,
    @JsonKey(name: 'can_send_audios') bool canSendAudios,
    @JsonKey(name: 'can_send_documents') bool canSendDocuments,
    @JsonKey(name: 'can_send_photos') bool canSendPhotos,
    @JsonKey(name: 'can_send_videos') bool canSendVideos,
    @JsonKey(name: 'can_send_video_notes') bool canSendVideoNotes,
    @JsonKey(name: 'can_send_voice_notes') bool canSendVoiceNotes,
    @JsonKey(name: 'can_send_polls') bool canSendPolls,
    @JsonKey(name: 'can_send_other_messages') bool canSendOtherMessages,
    @JsonKey(name: 'can_add_web_page_previews') bool canAddWebPagePreviews,
    @JsonKey(name: 'can_change_info') bool canChangeInfo,
    @JsonKey(name: 'can_invite_users') bool canInviteUsers,
    @JsonKey(name: 'can_pin_messages') bool canPinMessages,
    @JsonKey(name: 'can_manage_topics') bool canManageTopics,
    @JsonKey(name: 'until_date') int untilDate,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberRestrictedCopyWithImpl<$Res>
    implements $ChatMemberRestrictedCopyWith<$Res> {
  _$ChatMemberRestrictedCopyWithImpl(this._self, this._then);

  final ChatMemberRestricted _self;
  final $Res Function(ChatMemberRestricted) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? isMember = null,
    Object? canSendMessages = null,
    Object? canSendAudios = null,
    Object? canSendDocuments = null,
    Object? canSendPhotos = null,
    Object? canSendVideos = null,
    Object? canSendVideoNotes = null,
    Object? canSendVoiceNotes = null,
    Object? canSendPolls = null,
    Object? canSendOtherMessages = null,
    Object? canAddWebPagePreviews = null,
    Object? canChangeInfo = null,
    Object? canInviteUsers = null,
    Object? canPinMessages = null,
    Object? canManageTopics = null,
    Object? untilDate = null,
  }) {
    return _then(
      ChatMemberRestricted(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        isMember: null == isMember
            ? _self.isMember
            : isMember // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendMessages: null == canSendMessages
            ? _self.canSendMessages
            : canSendMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendAudios: null == canSendAudios
            ? _self.canSendAudios
            : canSendAudios // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendDocuments: null == canSendDocuments
            ? _self.canSendDocuments
            : canSendDocuments // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendPhotos: null == canSendPhotos
            ? _self.canSendPhotos
            : canSendPhotos // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendVideos: null == canSendVideos
            ? _self.canSendVideos
            : canSendVideos // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendVideoNotes: null == canSendVideoNotes
            ? _self.canSendVideoNotes
            : canSendVideoNotes // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendVoiceNotes: null == canSendVoiceNotes
            ? _self.canSendVoiceNotes
            : canSendVoiceNotes // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendPolls: null == canSendPolls
            ? _self.canSendPolls
            : canSendPolls // ignore: cast_nullable_to_non_nullable
                  as bool,
        canSendOtherMessages: null == canSendOtherMessages
            ? _self.canSendOtherMessages
            : canSendOtherMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        canAddWebPagePreviews: null == canAddWebPagePreviews
            ? _self.canAddWebPagePreviews
            : canAddWebPagePreviews // ignore: cast_nullable_to_non_nullable
                  as bool,
        canChangeInfo: null == canChangeInfo
            ? _self.canChangeInfo
            : canChangeInfo // ignore: cast_nullable_to_non_nullable
                  as bool,
        canInviteUsers: null == canInviteUsers
            ? _self.canInviteUsers
            : canInviteUsers // ignore: cast_nullable_to_non_nullable
                  as bool,
        canPinMessages: null == canPinMessages
            ? _self.canPinMessages
            : canPinMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        canManageTopics: null == canManageTopics
            ? _self.canManageTopics
            : canManageTopics // ignore: cast_nullable_to_non_nullable
                  as bool,
        untilDate: null == untilDate
            ? _self.untilDate
            : untilDate // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatMemberLeft implements ChatMember {
  const ChatMemberLeft({
    @JsonKey(name: 'status') this.status = ChatMemberStatus.left,
    @JsonKey(name: 'user') required this.user,
  });
  factory ChatMemberLeft.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberLeftFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberLeftCopyWith<ChatMemberLeft> get copyWith =>
      _$ChatMemberLeftCopyWithImpl<ChatMemberLeft>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberLeftToJson(this);
  }

  @override
  String toString() {
    return 'ChatMember.left(status: $status, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberLeftCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory $ChatMemberLeftCopyWith(
    ChatMemberLeft value,
    $Res Function(ChatMemberLeft) _then,
  ) = _$ChatMemberLeftCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberLeftCopyWithImpl<$Res>
    implements $ChatMemberLeftCopyWith<$Res> {
  _$ChatMemberLeftCopyWithImpl(this._self, this._then);

  final ChatMemberLeft _self;
  final $Res Function(ChatMemberLeft) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? status = null, Object? user = null}) {
    return _then(
      ChatMemberLeft(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class ChatMemberBanned implements ChatMember {
  const ChatMemberBanned({
    @JsonKey(name: 'status') this.status = ChatMemberStatus.kicked,
    @JsonKey(name: 'user') required this.user,
    @JsonKey(name: 'until_date') required this.untilDate,
  });
  factory ChatMemberBanned.fromJson(Map<String, dynamic> json) =>
      _$ChatMemberBannedFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Date when restrictions will be lifted for this user; Unix time. If 0,
  /// then the user is banned forever
  @JsonKey(name: 'until_date')
  final int untilDate;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatMemberBannedCopyWith<ChatMemberBanned> get copyWith =>
      _$ChatMemberBannedCopyWithImpl<ChatMemberBanned>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatMemberBannedToJson(this);
  }

  @override
  String toString() {
    return 'ChatMember.kicked(status: $status, user: $user, untilDate: $untilDate)';
  }
}

/// @nodoc
abstract mixin class $ChatMemberBannedCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory $ChatMemberBannedCopyWith(
    ChatMemberBanned value,
    $Res Function(ChatMemberBanned) _then,
  ) = _$ChatMemberBannedCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'status') ChatMemberStatus status,
    @JsonKey(name: 'user') User user,
    @JsonKey(name: 'until_date') int untilDate,
  });

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberBannedCopyWithImpl<$Res>
    implements $ChatMemberBannedCopyWith<$Res> {
  _$ChatMemberBannedCopyWithImpl(this._self, this._then);

  final ChatMemberBanned _self;
  final $Res Function(ChatMemberBanned) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? untilDate = null,
  }) {
    return _then(
      ChatMemberBanned(
        status: null == status
            ? _self.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatMemberStatus,
        user: null == user
            ? _self.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
        untilDate: null == untilDate
            ? _self.untilDate
            : untilDate // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
