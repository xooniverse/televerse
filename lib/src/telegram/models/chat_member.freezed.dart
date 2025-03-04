// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMember _$ChatMemberFromJson(Map<String, dynamic> json) {
  switch (json['status']) {
    case 'owner':
      return ChatMemberOwner.fromJson(json);
    case 'administrator':
      return ChatMemberAdministrator.fromJson(json);
    case 'member':
      return ChatMemberMember.fromJson(json);
    case 'restricted':
      return ChatMemberRestricted.fromJson(json);
    case 'left':
      return ChatMemberLeft.fromJson(json);
    case 'banned':
      return ChatMemberBanned.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'status', 'ChatMember',
          'Invalid union type "${json['status']}"!');
  }
}

/// @nodoc
mixin _$ChatMember {
  /// The member's status in the chat
  @JsonKey(name: 'status')
  ChatMemberStatus get status => throw _privateConstructorUsedError;

  /// Information about the user
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChatMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMemberCopyWith<ChatMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberCopyWith<$Res> {
  factory $ChatMemberCopyWith(
          ChatMember value, $Res Function(ChatMember) then) =
      _$ChatMemberCopyWithImpl<$Res, ChatMember>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
      @JsonKey(name: 'user') User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMemberCopyWithImpl<$Res, $Val extends ChatMember>
    implements $ChatMemberCopyWith<$Res> {
  _$ChatMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMemberOwnerImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberOwnerImplCopyWith(_$ChatMemberOwnerImpl value,
          $Res Function(_$ChatMemberOwnerImpl) then) =
      __$$ChatMemberOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'custom_title') String? customTitle});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMemberOwnerImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberOwnerImpl>
    implements _$$ChatMemberOwnerImplCopyWith<$Res> {
  __$$ChatMemberOwnerImplCopyWithImpl(
      _$ChatMemberOwnerImpl _value, $Res Function(_$ChatMemberOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? isAnonymous = null,
    Object? customTitle = freezed,
  }) {
    return _then(_$ChatMemberOwnerImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      customTitle: freezed == customTitle
          ? _value.customTitle
          : customTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberOwnerImpl implements ChatMemberOwner {
  const _$ChatMemberOwnerImpl(
      {@JsonKey(name: 'status') this.status = ChatMemberStatus.creator,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'is_anonymous') required this.isAnonymous,
      @JsonKey(name: 'custom_title') this.customTitle});

  factory _$ChatMemberOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberOwnerImplFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// True, if the user's presence in the chat is hidden
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  /// Optional. Custom title for this user
  @override
  @JsonKey(name: 'custom_title')
  final String? customTitle;

  @override
  String toString() {
    return 'ChatMember.owner(status: $status, user: $user, isAnonymous: $isAnonymous, customTitle: $customTitle)';
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberOwnerImplCopyWith<_$ChatMemberOwnerImpl> get copyWith =>
      __$$ChatMemberOwnerImplCopyWithImpl<_$ChatMemberOwnerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) {
    return owner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) {
    return owner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) {
    if (owner != null) {
      return owner(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberOwnerImplToJson(
      this,
    );
  }
}

abstract class ChatMemberOwner implements ChatMember {
  const factory ChatMemberOwner(
          {@JsonKey(name: 'status') final ChatMemberStatus status,
          @JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'is_anonymous') required final bool isAnonymous,
          @JsonKey(name: 'custom_title') final String? customTitle}) =
      _$ChatMemberOwnerImpl;

  factory ChatMemberOwner.fromJson(Map<String, dynamic> json) =
      _$ChatMemberOwnerImpl.fromJson;

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  User get user;

  /// True, if the user's presence in the chat is hidden
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;

  /// Optional. Custom title for this user
  @JsonKey(name: 'custom_title')
  String? get customTitle;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberOwnerImplCopyWith<_$ChatMemberOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMemberAdministratorImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberAdministratorImplCopyWith(
          _$ChatMemberAdministratorImpl value,
          $Res Function(_$ChatMemberAdministratorImpl) then) =
      __$$ChatMemberAdministratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
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
      @JsonKey(name: 'custom_title') String? customTitle});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMemberAdministratorImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberAdministratorImpl>
    implements _$$ChatMemberAdministratorImplCopyWith<$Res> {
  __$$ChatMemberAdministratorImplCopyWithImpl(
      _$ChatMemberAdministratorImpl _value,
      $Res Function(_$ChatMemberAdministratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
  }) {
    return _then(_$ChatMemberAdministratorImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      canBeEdited: null == canBeEdited
          ? _value.canBeEdited
          : canBeEdited // ignore: cast_nullable_to_non_nullable
              as bool,
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
      canPostStories: null == canPostStories
          ? _value.canPostStories
          : canPostStories // ignore: cast_nullable_to_non_nullable
              as bool,
      canEditStories: null == canEditStories
          ? _value.canEditStories
          : canEditStories // ignore: cast_nullable_to_non_nullable
              as bool,
      canDeleteStories: null == canDeleteStories
          ? _value.canDeleteStories
          : canDeleteStories // ignore: cast_nullable_to_non_nullable
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
      canManageTopics: freezed == canManageTopics
          ? _value.canManageTopics
          : canManageTopics // ignore: cast_nullable_to_non_nullable
              as bool?,
      customTitle: freezed == customTitle
          ? _value.customTitle
          : customTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberAdministratorImpl implements ChatMemberAdministrator {
  const _$ChatMemberAdministratorImpl(
      {@JsonKey(name: 'status') this.status = ChatMemberStatus.administrator,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'can_be_edited') required this.canBeEdited,
      @JsonKey(name: 'is_anonymous') required this.isAnonymous,
      @JsonKey(name: 'can_manage_chat') required this.canManageChat,
      @JsonKey(name: 'can_delete_messages') required this.canDeleteMessages,
      @JsonKey(name: 'can_manage_video_chats')
      required this.canManageVideoChats,
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
      @JsonKey(name: 'custom_title') this.customTitle});

  factory _$ChatMemberAdministratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberAdministratorImplFromJson(json);

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
  @override
  @JsonKey(name: 'can_be_edited')
  final bool canBeEdited;

  /// True, if the user's presence in the chat is hidden
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  /// True, if the administrator can access the chat event log, get boost
  /// list, see hidden supergroup and channel members, report spam messages
  /// and ignore slow mode
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

  /// True, if the administrator can restrict, ban or unban chat members, or
  /// access supergroup statistics
  @override
  @JsonKey(name: 'can_restrict_members')
  final bool canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that they have promoted
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

  /// True, if the administrator can post stories to the chat
  @override
  @JsonKey(name: 'can_post_stories')
  final bool canPostStories;

  /// True, if the administrator can edit stories posted by other users
  @override
  @JsonKey(name: 'can_edit_stories')
  final bool canEditStories;

  /// True, if the administrator can delete stories posted by other users
  @override
  @JsonKey(name: 'can_delete_stories')
  final bool canDeleteStories;

  /// Optional. True, if the administrator can post messages in the channel,
  /// or access channel statistics
  @override
  @JsonKey(name: 'can_post_messages')
  final bool? canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages
  @override
  @JsonKey(name: 'can_edit_messages')
  final bool? canEditMessages;

  /// Optional. True, if the user is allowed to pin messages
  @override
  @JsonKey(name: 'can_pin_messages')
  final bool? canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics
  @override
  @JsonKey(name: 'can_manage_topics')
  final bool? canManageTopics;

  /// Optional. Custom title for this user
  @override
  @JsonKey(name: 'custom_title')
  final String? customTitle;

  @override
  String toString() {
    return 'ChatMember.administrator(status: $status, user: $user, canBeEdited: $canBeEdited, isAnonymous: $isAnonymous, canManageChat: $canManageChat, canDeleteMessages: $canDeleteMessages, canManageVideoChats: $canManageVideoChats, canRestrictMembers: $canRestrictMembers, canPromoteMembers: $canPromoteMembers, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPostStories: $canPostStories, canEditStories: $canEditStories, canDeleteStories: $canDeleteStories, canPostMessages: $canPostMessages, canEditMessages: $canEditMessages, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, customTitle: $customTitle)';
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberAdministratorImplCopyWith<_$ChatMemberAdministratorImpl>
      get copyWith => __$$ChatMemberAdministratorImplCopyWithImpl<
          _$ChatMemberAdministratorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) {
    return administrator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) {
    return administrator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) {
    if (administrator != null) {
      return administrator(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberAdministratorImplToJson(
      this,
    );
  }
}

abstract class ChatMemberAdministrator implements ChatMember {
  const factory ChatMemberAdministrator(
      {@JsonKey(name: 'status') final ChatMemberStatus status,
      @JsonKey(name: 'user') required final User user,
      @JsonKey(name: 'can_be_edited') required final bool canBeEdited,
      @JsonKey(name: 'is_anonymous') required final bool isAnonymous,
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
      @JsonKey(name: 'can_post_stories') required final bool canPostStories,
      @JsonKey(name: 'can_edit_stories') required final bool canEditStories,
      @JsonKey(name: 'can_delete_stories') required final bool canDeleteStories,
      @JsonKey(name: 'can_post_messages') final bool? canPostMessages,
      @JsonKey(name: 'can_edit_messages') final bool? canEditMessages,
      @JsonKey(name: 'can_pin_messages') final bool? canPinMessages,
      @JsonKey(name: 'can_manage_topics') final bool? canManageTopics,
      @JsonKey(name: 'custom_title')
      final String? customTitle}) = _$ChatMemberAdministratorImpl;

  factory ChatMemberAdministrator.fromJson(Map<String, dynamic> json) =
      _$ChatMemberAdministratorImpl.fromJson;

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  User get user;

  /// True, if the bot is allowed to edit administrator privileges of that
  /// user
  @JsonKey(name: 'can_be_edited')
  bool get canBeEdited;

  /// True, if the user's presence in the chat is hidden
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;

  /// True, if the administrator can access the chat event log, get boost
  /// list, see hidden supergroup and channel members, report spam messages
  /// and ignore slow mode
  @JsonKey(name: 'can_manage_chat')
  bool get canManageChat;

  /// True, if the administrator can delete messages of other users
  @JsonKey(name: 'can_delete_messages')
  bool get canDeleteMessages;

  /// True, if the administrator can manage video chats
  @JsonKey(name: 'can_manage_video_chats')
  bool get canManageVideoChats;

  /// True, if the administrator can restrict, ban or unban chat members, or
  /// access supergroup statistics
  @JsonKey(name: 'can_restrict_members')
  bool get canRestrictMembers;

  /// True, if the administrator can add new administrators with a subset of
  /// their own privileges or demote administrators that they have promoted
  @JsonKey(name: 'can_promote_members')
  bool get canPromoteMembers;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @JsonKey(name: 'can_change_info')
  bool get canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  bool get canInviteUsers;

  /// True, if the administrator can post stories to the chat
  @JsonKey(name: 'can_post_stories')
  bool get canPostStories;

  /// True, if the administrator can edit stories posted by other users
  @JsonKey(name: 'can_edit_stories')
  bool get canEditStories;

  /// True, if the administrator can delete stories posted by other users
  @JsonKey(name: 'can_delete_stories')
  bool get canDeleteStories;

  /// Optional. True, if the administrator can post messages in the channel,
  /// or access channel statistics
  @JsonKey(name: 'can_post_messages')
  bool? get canPostMessages;

  /// Optional. True, if the administrator can edit messages of other users
  /// and can pin messages
  @JsonKey(name: 'can_edit_messages')
  bool? get canEditMessages;

  /// Optional. True, if the user is allowed to pin messages
  @JsonKey(name: 'can_pin_messages')
  bool? get canPinMessages;

  /// Optional. True, if the user is allowed to create, rename, close, and
  /// reopen forum topics
  @JsonKey(name: 'can_manage_topics')
  bool? get canManageTopics;

  /// Optional. Custom title for this user
  @JsonKey(name: 'custom_title')
  String? get customTitle;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberAdministratorImplCopyWith<_$ChatMemberAdministratorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMemberMemberImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberMemberImplCopyWith(_$ChatMemberMemberImpl value,
          $Res Function(_$ChatMemberMemberImpl) then) =
      __$$ChatMemberMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'until_date') int? untilDate});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMemberMemberImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberMemberImpl>
    implements _$$ChatMemberMemberImplCopyWith<$Res> {
  __$$ChatMemberMemberImplCopyWithImpl(_$ChatMemberMemberImpl _value,
      $Res Function(_$ChatMemberMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? untilDate = freezed,
  }) {
    return _then(_$ChatMemberMemberImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      untilDate: freezed == untilDate
          ? _value.untilDate
          : untilDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberMemberImpl implements ChatMemberMember {
  const _$ChatMemberMemberImpl(
      {@JsonKey(name: 'status') this.status = ChatMemberStatus.member,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'until_date') this.untilDate});

  factory _$ChatMemberMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberMemberImplFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Optional. Date when restrictions will be lifted for this user; Unix time
  @override
  @JsonKey(name: 'until_date')
  final int? untilDate;

  @override
  String toString() {
    return 'ChatMember.member(status: $status, user: $user, untilDate: $untilDate)';
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberMemberImplCopyWith<_$ChatMemberMemberImpl> get copyWith =>
      __$$ChatMemberMemberImplCopyWithImpl<_$ChatMemberMemberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) {
    return member(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) {
    return member?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) {
    if (member != null) {
      return member(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberMemberImplToJson(
      this,
    );
  }
}

abstract class ChatMemberMember implements ChatMember {
  const factory ChatMemberMember(
          {@JsonKey(name: 'status') final ChatMemberStatus status,
          @JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'until_date') final int? untilDate}) =
      _$ChatMemberMemberImpl;

  factory ChatMemberMember.fromJson(Map<String, dynamic> json) =
      _$ChatMemberMemberImpl.fromJson;

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  User get user;

  /// Optional. Date when restrictions will be lifted for this user; Unix time
  @JsonKey(name: 'until_date')
  int? get untilDate;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberMemberImplCopyWith<_$ChatMemberMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMemberRestrictedImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberRestrictedImplCopyWith(_$ChatMemberRestrictedImpl value,
          $Res Function(_$ChatMemberRestrictedImpl) then) =
      __$$ChatMemberRestrictedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
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
      @JsonKey(name: 'until_date') int untilDate});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMemberRestrictedImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberRestrictedImpl>
    implements _$$ChatMemberRestrictedImplCopyWith<$Res> {
  __$$ChatMemberRestrictedImplCopyWithImpl(_$ChatMemberRestrictedImpl _value,
      $Res Function(_$ChatMemberRestrictedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
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
    return _then(_$ChatMemberRestrictedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      isMember: null == isMember
          ? _value.isMember
          : isMember // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendMessages: null == canSendMessages
          ? _value.canSendMessages
          : canSendMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendAudios: null == canSendAudios
          ? _value.canSendAudios
          : canSendAudios // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendDocuments: null == canSendDocuments
          ? _value.canSendDocuments
          : canSendDocuments // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendPhotos: null == canSendPhotos
          ? _value.canSendPhotos
          : canSendPhotos // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendVideos: null == canSendVideos
          ? _value.canSendVideos
          : canSendVideos // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendVideoNotes: null == canSendVideoNotes
          ? _value.canSendVideoNotes
          : canSendVideoNotes // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendVoiceNotes: null == canSendVoiceNotes
          ? _value.canSendVoiceNotes
          : canSendVoiceNotes // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendPolls: null == canSendPolls
          ? _value.canSendPolls
          : canSendPolls // ignore: cast_nullable_to_non_nullable
              as bool,
      canSendOtherMessages: null == canSendOtherMessages
          ? _value.canSendOtherMessages
          : canSendOtherMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      canAddWebPagePreviews: null == canAddWebPagePreviews
          ? _value.canAddWebPagePreviews
          : canAddWebPagePreviews // ignore: cast_nullable_to_non_nullable
              as bool,
      canChangeInfo: null == canChangeInfo
          ? _value.canChangeInfo
          : canChangeInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      canInviteUsers: null == canInviteUsers
          ? _value.canInviteUsers
          : canInviteUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      canPinMessages: null == canPinMessages
          ? _value.canPinMessages
          : canPinMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      canManageTopics: null == canManageTopics
          ? _value.canManageTopics
          : canManageTopics // ignore: cast_nullable_to_non_nullable
              as bool,
      untilDate: null == untilDate
          ? _value.untilDate
          : untilDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberRestrictedImpl implements ChatMemberRestricted {
  const _$ChatMemberRestrictedImpl(
      {@JsonKey(name: 'status') this.status = ChatMemberStatus.restricted,
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
      @JsonKey(name: 'until_date') required this.untilDate});

  factory _$ChatMemberRestrictedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberRestrictedImplFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  /// True, if the user is a member of the chat at the moment of the request
  @override
  @JsonKey(name: 'is_member')
  final bool isMember;

  /// True, if the user is allowed to send text messages, contacts, giveaways,
  /// giveaway winners, invoices, locations and venues
  @override
  @JsonKey(name: 'can_send_messages')
  final bool canSendMessages;

  /// True, if the user is allowed to send audios
  @override
  @JsonKey(name: 'can_send_audios')
  final bool canSendAudios;

  /// True, if the user is allowed to send documents
  @override
  @JsonKey(name: 'can_send_documents')
  final bool canSendDocuments;

  /// True, if the user is allowed to send photos
  @override
  @JsonKey(name: 'can_send_photos')
  final bool canSendPhotos;

  /// True, if the user is allowed to send videos
  @override
  @JsonKey(name: 'can_send_videos')
  final bool canSendVideos;

  /// True, if the user is allowed to send video notes
  @override
  @JsonKey(name: 'can_send_video_notes')
  final bool canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  @override
  @JsonKey(name: 'can_send_voice_notes')
  final bool canSendVoiceNotes;

  /// True, if the user is allowed to send polls
  @override
  @JsonKey(name: 'can_send_polls')
  final bool canSendPolls;

  /// True, if the user is allowed to send animations, games, stickers and use
  /// inline bots
  @override
  @JsonKey(name: 'can_send_other_messages')
  final bool canSendOtherMessages;

  /// True, if the user is allowed to add web page previews to their messages
  @override
  @JsonKey(name: 'can_add_web_page_previews')
  final bool canAddWebPagePreviews;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @override
  @JsonKey(name: 'can_change_info')
  final bool canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @override
  @JsonKey(name: 'can_invite_users')
  final bool canInviteUsers;

  /// True, if the user is allowed to pin messages
  @override
  @JsonKey(name: 'can_pin_messages')
  final bool canPinMessages;

  /// True, if the user is allowed to create forum topics
  @override
  @JsonKey(name: 'can_manage_topics')
  final bool canManageTopics;

  /// Date when restrictions will be lifted for this user; Unix time. If 0,
  /// then the user is restricted forever
  @override
  @JsonKey(name: 'until_date')
  final int untilDate;

  @override
  String toString() {
    return 'ChatMember.restricted(status: $status, user: $user, isMember: $isMember, canSendMessages: $canSendMessages, canSendAudios: $canSendAudios, canSendDocuments: $canSendDocuments, canSendPhotos: $canSendPhotos, canSendVideos: $canSendVideos, canSendVideoNotes: $canSendVideoNotes, canSendVoiceNotes: $canSendVoiceNotes, canSendPolls: $canSendPolls, canSendOtherMessages: $canSendOtherMessages, canAddWebPagePreviews: $canAddWebPagePreviews, canChangeInfo: $canChangeInfo, canInviteUsers: $canInviteUsers, canPinMessages: $canPinMessages, canManageTopics: $canManageTopics, untilDate: $untilDate)';
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberRestrictedImplCopyWith<_$ChatMemberRestrictedImpl>
      get copyWith =>
          __$$ChatMemberRestrictedImplCopyWithImpl<_$ChatMemberRestrictedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) {
    return restricted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) {
    return restricted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberRestrictedImplToJson(
      this,
    );
  }
}

abstract class ChatMemberRestricted implements ChatMember {
  const factory ChatMemberRestricted(
      {@JsonKey(name: 'status') final ChatMemberStatus status,
      @JsonKey(name: 'user') required final User user,
      @JsonKey(name: 'is_member') required final bool isMember,
      @JsonKey(name: 'can_send_messages') required final bool canSendMessages,
      @JsonKey(name: 'can_send_audios') required final bool canSendAudios,
      @JsonKey(name: 'can_send_documents') required final bool canSendDocuments,
      @JsonKey(name: 'can_send_photos') required final bool canSendPhotos,
      @JsonKey(name: 'can_send_videos') required final bool canSendVideos,
      @JsonKey(name: 'can_send_video_notes')
      required final bool canSendVideoNotes,
      @JsonKey(name: 'can_send_voice_notes')
      required final bool canSendVoiceNotes,
      @JsonKey(name: 'can_send_polls') required final bool canSendPolls,
      @JsonKey(name: 'can_send_other_messages')
      required final bool canSendOtherMessages,
      @JsonKey(name: 'can_add_web_page_previews')
      required final bool canAddWebPagePreviews,
      @JsonKey(name: 'can_change_info') required final bool canChangeInfo,
      @JsonKey(name: 'can_invite_users') required final bool canInviteUsers,
      @JsonKey(name: 'can_pin_messages') required final bool canPinMessages,
      @JsonKey(name: 'can_manage_topics') required final bool canManageTopics,
      @JsonKey(name: 'until_date')
      required final int untilDate}) = _$ChatMemberRestrictedImpl;

  factory ChatMemberRestricted.fromJson(Map<String, dynamic> json) =
      _$ChatMemberRestrictedImpl.fromJson;

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  User get user;

  /// True, if the user is a member of the chat at the moment of the request
  @JsonKey(name: 'is_member')
  bool get isMember;

  /// True, if the user is allowed to send text messages, contacts, giveaways,
  /// giveaway winners, invoices, locations and venues
  @JsonKey(name: 'can_send_messages')
  bool get canSendMessages;

  /// True, if the user is allowed to send audios
  @JsonKey(name: 'can_send_audios')
  bool get canSendAudios;

  /// True, if the user is allowed to send documents
  @JsonKey(name: 'can_send_documents')
  bool get canSendDocuments;

  /// True, if the user is allowed to send photos
  @JsonKey(name: 'can_send_photos')
  bool get canSendPhotos;

  /// True, if the user is allowed to send videos
  @JsonKey(name: 'can_send_videos')
  bool get canSendVideos;

  /// True, if the user is allowed to send video notes
  @JsonKey(name: 'can_send_video_notes')
  bool get canSendVideoNotes;

  /// True, if the user is allowed to send voice notes
  @JsonKey(name: 'can_send_voice_notes')
  bool get canSendVoiceNotes;

  /// True, if the user is allowed to send polls
  @JsonKey(name: 'can_send_polls')
  bool get canSendPolls;

  /// True, if the user is allowed to send animations, games, stickers and use
  /// inline bots
  @JsonKey(name: 'can_send_other_messages')
  bool get canSendOtherMessages;

  /// True, if the user is allowed to add web page previews to their messages
  @JsonKey(name: 'can_add_web_page_previews')
  bool get canAddWebPagePreviews;

  /// True, if the user is allowed to change the chat title, photo and other
  /// settings
  @JsonKey(name: 'can_change_info')
  bool get canChangeInfo;

  /// True, if the user is allowed to invite new users to the chat
  @JsonKey(name: 'can_invite_users')
  bool get canInviteUsers;

  /// True, if the user is allowed to pin messages
  @JsonKey(name: 'can_pin_messages')
  bool get canPinMessages;

  /// True, if the user is allowed to create forum topics
  @JsonKey(name: 'can_manage_topics')
  bool get canManageTopics;

  /// Date when restrictions will be lifted for this user; Unix time. If 0,
  /// then the user is restricted forever
  @JsonKey(name: 'until_date')
  int get untilDate;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberRestrictedImplCopyWith<_$ChatMemberRestrictedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMemberLeftImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberLeftImplCopyWith(_$ChatMemberLeftImpl value,
          $Res Function(_$ChatMemberLeftImpl) then) =
      __$$ChatMemberLeftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
      @JsonKey(name: 'user') User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMemberLeftImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberLeftImpl>
    implements _$$ChatMemberLeftImplCopyWith<$Res> {
  __$$ChatMemberLeftImplCopyWithImpl(
      _$ChatMemberLeftImpl _value, $Res Function(_$ChatMemberLeftImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$ChatMemberLeftImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberLeftImpl implements ChatMemberLeft {
  const _$ChatMemberLeftImpl(
      {@JsonKey(name: 'status') this.status = ChatMemberStatus.left,
      @JsonKey(name: 'user') required this.user});

  factory _$ChatMemberLeftImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberLeftImplFromJson(json);

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  final ChatMemberStatus status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  final User user;

  @override
  String toString() {
    return 'ChatMember.left(status: $status, user: $user)';
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberLeftImplCopyWith<_$ChatMemberLeftImpl> get copyWith =>
      __$$ChatMemberLeftImplCopyWithImpl<_$ChatMemberLeftImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) {
    return left(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) {
    return left?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) {
    if (left != null) {
      return left(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberLeftImplToJson(
      this,
    );
  }
}

abstract class ChatMemberLeft implements ChatMember {
  const factory ChatMemberLeft(
      {@JsonKey(name: 'status') final ChatMemberStatus status,
      @JsonKey(name: 'user') required final User user}) = _$ChatMemberLeftImpl;

  factory ChatMemberLeft.fromJson(Map<String, dynamic> json) =
      _$ChatMemberLeftImpl.fromJson;

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  User get user;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberLeftImplCopyWith<_$ChatMemberLeftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMemberBannedImplCopyWith<$Res>
    implements $ChatMemberCopyWith<$Res> {
  factory _$$ChatMemberBannedImplCopyWith(_$ChatMemberBannedImpl value,
          $Res Function(_$ChatMemberBannedImpl) then) =
      __$$ChatMemberBannedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') ChatMemberStatus status,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'until_date') int untilDate});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ChatMemberBannedImplCopyWithImpl<$Res>
    extends _$ChatMemberCopyWithImpl<$Res, _$ChatMemberBannedImpl>
    implements _$$ChatMemberBannedImplCopyWith<$Res> {
  __$$ChatMemberBannedImplCopyWithImpl(_$ChatMemberBannedImpl _value,
      $Res Function(_$ChatMemberBannedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? untilDate = null,
  }) {
    return _then(_$ChatMemberBannedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChatMemberStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      untilDate: null == untilDate
          ? _value.untilDate
          : untilDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberBannedImpl implements ChatMemberBanned {
  const _$ChatMemberBannedImpl(
      {@JsonKey(name: 'status') this.status = ChatMemberStatus.kicked,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'until_date') required this.untilDate});

  factory _$ChatMemberBannedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberBannedImplFromJson(json);

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
  @override
  @JsonKey(name: 'until_date')
  final int untilDate;

  @override
  String toString() {
    return 'ChatMember.banned(status: $status, user: $user, untilDate: $untilDate)';
  }

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberBannedImplCopyWith<_$ChatMemberBannedImpl> get copyWith =>
      __$$ChatMemberBannedImplCopyWithImpl<_$ChatMemberBannedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMemberOwner value) owner,
    required TResult Function(ChatMemberAdministrator value) administrator,
    required TResult Function(ChatMemberMember value) member,
    required TResult Function(ChatMemberRestricted value) restricted,
    required TResult Function(ChatMemberLeft value) left,
    required TResult Function(ChatMemberBanned value) banned,
  }) {
    return banned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMemberOwner value)? owner,
    TResult? Function(ChatMemberAdministrator value)? administrator,
    TResult? Function(ChatMemberMember value)? member,
    TResult? Function(ChatMemberRestricted value)? restricted,
    TResult? Function(ChatMemberLeft value)? left,
    TResult? Function(ChatMemberBanned value)? banned,
  }) {
    return banned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMemberOwner value)? owner,
    TResult Function(ChatMemberAdministrator value)? administrator,
    TResult Function(ChatMemberMember value)? member,
    TResult Function(ChatMemberRestricted value)? restricted,
    TResult Function(ChatMemberLeft value)? left,
    TResult Function(ChatMemberBanned value)? banned,
    required TResult orElse(),
  }) {
    if (banned != null) {
      return banned(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberBannedImplToJson(
      this,
    );
  }
}

abstract class ChatMemberBanned implements ChatMember {
  const factory ChatMemberBanned(
          {@JsonKey(name: 'status') final ChatMemberStatus status,
          @JsonKey(name: 'user') required final User user,
          @JsonKey(name: 'until_date') required final int untilDate}) =
      _$ChatMemberBannedImpl;

  factory ChatMemberBanned.fromJson(Map<String, dynamic> json) =
      _$ChatMemberBannedImpl.fromJson;

  /// The member's status in the chat
  @override
  @JsonKey(name: 'status')
  ChatMemberStatus get status;

  /// Information about the user
  @override
  @JsonKey(name: 'user')
  User get user;

  /// Date when restrictions will be lifted for this user; Unix time. If 0,
  /// then the user is banned forever
  @JsonKey(name: 'until_date')
  int get untilDate;

  /// Create a copy of ChatMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberBannedImplCopyWith<_$ChatMemberBannedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
