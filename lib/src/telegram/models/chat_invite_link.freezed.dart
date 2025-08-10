// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_invite_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatInviteLink {
  /// The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
  @JsonKey(name: 'invite_link')
  String get inviteLink;

  /// Creator of the link
  @JsonKey(name: 'creator')
  User? get creator;

  /// True, if users joining the chat via the link need to be approved by chat administrators
  @JsonKey(name: 'creates_join_request')
  bool? get createsJoinRequest;

  /// True, if the link is primary
  @JsonKey(name: 'is_primary')
  bool? get isPrimary;

  /// True, if the link is revoked
  @JsonKey(name: 'is_revoked')
  bool? get isRevoked;

  /// Optional. Invite link name
  @JsonKey(name: 'name')
  String? get name;

  /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
  ///
  /// The expiry date is available as `expireDateTime` getter.
  @JsonKey(name: 'expire_date')
  int? get expireDate;

  /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  @JsonKey(name: 'member_limit')
  int? get memberLimit;

  /// Optional. Number of pending join requests created using this link
  @JsonKey(name: 'pending_member_count')
  int? get pendingMemberCount;

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatInviteLinkCopyWith<ChatInviteLink> get copyWith =>
      _$ChatInviteLinkCopyWithImpl<ChatInviteLink>(
          this as ChatInviteLink, _$identity);

  /// Serializes this ChatInviteLink to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatInviteLink(inviteLink: $inviteLink, creator: $creator, createsJoinRequest: $createsJoinRequest, isPrimary: $isPrimary, isRevoked: $isRevoked, name: $name, expireDate: $expireDate, memberLimit: $memberLimit, pendingMemberCount: $pendingMemberCount)';
  }
}

/// @nodoc
abstract mixin class $ChatInviteLinkCopyWith<$Res> {
  factory $ChatInviteLinkCopyWith(
          ChatInviteLink value, $Res Function(ChatInviteLink) _then) =
      _$ChatInviteLinkCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'invite_link') String inviteLink,
      @JsonKey(name: 'creator') User? creator,
      @JsonKey(name: 'creates_join_request') bool? createsJoinRequest,
      @JsonKey(name: 'is_primary') bool? isPrimary,
      @JsonKey(name: 'is_revoked') bool? isRevoked,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'expire_date') int? expireDate,
      @JsonKey(name: 'member_limit') int? memberLimit,
      @JsonKey(name: 'pending_member_count') int? pendingMemberCount});

  $UserCopyWith<$Res>? get creator;
}

/// @nodoc
class _$ChatInviteLinkCopyWithImpl<$Res>
    implements $ChatInviteLinkCopyWith<$Res> {
  _$ChatInviteLinkCopyWithImpl(this._self, this._then);

  final ChatInviteLink _self;
  final $Res Function(ChatInviteLink) _then;

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteLink = null,
    Object? creator = freezed,
    Object? createsJoinRequest = freezed,
    Object? isPrimary = freezed,
    Object? isRevoked = freezed,
    Object? name = freezed,
    Object? expireDate = freezed,
    Object? memberLimit = freezed,
    Object? pendingMemberCount = freezed,
  }) {
    return _then(_self.copyWith(
      inviteLink: null == inviteLink
          ? _self.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String,
      creator: freezed == creator
          ? _self.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      createsJoinRequest: freezed == createsJoinRequest
          ? _self.createsJoinRequest
          : createsJoinRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRevoked: freezed == isRevoked
          ? _self.isRevoked
          : isRevoked // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _self.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLimit: freezed == memberLimit
          ? _self.memberLimit
          : memberLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingMemberCount: freezed == pendingMemberCount
          ? _self.pendingMemberCount
          : pendingMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get creator {
    if (_self.creator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.creator!, (value) {
      return _then(_self.copyWith(creator: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChatInviteLink implements ChatInviteLink {
  const _ChatInviteLink(
      {@JsonKey(name: 'invite_link') required this.inviteLink,
      @JsonKey(name: 'creator') this.creator,
      @JsonKey(name: 'creates_join_request') this.createsJoinRequest,
      @JsonKey(name: 'is_primary') this.isPrimary,
      @JsonKey(name: 'is_revoked') this.isRevoked,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'expire_date') this.expireDate,
      @JsonKey(name: 'member_limit') this.memberLimit,
      @JsonKey(name: 'pending_member_count') this.pendingMemberCount});
  factory _ChatInviteLink.fromJson(Map<String, dynamic> json) =>
      _$ChatInviteLinkFromJson(json);

  /// The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
  @override
  @JsonKey(name: 'invite_link')
  final String inviteLink;

  /// Creator of the link
  @override
  @JsonKey(name: 'creator')
  final User? creator;

  /// True, if users joining the chat via the link need to be approved by chat administrators
  @override
  @JsonKey(name: 'creates_join_request')
  final bool? createsJoinRequest;

  /// True, if the link is primary
  @override
  @JsonKey(name: 'is_primary')
  final bool? isPrimary;

  /// True, if the link is revoked
  @override
  @JsonKey(name: 'is_revoked')
  final bool? isRevoked;

  /// Optional. Invite link name
  @override
  @JsonKey(name: 'name')
  final String? name;

  /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
  ///
  /// The expiry date is available as `expireDateTime` getter.
  @override
  @JsonKey(name: 'expire_date')
  final int? expireDate;

  /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  @override
  @JsonKey(name: 'member_limit')
  final int? memberLimit;

  /// Optional. Number of pending join requests created using this link
  @override
  @JsonKey(name: 'pending_member_count')
  final int? pendingMemberCount;

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatInviteLinkCopyWith<_ChatInviteLink> get copyWith =>
      __$ChatInviteLinkCopyWithImpl<_ChatInviteLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatInviteLinkToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatInviteLink(inviteLink: $inviteLink, creator: $creator, createsJoinRequest: $createsJoinRequest, isPrimary: $isPrimary, isRevoked: $isRevoked, name: $name, expireDate: $expireDate, memberLimit: $memberLimit, pendingMemberCount: $pendingMemberCount)';
  }
}

/// @nodoc
abstract mixin class _$ChatInviteLinkCopyWith<$Res>
    implements $ChatInviteLinkCopyWith<$Res> {
  factory _$ChatInviteLinkCopyWith(
          _ChatInviteLink value, $Res Function(_ChatInviteLink) _then) =
      __$ChatInviteLinkCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'invite_link') String inviteLink,
      @JsonKey(name: 'creator') User? creator,
      @JsonKey(name: 'creates_join_request') bool? createsJoinRequest,
      @JsonKey(name: 'is_primary') bool? isPrimary,
      @JsonKey(name: 'is_revoked') bool? isRevoked,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'expire_date') int? expireDate,
      @JsonKey(name: 'member_limit') int? memberLimit,
      @JsonKey(name: 'pending_member_count') int? pendingMemberCount});

  @override
  $UserCopyWith<$Res>? get creator;
}

/// @nodoc
class __$ChatInviteLinkCopyWithImpl<$Res>
    implements _$ChatInviteLinkCopyWith<$Res> {
  __$ChatInviteLinkCopyWithImpl(this._self, this._then);

  final _ChatInviteLink _self;
  final $Res Function(_ChatInviteLink) _then;

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inviteLink = null,
    Object? creator = freezed,
    Object? createsJoinRequest = freezed,
    Object? isPrimary = freezed,
    Object? isRevoked = freezed,
    Object? name = freezed,
    Object? expireDate = freezed,
    Object? memberLimit = freezed,
    Object? pendingMemberCount = freezed,
  }) {
    return _then(_ChatInviteLink(
      inviteLink: null == inviteLink
          ? _self.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String,
      creator: freezed == creator
          ? _self.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      createsJoinRequest: freezed == createsJoinRequest
          ? _self.createsJoinRequest
          : createsJoinRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrimary: freezed == isPrimary
          ? _self.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRevoked: freezed == isRevoked
          ? _self.isRevoked
          : isRevoked // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _self.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLimit: freezed == memberLimit
          ? _self.memberLimit
          : memberLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingMemberCount: freezed == pendingMemberCount
          ? _self.pendingMemberCount
          : pendingMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get creator {
    if (_self.creator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_self.creator!, (value) {
      return _then(_self.copyWith(creator: value));
    });
  }
}
