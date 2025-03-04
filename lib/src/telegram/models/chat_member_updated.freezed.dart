// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_member_updated.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMemberUpdated _$ChatMemberUpdatedFromJson(Map<String, dynamic> json) {
  return _ChatMemberUpdated.fromJson(json);
}

/// @nodoc
mixin _$ChatMemberUpdated {
  /// Chat the user belongs to
  @JsonKey(name: 'chat')
  Chat get chat => throw _privateConstructorUsedError;

  /// Performer of the action, which resulted in the change
  @JsonKey(name: 'from')
  User get from => throw _privateConstructorUsedError;

  /// Date the change was done in Unix time
  @JsonKey(name: 'date')
  int get date => throw _privateConstructorUsedError;

  /// Previous information about the chat member
  @JsonKey(name: 'old_chat_member')
  ChatMember get oldChatMember => throw _privateConstructorUsedError;

  /// New information about the chat member
  @JsonKey(name: 'new_chat_member')
  ChatMember get newChatMember => throw _privateConstructorUsedError;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  @JsonKey(name: 'invite_link')
  ChatInviteLink? get inviteLink => throw _privateConstructorUsedError;

  /// Optional. True, if the user joined the chat via a chat folder invite link
  @JsonKey(name: 'via_chat_folder_invite_link')
  bool? get viaChatFolderInviteLink => throw _privateConstructorUsedError;

  /// Optional. True, if the user joined the chat after sending a direct join request and being approved by an administrator
  @JsonKey(name: 'via_join_request')
  bool? get viaJoinRequest => throw _privateConstructorUsedError;

  /// Serializes this ChatMemberUpdated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMemberUpdatedCopyWith<ChatMemberUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberUpdatedCopyWith<$Res> {
  factory $ChatMemberUpdatedCopyWith(
          ChatMemberUpdated value, $Res Function(ChatMemberUpdated) then) =
      _$ChatMemberUpdatedCopyWithImpl<$Res, ChatMemberUpdated>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'old_chat_member') ChatMember oldChatMember,
      @JsonKey(name: 'new_chat_member') ChatMember newChatMember,
      @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,
      @JsonKey(name: 'via_chat_folder_invite_link')
      bool? viaChatFolderInviteLink,
      @JsonKey(name: 'via_join_request') bool? viaJoinRequest});

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res> get from;
  $ChatMemberCopyWith<$Res> get oldChatMember;
  $ChatMemberCopyWith<$Res> get newChatMember;
  $ChatInviteLinkCopyWith<$Res>? get inviteLink;
}

/// @nodoc
class _$ChatMemberUpdatedCopyWithImpl<$Res, $Val extends ChatMemberUpdated>
    implements $ChatMemberUpdatedCopyWith<$Res> {
  _$ChatMemberUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? oldChatMember = null,
    Object? newChatMember = null,
    Object? inviteLink = freezed,
    Object? viaChatFolderInviteLink = freezed,
    Object? viaJoinRequest = freezed,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      oldChatMember: null == oldChatMember
          ? _value.oldChatMember
          : oldChatMember // ignore: cast_nullable_to_non_nullable
              as ChatMember,
      newChatMember: null == newChatMember
          ? _value.newChatMember
          : newChatMember // ignore: cast_nullable_to_non_nullable
              as ChatMember,
      inviteLink: freezed == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as ChatInviteLink?,
      viaChatFolderInviteLink: freezed == viaChatFolderInviteLink
          ? _value.viaChatFolderInviteLink
          : viaChatFolderInviteLink // ignore: cast_nullable_to_non_nullable
              as bool?,
      viaJoinRequest: freezed == viaJoinRequest
          ? _value.viaJoinRequest
          : viaJoinRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<$Res> get oldChatMember {
    return $ChatMemberCopyWith<$Res>(_value.oldChatMember, (value) {
      return _then(_value.copyWith(oldChatMember: value) as $Val);
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberCopyWith<$Res> get newChatMember {
    return $ChatMemberCopyWith<$Res>(_value.newChatMember, (value) {
      return _then(_value.copyWith(newChatMember: value) as $Val);
    });
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatInviteLinkCopyWith<$Res>? get inviteLink {
    if (_value.inviteLink == null) {
      return null;
    }

    return $ChatInviteLinkCopyWith<$Res>(_value.inviteLink!, (value) {
      return _then(_value.copyWith(inviteLink: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMemberUpdatedImplCopyWith<$Res>
    implements $ChatMemberUpdatedCopyWith<$Res> {
  factory _$$ChatMemberUpdatedImplCopyWith(_$ChatMemberUpdatedImpl value,
          $Res Function(_$ChatMemberUpdatedImpl) then) =
      __$$ChatMemberUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'old_chat_member') ChatMember oldChatMember,
      @JsonKey(name: 'new_chat_member') ChatMember newChatMember,
      @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,
      @JsonKey(name: 'via_chat_folder_invite_link')
      bool? viaChatFolderInviteLink,
      @JsonKey(name: 'via_join_request') bool? viaJoinRequest});

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $UserCopyWith<$Res> get from;
  @override
  $ChatMemberCopyWith<$Res> get oldChatMember;
  @override
  $ChatMemberCopyWith<$Res> get newChatMember;
  @override
  $ChatInviteLinkCopyWith<$Res>? get inviteLink;
}

/// @nodoc
class __$$ChatMemberUpdatedImplCopyWithImpl<$Res>
    extends _$ChatMemberUpdatedCopyWithImpl<$Res, _$ChatMemberUpdatedImpl>
    implements _$$ChatMemberUpdatedImplCopyWith<$Res> {
  __$$ChatMemberUpdatedImplCopyWithImpl(_$ChatMemberUpdatedImpl _value,
      $Res Function(_$ChatMemberUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? oldChatMember = null,
    Object? newChatMember = null,
    Object? inviteLink = freezed,
    Object? viaChatFolderInviteLink = freezed,
    Object? viaJoinRequest = freezed,
  }) {
    return _then(_$ChatMemberUpdatedImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      oldChatMember: null == oldChatMember
          ? _value.oldChatMember
          : oldChatMember // ignore: cast_nullable_to_non_nullable
              as ChatMember,
      newChatMember: null == newChatMember
          ? _value.newChatMember
          : newChatMember // ignore: cast_nullable_to_non_nullable
              as ChatMember,
      inviteLink: freezed == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as ChatInviteLink?,
      viaChatFolderInviteLink: freezed == viaChatFolderInviteLink
          ? _value.viaChatFolderInviteLink
          : viaChatFolderInviteLink // ignore: cast_nullable_to_non_nullable
              as bool?,
      viaJoinRequest: freezed == viaJoinRequest
          ? _value.viaJoinRequest
          : viaJoinRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberUpdatedImpl implements _ChatMemberUpdated {
  const _$ChatMemberUpdatedImpl(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'old_chat_member') required this.oldChatMember,
      @JsonKey(name: 'new_chat_member') required this.newChatMember,
      @JsonKey(name: 'invite_link') this.inviteLink,
      @JsonKey(name: 'via_chat_folder_invite_link')
      this.viaChatFolderInviteLink,
      @JsonKey(name: 'via_join_request') this.viaJoinRequest});

  factory _$ChatMemberUpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberUpdatedImplFromJson(json);

  /// Chat the user belongs to
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// Performer of the action, which resulted in the change
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Date the change was done in Unix time
  @override
  @JsonKey(name: 'date')
  final int date;

  /// Previous information about the chat member
  @override
  @JsonKey(name: 'old_chat_member')
  final ChatMember oldChatMember;

  /// New information about the chat member
  @override
  @JsonKey(name: 'new_chat_member')
  final ChatMember newChatMember;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  @override
  @JsonKey(name: 'invite_link')
  final ChatInviteLink? inviteLink;

  /// Optional. True, if the user joined the chat via a chat folder invite link
  @override
  @JsonKey(name: 'via_chat_folder_invite_link')
  final bool? viaChatFolderInviteLink;

  /// Optional. True, if the user joined the chat after sending a direct join request and being approved by an administrator
  @override
  @JsonKey(name: 'via_join_request')
  final bool? viaJoinRequest;

  @override
  String toString() {
    return 'ChatMemberUpdated(chat: $chat, from: $from, date: $date, oldChatMember: $oldChatMember, newChatMember: $newChatMember, inviteLink: $inviteLink, viaChatFolderInviteLink: $viaChatFolderInviteLink, viaJoinRequest: $viaJoinRequest)';
  }

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberUpdatedImplCopyWith<_$ChatMemberUpdatedImpl> get copyWith =>
      __$$ChatMemberUpdatedImplCopyWithImpl<_$ChatMemberUpdatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberUpdatedImplToJson(
      this,
    );
  }
}

abstract class _ChatMemberUpdated implements ChatMemberUpdated {
  const factory _ChatMemberUpdated(
      {@JsonKey(name: 'chat') required final Chat chat,
      @JsonKey(name: 'from') required final User from,
      @JsonKey(name: 'date') required final int date,
      @JsonKey(name: 'old_chat_member') required final ChatMember oldChatMember,
      @JsonKey(name: 'new_chat_member') required final ChatMember newChatMember,
      @JsonKey(name: 'invite_link') final ChatInviteLink? inviteLink,
      @JsonKey(name: 'via_chat_folder_invite_link')
      final bool? viaChatFolderInviteLink,
      @JsonKey(name: 'via_join_request')
      final bool? viaJoinRequest}) = _$ChatMemberUpdatedImpl;

  factory _ChatMemberUpdated.fromJson(Map<String, dynamic> json) =
      _$ChatMemberUpdatedImpl.fromJson;

  /// Chat the user belongs to
  @override
  @JsonKey(name: 'chat')
  Chat get chat;

  /// Performer of the action, which resulted in the change
  @override
  @JsonKey(name: 'from')
  User get from;

  /// Date the change was done in Unix time
  @override
  @JsonKey(name: 'date')
  int get date;

  /// Previous information about the chat member
  @override
  @JsonKey(name: 'old_chat_member')
  ChatMember get oldChatMember;

  /// New information about the chat member
  @override
  @JsonKey(name: 'new_chat_member')
  ChatMember get newChatMember;

  /// Optional. Chat invite link, which was used by the user to join the chat; for joining by invite link events only.
  @override
  @JsonKey(name: 'invite_link')
  ChatInviteLink? get inviteLink;

  /// Optional. True, if the user joined the chat via a chat folder invite link
  @override
  @JsonKey(name: 'via_chat_folder_invite_link')
  bool? get viaChatFolderInviteLink;

  /// Optional. True, if the user joined the chat after sending a direct join request and being approved by an administrator
  @override
  @JsonKey(name: 'via_join_request')
  bool? get viaJoinRequest;

  /// Create a copy of ChatMemberUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberUpdatedImplCopyWith<_$ChatMemberUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
