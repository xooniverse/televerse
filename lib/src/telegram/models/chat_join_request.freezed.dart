// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_join_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatJoinRequest {
  /// Chat to which the request was sent
  @JsonKey(name: 'chat')
  Chat get chat;

  /// User that sent the join request
  @JsonKey(name: 'from')
  User get from;

  /// Date the request was sent in Unix time
  ///
  /// You can use the [dateTime] getter to get a [DateTime] object
  @JsonKey(name: 'date')
  int get date;

  /// Optional. Bio of the user.
  @JsonKey(name: 'bio')
  String? get bio;

  /// Optional. Chat invite link that was used by the user to send the join request
  @JsonKey(name: 'invite_link')
  ChatInviteLink? get inviteLink;

  /// Since Bot API 6.5
  ///
  /// Identifier of a private chat with the user who sent the join request. This number may have more than 32 significant bits and some programming languages may have difficulty/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier. The bot can use this identifier for 24 hours to send messages until the join request is processed, assuming no other administrator contacted the user.
  @JsonKey(name: 'user_chat_id')
  int get userChatId;

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatJoinRequestCopyWith<ChatJoinRequest> get copyWith =>
      _$ChatJoinRequestCopyWithImpl<ChatJoinRequest>(
          this as ChatJoinRequest, _$identity);

  /// Serializes this ChatJoinRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatJoinRequest(chat: $chat, from: $from, date: $date, bio: $bio, inviteLink: $inviteLink, userChatId: $userChatId)';
  }
}

/// @nodoc
abstract mixin class $ChatJoinRequestCopyWith<$Res> {
  factory $ChatJoinRequestCopyWith(
          ChatJoinRequest value, $Res Function(ChatJoinRequest) _then) =
      _$ChatJoinRequestCopyWithImpl;
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
class _$ChatJoinRequestCopyWithImpl<$Res>
    implements $ChatJoinRequestCopyWith<$Res> {
  _$ChatJoinRequestCopyWithImpl(this._self, this._then);

  final ChatJoinRequest _self;
  final $Res Function(ChatJoinRequest) _then;

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
    return _then(_self.copyWith(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLink: freezed == inviteLink
          ? _self.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as ChatInviteLink?,
      userChatId: null == userChatId
          ? _self.userChatId
          : userChatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatInviteLinkCopyWith<$Res>? get inviteLink {
    if (_self.inviteLink == null) {
      return null;
    }

    return $ChatInviteLinkCopyWith<$Res>(_self.inviteLink!, (value) {
      return _then(_self.copyWith(inviteLink: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatJoinRequest implements ChatJoinRequest {
  const _ChatJoinRequest(
      {@JsonKey(name: 'chat') required this.chat,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'date') required this.date,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'invite_link') this.inviteLink,
      @JsonKey(name: 'user_chat_id') required this.userChatId});
  factory _ChatJoinRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatJoinRequestFromJson(json);

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

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatJoinRequestCopyWith<_ChatJoinRequest> get copyWith =>
      __$ChatJoinRequestCopyWithImpl<_ChatJoinRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatJoinRequestToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatJoinRequest(chat: $chat, from: $from, date: $date, bio: $bio, inviteLink: $inviteLink, userChatId: $userChatId)';
  }
}

/// @nodoc
abstract mixin class _$ChatJoinRequestCopyWith<$Res>
    implements $ChatJoinRequestCopyWith<$Res> {
  factory _$ChatJoinRequestCopyWith(
          _ChatJoinRequest value, $Res Function(_ChatJoinRequest) _then) =
      __$ChatJoinRequestCopyWithImpl;
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
class __$ChatJoinRequestCopyWithImpl<$Res>
    implements _$ChatJoinRequestCopyWith<$Res> {
  __$ChatJoinRequestCopyWithImpl(this._self, this._then);

  final _ChatJoinRequest _self;
  final $Res Function(_ChatJoinRequest) _then;

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chat = null,
    Object? from = null,
    Object? date = null,
    Object? bio = freezed,
    Object? inviteLink = freezed,
    Object? userChatId = null,
  }) {
    return _then(_ChatJoinRequest(
      chat: null == chat
          ? _self.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteLink: freezed == inviteLink
          ? _self.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as ChatInviteLink?,
      userChatId: null == userChatId
          ? _self.userChatId
          : userChatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_self.chat, (value) {
      return _then(_self.copyWith(chat: value));
    });
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ChatJoinRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatInviteLinkCopyWith<$Res>? get inviteLink {
    if (_self.inviteLink == null) {
      return null;
    }

    return $ChatInviteLinkCopyWith<$Res>(_self.inviteLink!, (value) {
      return _then(_self.copyWith(inviteLink: value));
    });
  }
}
