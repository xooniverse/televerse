// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_invite_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatInviteLink _$ChatInviteLinkFromJson(Map<String, dynamic> json) {
  return _ChatInviteLink.fromJson(json);
}

/// @nodoc
mixin _$ChatInviteLink {
  /// The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
  @JsonKey(name: 'invite_link')
  String get inviteLink => throw _privateConstructorUsedError;

  /// Creator of the link
  @JsonKey(name: 'creator')
  User? get creator => throw _privateConstructorUsedError;

  /// True, if users joining the chat via the link need to be approved by chat administrators
  @JsonKey(name: 'creates_join_request')
  bool? get createsJoinRequest => throw _privateConstructorUsedError;

  /// True, if the link is primary
  @JsonKey(name: 'is_primary')
  bool? get isPrimary => throw _privateConstructorUsedError;

  /// True, if the link is revoked
  @JsonKey(name: 'is_revoked')
  bool? get isRevoked => throw _privateConstructorUsedError;

  /// Optional. Invite link name
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
  ///
  /// The expiry date is available as [expireDateTime] getter.
  @JsonKey(name: 'expire_date')
  int? get expireDate => throw _privateConstructorUsedError;

  /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  @JsonKey(name: 'member_limit')
  int? get memberLimit => throw _privateConstructorUsedError;

  /// Optional. Number of pending join requests created using this link
  @JsonKey(name: 'pending_member_count')
  int? get pendingMemberCount => throw _privateConstructorUsedError;

  /// Serializes this ChatInviteLink to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatInviteLinkCopyWith<ChatInviteLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatInviteLinkCopyWith<$Res> {
  factory $ChatInviteLinkCopyWith(
          ChatInviteLink value, $Res Function(ChatInviteLink) then) =
      _$ChatInviteLinkCopyWithImpl<$Res, ChatInviteLink>;
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
class _$ChatInviteLinkCopyWithImpl<$Res, $Val extends ChatInviteLink>
    implements $ChatInviteLinkCopyWith<$Res> {
  _$ChatInviteLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      inviteLink: null == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      createsJoinRequest: freezed == createsJoinRequest
          ? _value.createsJoinRequest
          : createsJoinRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRevoked: freezed == isRevoked
          ? _value.isRevoked
          : isRevoked // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLimit: freezed == memberLimit
          ? _value.memberLimit
          : memberLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingMemberCount: freezed == pendingMemberCount
          ? _value.pendingMemberCount
          : pendingMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatInviteLinkImplCopyWith<$Res>
    implements $ChatInviteLinkCopyWith<$Res> {
  factory _$$ChatInviteLinkImplCopyWith(_$ChatInviteLinkImpl value,
          $Res Function(_$ChatInviteLinkImpl) then) =
      __$$ChatInviteLinkImplCopyWithImpl<$Res>;
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
class __$$ChatInviteLinkImplCopyWithImpl<$Res>
    extends _$ChatInviteLinkCopyWithImpl<$Res, _$ChatInviteLinkImpl>
    implements _$$ChatInviteLinkImplCopyWith<$Res> {
  __$$ChatInviteLinkImplCopyWithImpl(
      _$ChatInviteLinkImpl _value, $Res Function(_$ChatInviteLinkImpl) _then)
      : super(_value, _then);

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
    return _then(_$ChatInviteLinkImpl(
      inviteLink: null == inviteLink
          ? _value.inviteLink
          : inviteLink // ignore: cast_nullable_to_non_nullable
              as String,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User?,
      createsJoinRequest: freezed == createsJoinRequest
          ? _value.createsJoinRequest
          : createsJoinRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPrimary: freezed == isPrimary
          ? _value.isPrimary
          : isPrimary // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRevoked: freezed == isRevoked
          ? _value.isRevoked
          : isRevoked // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLimit: freezed == memberLimit
          ? _value.memberLimit
          : memberLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingMemberCount: freezed == pendingMemberCount
          ? _value.pendingMemberCount
          : pendingMemberCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatInviteLinkImpl implements _ChatInviteLink {
  const _$ChatInviteLinkImpl(
      {@JsonKey(name: 'invite_link') required this.inviteLink,
      @JsonKey(name: 'creator') this.creator,
      @JsonKey(name: 'creates_join_request') this.createsJoinRequest,
      @JsonKey(name: 'is_primary') this.isPrimary,
      @JsonKey(name: 'is_revoked') this.isRevoked,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'expire_date') this.expireDate,
      @JsonKey(name: 'member_limit') this.memberLimit,
      @JsonKey(name: 'pending_member_count') this.pendingMemberCount});

  factory _$ChatInviteLinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatInviteLinkImplFromJson(json);

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
  /// The expiry date is available as [expireDateTime] getter.
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

  @override
  String toString() {
    return 'ChatInviteLink(inviteLink: $inviteLink, creator: $creator, createsJoinRequest: $createsJoinRequest, isPrimary: $isPrimary, isRevoked: $isRevoked, name: $name, expireDate: $expireDate, memberLimit: $memberLimit, pendingMemberCount: $pendingMemberCount)';
  }

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatInviteLinkImplCopyWith<_$ChatInviteLinkImpl> get copyWith =>
      __$$ChatInviteLinkImplCopyWithImpl<_$ChatInviteLinkImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatInviteLinkImplToJson(
      this,
    );
  }
}

abstract class _ChatInviteLink implements ChatInviteLink {
  const factory _ChatInviteLink(
      {@JsonKey(name: 'invite_link') required final String inviteLink,
      @JsonKey(name: 'creator') final User? creator,
      @JsonKey(name: 'creates_join_request') final bool? createsJoinRequest,
      @JsonKey(name: 'is_primary') final bool? isPrimary,
      @JsonKey(name: 'is_revoked') final bool? isRevoked,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'expire_date') final int? expireDate,
      @JsonKey(name: 'member_limit') final int? memberLimit,
      @JsonKey(name: 'pending_member_count')
      final int? pendingMemberCount}) = _$ChatInviteLinkImpl;

  factory _ChatInviteLink.fromJson(Map<String, dynamic> json) =
      _$ChatInviteLinkImpl.fromJson;

  /// The invite link. If the link was created by another chat administrator, then the second part of the link will be replaced with “…”.
  @override
  @JsonKey(name: 'invite_link')
  String get inviteLink;

  /// Creator of the link
  @override
  @JsonKey(name: 'creator')
  User? get creator;

  /// True, if users joining the chat via the link need to be approved by chat administrators
  @override
  @JsonKey(name: 'creates_join_request')
  bool? get createsJoinRequest;

  /// True, if the link is primary
  @override
  @JsonKey(name: 'is_primary')
  bool? get isPrimary;

  /// True, if the link is revoked
  @override
  @JsonKey(name: 'is_revoked')
  bool? get isRevoked;

  /// Optional. Invite link name
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Optional. Point in time (Unix timestamp) when the link will expire or has been expired
  ///
  /// The expiry date is available as [expireDateTime] getter.
  @override
  @JsonKey(name: 'expire_date')
  int? get expireDate;

  /// Optional. The maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  @override
  @JsonKey(name: 'member_limit')
  int? get memberLimit;

  /// Optional. Number of pending join requests created using this link
  @override
  @JsonKey(name: 'pending_member_count')
  int? get pendingMemberCount;

  /// Create a copy of ChatInviteLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatInviteLinkImplCopyWith<_$ChatInviteLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
