// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_chat_participants_invited.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoChatParticipantsInvited _$VideoChatParticipantsInvitedFromJson(
    Map<String, dynamic> json) {
  return _VideoChatParticipantsInvited.fromJson(json);
}

/// @nodoc
mixin _$VideoChatParticipantsInvited {
  /// New members that were invited to the video chat.
  @JsonKey(name: 'users')
  List<User> get users => throw _privateConstructorUsedError;

  /// Serializes this VideoChatParticipantsInvited to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoChatParticipantsInvitedCopyWith<VideoChatParticipantsInvited>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoChatParticipantsInvitedCopyWith<$Res> {
  factory $VideoChatParticipantsInvitedCopyWith(
          VideoChatParticipantsInvited value,
          $Res Function(VideoChatParticipantsInvited) then) =
      _$VideoChatParticipantsInvitedCopyWithImpl<$Res,
          VideoChatParticipantsInvited>;
  @useResult
  $Res call({@JsonKey(name: 'users') List<User> users});
}

/// @nodoc
class _$VideoChatParticipantsInvitedCopyWithImpl<$Res,
        $Val extends VideoChatParticipantsInvited>
    implements $VideoChatParticipantsInvitedCopyWith<$Res> {
  _$VideoChatParticipantsInvitedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoChatParticipantsInvitedImplCopyWith<$Res>
    implements $VideoChatParticipantsInvitedCopyWith<$Res> {
  factory _$$VideoChatParticipantsInvitedImplCopyWith(
          _$VideoChatParticipantsInvitedImpl value,
          $Res Function(_$VideoChatParticipantsInvitedImpl) then) =
      __$$VideoChatParticipantsInvitedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'users') List<User> users});
}

/// @nodoc
class __$$VideoChatParticipantsInvitedImplCopyWithImpl<$Res>
    extends _$VideoChatParticipantsInvitedCopyWithImpl<$Res,
        _$VideoChatParticipantsInvitedImpl>
    implements _$$VideoChatParticipantsInvitedImplCopyWith<$Res> {
  __$$VideoChatParticipantsInvitedImplCopyWithImpl(
      _$VideoChatParticipantsInvitedImpl _value,
      $Res Function(_$VideoChatParticipantsInvitedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$VideoChatParticipantsInvitedImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoChatParticipantsInvitedImpl
    implements _VideoChatParticipantsInvited {
  const _$VideoChatParticipantsInvitedImpl(
      {@JsonKey(name: 'users') required final List<User> users})
      : _users = users;

  factory _$VideoChatParticipantsInvitedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VideoChatParticipantsInvitedImplFromJson(json);

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

  @override
  String toString() {
    return 'VideoChatParticipantsInvited(users: $users)';
  }

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoChatParticipantsInvitedImplCopyWith<
          _$VideoChatParticipantsInvitedImpl>
      get copyWith => __$$VideoChatParticipantsInvitedImplCopyWithImpl<
          _$VideoChatParticipantsInvitedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoChatParticipantsInvitedImplToJson(
      this,
    );
  }
}

abstract class _VideoChatParticipantsInvited
    implements VideoChatParticipantsInvited {
  const factory _VideoChatParticipantsInvited(
          {@JsonKey(name: 'users') required final List<User> users}) =
      _$VideoChatParticipantsInvitedImpl;

  factory _VideoChatParticipantsInvited.fromJson(Map<String, dynamic> json) =
      _$VideoChatParticipantsInvitedImpl.fromJson;

  /// New members that were invited to the video chat.
  @override
  @JsonKey(name: 'users')
  List<User> get users;

  /// Create a copy of VideoChatParticipantsInvited
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoChatParticipantsInvitedImplCopyWith<
          _$VideoChatParticipantsInvitedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
