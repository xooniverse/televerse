// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatJoinRequest _$ChatJoinRequestFromJson(Map<String, dynamic> json) {
  return _ChatJoinRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatJoinRequest {
  /// Chat to which the request was sent
  @JsonKey(name: 'chat')
  Chat get chat => throw _privateConstructorUsedError;

  /// User that sent the join request
  @JsonKey(name: 'from')
  User get from => throw _privateConstructorUsedError;

  /// Date the request was sent in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  @JsonKey(name: 'date')
  int get date => throw _privateConstructorUsedError;

  /// Optional. Bio of the user.
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;

  /// Optional. Chat invite link that was used by the user to send the join request
  @JsonKey(name: 'invite_link')
  ChatInviteLink? get inviteLink => throw _privateConstructorUsedError;

  /// Since Bot API 6.5
  ///
  /// Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
  @JsonKey(name: 'user_chat_id')
  int get userChatId => throw _privateConstructorUsedError;

  /// Serializes this ChatJoinRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatJoinRequestCopyWith<ChatJoinRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatJoinRequestCopyWith<$Res> {
  factory $ChatJoinRequestCopyWith(
          ChatJoinRequest value, $Res Function(ChatJoinRequest) then) =
      _$ChatJoinRequestCopyWithImpl<$Res, ChatJoinRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,
      @JsonKey(name: 'user_chat_id') int userChatId});

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res> get from;
  $ChatInviteLinkCopyWith<$Res>? get inviteLink;
}

/// @nodoc
class _$ChatJoinRequestCopyWithImpl<$Res, $Val extends ChatJoinRequest>
    implements $ChatJoinRequestCopyWith<$Res> {
  _$ChatJoinRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? bio = freezed,
    Object? inviteLink = freezed,
    Object? userChatId = null,
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
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLink: freezed == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as ChatInviteLink?,
      userChatId: null == userChatId
          ? _value.userChatId
          : userChatId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of ChatJoinRequest
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
abstract class _$$ChatJoinRequestImplCopyWith<$Res>
    implements $ChatJoinRequestCopyWith<$Res> {
  factory _$$ChatJoinRequestImplCopyWith(_$ChatJoinRequestImpl value,
          $Res Function(_$ChatJoinRequestImpl) then) =
      __$$ChatJoinRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat') Chat chat,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'date') int date,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'invite_link') ChatInviteLink? inviteLink,
      @JsonKey(name: 'user_chat_id') int userChatId});

  @override
  $ChatCopyWith<$Res> get chat;
  @override
  $UserCopyWith<$Res> get from;
  @override
  $ChatInviteLinkCopyWith<$Res>? get inviteLink;
}

/// @nodoc
class __$$ChatJoinRequestImplCopyWithImpl<$Res>
    extends _$ChatJoinRequestCopyWithImpl<$Res, _$ChatJoinRequestImpl>
    implements _$$ChatJoinRequestImplCopyWith<$Res> {
  __$$ChatJoinRequestImplCopyWithImpl(
      _$ChatJoinRequestImpl _value, $Res Function(_$ChatJoinRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? bio = freezed,
    Object? inviteLink = freezed,
    Object? userChatId = null,
  }) {
    return _then(_$ChatJoinRequestImpl(
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
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLink: freezed == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as ChatInviteLink?,
      userChatId: null == userChatId
          ? _value.userChatId
          : userChatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatJoinRequestImpl implements _ChatJoinRequest {
  const _$ChatJoinRequestImpl(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'invite_link') this.inviteLink,
      @JsonKey(name: 'user_chat_id') required this.userChatId});

  factory _$ChatJoinRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatJoinRequestImplFromJson(json);

  /// Chat to which the request was sent
  @override
  @JsonKey(name: 'chat')
  final Chat chat;

  /// User that sent the join request
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Date the request was sent in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  @override
  @JsonKey(name: 'date')
  final int date;

  /// Optional. Bio of the user.
  @override
  @JsonKey(name: 'bio')
  final String? bio;

  /// Optional. Chat invite link that was used by the user to send the join request
  @override
  @JsonKey(name: 'invite_link')
  final ChatInviteLink? inviteLink;

  /// Since Bot API 6.5
  ///
  /// Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
  @override
  @JsonKey(name: 'user_chat_id')
  final int userChatId;

  @override
  String toString() {
    return 'ChatJoinRequest(chat: $chat, from: $from, date: $date, bio: $bio, inviteLink: $inviteLink, userChatId: $userChatId)';
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatJoinRequestImplCopyWith<_$ChatJoinRequestImpl> get copyWith =>
      __$$ChatJoinRequestImplCopyWithImpl<_$ChatJoinRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatJoinRequestImplToJson(
      this,
    );
  }
}

abstract class _ChatJoinRequest implements ChatJoinRequest {
  const factory _ChatJoinRequest(
          {@JsonKey(name: 'chat') required final Chat chat,
          @JsonKey(name: 'from') required final User from,
          @JsonKey(name: 'date') required final int date,
          @JsonKey(name: 'bio') final String? bio,
          @JsonKey(name: 'invite_link') final ChatInviteLink? inviteLink,
          @JsonKey(name: 'user_chat_id') required final int userChatId}) =
      _$ChatJoinRequestImpl;

  factory _ChatJoinRequest.fromJson(Map<String, dynamic> json) =
      _$ChatJoinRequestImpl.fromJson;

  /// Chat to which the request was sent
  @override
  @JsonKey(name: 'chat')
  Chat get chat;

  /// User that sent the join request
  @override
  @JsonKey(name: 'from')
  User get from;

  /// Date the request was sent in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  @override
  @JsonKey(name: 'date')
  int get date;

  /// Optional. Bio of the user.
  @override
  @JsonKey(name: 'bio')
  String? get bio;

  /// Optional. Chat invite link that was used by the user to send the join request
  @override
  @JsonKey(name: 'invite_link')
  ChatInviteLink? get inviteLink;

  /// Since Bot API 6.5
  ///
  /// Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
  @override
  @JsonKey(name: 'user_chat_id')
  int get userChatId;

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatJoinRequestImplCopyWith<_$ChatJoinRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
