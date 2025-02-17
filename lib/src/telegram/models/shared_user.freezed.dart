// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SharedUser _$SharedUserFromJson(Map<String, dynamic> json) {
  return _SharedUser.fromJson(json);
}

/// @nodoc
mixin _$SharedUser {
  /// Identifier of the shared user. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// user and could be unable to use this identifier unless the user is
  /// already known to the bot by some other means.
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;

  /// Optional. First name of the user, if the name was requested by the bot.
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;

  /// Optional. Last name of the user, if the name was requested by the bot.
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

  /// Optional. Username of the user, if the username was requested by the
  /// bot.
  String? get username => throw _privateConstructorUsedError;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  List<PhotoSize>? get photo => throw _privateConstructorUsedError;

  /// Serializes this SharedUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedUserCopyWith<SharedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedUserCopyWith<$Res> {
  factory $SharedUserCopyWith(
          SharedUser value, $Res Function(SharedUser) then) =
      _$SharedUserCopyWithImpl<$Res, SharedUser>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      List<PhotoSize>? photo});
}

/// @nodoc
class _$SharedUserCopyWithImpl<$Res, $Val extends SharedUser>
    implements $SharedUserCopyWith<$Res> {
  _$SharedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SharedUserImplCopyWith<$Res>
    implements $SharedUserCopyWith<$Res> {
  factory _$$SharedUserImplCopyWith(
          _$SharedUserImpl value, $Res Function(_$SharedUserImpl) then) =
      __$$SharedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      String? username,
      List<PhotoSize>? photo});
}

/// @nodoc
class __$$SharedUserImplCopyWithImpl<$Res>
    extends _$SharedUserCopyWithImpl<$Res, _$SharedUserImpl>
    implements _$$SharedUserImplCopyWith<$Res> {
  __$$SharedUserImplCopyWithImpl(
      _$SharedUserImpl _value, $Res Function(_$SharedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? username = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$SharedUserImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value._photo
          : photo // ignore: cast_nullable_to_non_nullable
              as List<PhotoSize>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedUserImpl implements _SharedUser {
  const _$SharedUserImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      this.username,
      final List<PhotoSize>? photo})
      : _photo = photo;

  factory _$SharedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedUserImplFromJson(json);

  /// Identifier of the shared user. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// user and could be unable to use this identifier unless the user is
  /// already known to the bot by some other means.
  @override
  @JsonKey(name: 'user_id')
  final int userId;

  /// Optional. First name of the user, if the name was requested by the bot.
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;

  /// Optional. Last name of the user, if the name was requested by the bot.
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Optional. Username of the user, if the username was requested by the
  /// bot.
  @override
  final String? username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  final List<PhotoSize>? _photo;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  @override
  List<PhotoSize>? get photo {
    final value = _photo;
    if (value == null) return null;
    if (_photo is EqualUnmodifiableListView) return _photo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SharedUser(userId: $userId, firstName: $firstName, lastName: $lastName, username: $username, photo: $photo)';
  }

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedUserImplCopyWith<_$SharedUserImpl> get copyWith =>
      __$$SharedUserImplCopyWithImpl<_$SharedUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedUserImplToJson(
      this,
    );
  }
}

abstract class _SharedUser implements SharedUser {
  const factory _SharedUser(
      {@JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      final String? username,
      final List<PhotoSize>? photo}) = _$SharedUserImpl;

  factory _SharedUser.fromJson(Map<String, dynamic> json) =
      _$SharedUserImpl.fromJson;

  /// Identifier of the shared user. This number may have more than 32
  /// significant bits and some programming languages may have
  /// difficulty/silent defects in interpreting it. But it has at most 52
  /// significant bits, so 64-bit integers or double-precision float types are
  /// safe for storing these identifiers. The bot may not have access to the
  /// user and could be unable to use this identifier unless the user is
  /// already known to the bot by some other means.
  @override
  @JsonKey(name: 'user_id')
  int get userId;

  /// Optional. First name of the user, if the name was requested by the bot.
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;

  /// Optional. Last name of the user, if the name was requested by the bot.
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Optional. Username of the user, if the username was requested by the
  /// bot.
  @override
  String? get username;

  /// Optional. Available sizes of the chat photo, if the photo was requested
  /// by the bot.
  @override
  List<PhotoSize>? get photo;

  /// Create a copy of SharedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedUserImplCopyWith<_$SharedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
