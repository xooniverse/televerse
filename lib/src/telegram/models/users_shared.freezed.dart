// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_shared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsersShared _$UsersSharedFromJson(Map<String, dynamic> json) {
  return _UsersShared.fromJson(json);
}

/// @nodoc
mixin _$UsersShared {
  /// Identifier of the request
  @JsonKey(name: 'request_id')
  int get requestId => throw _privateConstructorUsedError;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  List<SharedUser> get users => throw _privateConstructorUsedError;

  /// Serializes this UsersShared to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsersSharedCopyWith<UsersShared> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersSharedCopyWith<$Res> {
  factory $UsersSharedCopyWith(
          UsersShared value, $Res Function(UsersShared) then) =
      _$UsersSharedCopyWithImpl<$Res, UsersShared>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId, List<SharedUser> users});
}

/// @nodoc
class _$UsersSharedCopyWithImpl<$Res, $Val extends UsersShared>
    implements $UsersSharedCopyWith<$Res> {
  _$UsersSharedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SharedUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersSharedImplCopyWith<$Res>
    implements $UsersSharedCopyWith<$Res> {
  factory _$$UsersSharedImplCopyWith(
          _$UsersSharedImpl value, $Res Function(_$UsersSharedImpl) then) =
      __$$UsersSharedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId, List<SharedUser> users});
}

/// @nodoc
class __$$UsersSharedImplCopyWithImpl<$Res>
    extends _$UsersSharedCopyWithImpl<$Res, _$UsersSharedImpl>
    implements _$$UsersSharedImplCopyWith<$Res> {
  __$$UsersSharedImplCopyWithImpl(
      _$UsersSharedImpl _value, $Res Function(_$UsersSharedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? users = null,
  }) {
    return _then(_$UsersSharedImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SharedUser>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersSharedImpl implements _UsersShared {
  const _$UsersSharedImpl(
      {@JsonKey(name: 'request_id') required this.requestId,
      required final List<SharedUser> users})
      : _users = users;

  factory _$UsersSharedImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersSharedImplFromJson(json);

  /// Identifier of the request
  @override
  @JsonKey(name: 'request_id')
  final int requestId;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  final List<SharedUser> _users;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  @override
  List<SharedUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersShared(requestId: $requestId, users: $users)';
  }

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersSharedImplCopyWith<_$UsersSharedImpl> get copyWith =>
      __$$UsersSharedImplCopyWithImpl<_$UsersSharedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersSharedImplToJson(
      this,
    );
  }
}

abstract class _UsersShared implements UsersShared {
  const factory _UsersShared(
      {@JsonKey(name: 'request_id') required final int requestId,
      required final List<SharedUser> users}) = _$UsersSharedImpl;

  factory _UsersShared.fromJson(Map<String, dynamic> json) =
      _$UsersSharedImpl.fromJson;

  /// Identifier of the request
  @override
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Identifiers of the shared users. These numbers may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting them. But they have at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// users and could be unable to use these identifiers, unless the users are
  /// already known to the bot by some other means.
  @override
  List<SharedUser> get users;

  /// Create a copy of UsersShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsersSharedImplCopyWith<_$UsersSharedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
