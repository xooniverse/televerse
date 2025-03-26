// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_participants_invited.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoChatParticipantsInvited {
  /// New members that were invited to the video chat.
  @JsonKey(name: 'users')
  List<User> get users;

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoChatParticipantsInvitedCopyWith<VideoChatParticipantsInvited>
      get copyWith => _$VideoChatParticipantsInvitedCopyWithImpl<
              VideoChatParticipantsInvited>(
          this as VideoChatParticipantsInvited, _$identity);

  /// Serializes this VideoChatParticipantsInvited to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'VideoChatParticipantsInvited(users: $users)';
  }
}

/// @nodoc
abstract mixin class $VideoChatParticipantsInvitedCopyWith<$Res> {
  factory $VideoChatParticipantsInvitedCopyWith(
          VideoChatParticipantsInvited value,
          $Res Function(VideoChatParticipantsInvited) _then) =
      _$VideoChatParticipantsInvitedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'users') List<User> users});
}

/// @nodoc
class _$VideoChatParticipantsInvitedCopyWithImpl<$Res>
    implements $VideoChatParticipantsInvitedCopyWith<$Res> {
  _$VideoChatParticipantsInvitedCopyWithImpl(this._self, this._then);

  final VideoChatParticipantsInvited _self;
  final $Res Function(VideoChatParticipantsInvited) _then;

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_self.copyWith(
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VideoChatParticipantsInvited implements VideoChatParticipantsInvited {
  const _VideoChatParticipantsInvited(
      {@JsonKey(name: 'users') required final List<User> users})
      : _users = users;
  factory _VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) =>
      _$VideoChatParticipantsInvitedFromJson(json);

  /// New members that were invited to the video chat.
  final List<User> _users;

  /// New members that were invited to the video chat.
  @override
  @JsonKey(name: 'users')
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoChatParticipantsInvitedCopyWith<_VideoChatParticipantsInvited>
      get copyWith => __$VideoChatParticipantsInvitedCopyWithImpl<
          _VideoChatParticipantsInvited>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoChatParticipantsInvitedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'VideoChatParticipantsInvited(users: $users)';
  }
}

/// @nodoc
abstract mixin class _$VideoChatParticipantsInvitedCopyWith<$Res>
    implements $VideoChatParticipantsInvitedCopyWith<$Res> {
  factory _$VideoChatParticipantsInvitedCopyWith(
          _VideoChatParticipantsInvited value,
          $Res Function(_VideoChatParticipantsInvited) _then) =
      __$VideoChatParticipantsInvitedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'users') List<User> users});
}

/// @nodoc
class __$VideoChatParticipantsInvitedCopyWithImpl<$Res>
    implements _$VideoChatParticipantsInvitedCopyWith<$Res> {
  __$VideoChatParticipantsInvitedCopyWithImpl(this._self, this._then);

  final _VideoChatParticipantsInvited _self;
  final $Res Function(_VideoChatParticipantsInvited) _then;

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = null,
  }) {
    return _then(_VideoChatParticipantsInvited(
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}
