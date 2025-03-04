// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_request_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeyboardButtonRequestUsers _$KeyboardButtonRequestUsersFromJson(
    Map<String, dynamic> json) {
  return _KeyboardButtonRequestUsers.fromJson(json);
}

/// @nodoc
mixin _$KeyboardButtonRequestUsers {
  /// Signed 32-bit identifier of the request.
  @JsonKey(name: 'request_id')
  int get requestId => throw _privateConstructorUsedError;

  /// Optional. Pass True to request a bot, pass False to request a regular
  /// user. If not specified, no additional restrictions are applied.
  @JsonKey(name: 'user_is_bot')
  bool? get userIsBot => throw _privateConstructorUsedError;

  /// Optional. Pass True to request a premium user, pass False to request a
  /// non-premium user. If not specified, no additional restrictions are
  /// applied.
  @JsonKey(name: 'user_is_premium')
  bool? get userIsPremium => throw _privateConstructorUsedError;

  /// Optional. The maximum number of users to be selected; 1-10. Defaults to
  /// 1.
  @JsonKey(name: 'max_quantity')
  int? get maxQuantity => throw _privateConstructorUsedError;

  /// Optional. Pass True to request the users' first and last name.
  @JsonKey(name: 'request_name')
  bool? get requestName => throw _privateConstructorUsedError;

  /// Optional. Pass True to request the users' username.
  @JsonKey(name: 'request_username')
  bool? get requestUsername => throw _privateConstructorUsedError;

  /// Optional. Pass True to request the users' photo.
  @JsonKey(name: 'request_photo')
  bool? get requestPhoto => throw _privateConstructorUsedError;

  /// Serializes this KeyboardButtonRequestUsers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyboardButtonRequestUsersCopyWith<KeyboardButtonRequestUsers>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardButtonRequestUsersCopyWith<$Res> {
  factory $KeyboardButtonRequestUsersCopyWith(KeyboardButtonRequestUsers value,
          $Res Function(KeyboardButtonRequestUsers) then) =
      _$KeyboardButtonRequestUsersCopyWithImpl<$Res,
          KeyboardButtonRequestUsers>;
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'user_is_bot') bool? userIsBot,
      @JsonKey(name: 'user_is_premium') bool? userIsPremium,
      @JsonKey(name: 'max_quantity') int? maxQuantity,
      @JsonKey(name: 'request_name') bool? requestName,
      @JsonKey(name: 'request_username') bool? requestUsername,
      @JsonKey(name: 'request_photo') bool? requestPhoto});
}

/// @nodoc
class _$KeyboardButtonRequestUsersCopyWithImpl<$Res,
        $Val extends KeyboardButtonRequestUsers>
    implements $KeyboardButtonRequestUsersCopyWith<$Res> {
  _$KeyboardButtonRequestUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? userIsBot = freezed,
    Object? userIsPremium = freezed,
    Object? maxQuantity = freezed,
    Object? requestName = freezed,
    Object? requestUsername = freezed,
    Object? requestPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      userIsBot: freezed == userIsBot
          ? _value.userIsBot
          : userIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsPremium: freezed == userIsPremium
          ? _value.userIsPremium
          : userIsPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxQuantity: freezed == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      requestName: freezed == requestName
          ? _value.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _value.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _value.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeyboardButtonRequestUsersImplCopyWith<$Res>
    implements $KeyboardButtonRequestUsersCopyWith<$Res> {
  factory _$$KeyboardButtonRequestUsersImplCopyWith(
          _$KeyboardButtonRequestUsersImpl value,
          $Res Function(_$KeyboardButtonRequestUsersImpl) then) =
      __$$KeyboardButtonRequestUsersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'request_id') int requestId,
      @JsonKey(name: 'user_is_bot') bool? userIsBot,
      @JsonKey(name: 'user_is_premium') bool? userIsPremium,
      @JsonKey(name: 'max_quantity') int? maxQuantity,
      @JsonKey(name: 'request_name') bool? requestName,
      @JsonKey(name: 'request_username') bool? requestUsername,
      @JsonKey(name: 'request_photo') bool? requestPhoto});
}

/// @nodoc
class __$$KeyboardButtonRequestUsersImplCopyWithImpl<$Res>
    extends _$KeyboardButtonRequestUsersCopyWithImpl<$Res,
        _$KeyboardButtonRequestUsersImpl>
    implements _$$KeyboardButtonRequestUsersImplCopyWith<$Res> {
  __$$KeyboardButtonRequestUsersImplCopyWithImpl(
      _$KeyboardButtonRequestUsersImpl _value,
      $Res Function(_$KeyboardButtonRequestUsersImpl) _then)
      : super(_value, _then);

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? userIsBot = freezed,
    Object? userIsPremium = freezed,
    Object? maxQuantity = freezed,
    Object? requestName = freezed,
    Object? requestUsername = freezed,
    Object? requestPhoto = freezed,
  }) {
    return _then(_$KeyboardButtonRequestUsersImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      userIsBot: freezed == userIsBot
          ? _value.userIsBot
          : userIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsPremium: freezed == userIsPremium
          ? _value.userIsPremium
          : userIsPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxQuantity: freezed == maxQuantity
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      requestName: freezed == requestName
          ? _value.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _value.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _value.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyboardButtonRequestUsersImpl implements _KeyboardButtonRequestUsers {
  const _$KeyboardButtonRequestUsersImpl(
      {@JsonKey(name: 'request_id') required this.requestId,
      @JsonKey(name: 'user_is_bot') this.userIsBot,
      @JsonKey(name: 'user_is_premium') this.userIsPremium,
      @JsonKey(name: 'max_quantity') this.maxQuantity,
      @JsonKey(name: 'request_name') this.requestName,
      @JsonKey(name: 'request_username') this.requestUsername,
      @JsonKey(name: 'request_photo') this.requestPhoto});

  factory _$KeyboardButtonRequestUsersImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$KeyboardButtonRequestUsersImplFromJson(json);

  /// Signed 32-bit identifier of the request.
  @override
  @JsonKey(name: 'request_id')
  final int requestId;

  /// Optional. Pass True to request a bot, pass False to request a regular
  /// user. If not specified, no additional restrictions are applied.
  @override
  @JsonKey(name: 'user_is_bot')
  final bool? userIsBot;

  /// Optional. Pass True to request a premium user, pass False to request a
  /// non-premium user. If not specified, no additional restrictions are
  /// applied.
  @override
  @JsonKey(name: 'user_is_premium')
  final bool? userIsPremium;

  /// Optional. The maximum number of users to be selected; 1-10. Defaults to
  /// 1.
  @override
  @JsonKey(name: 'max_quantity')
  final int? maxQuantity;

  /// Optional. Pass True to request the users' first and last name.
  @override
  @JsonKey(name: 'request_name')
  final bool? requestName;

  /// Optional. Pass True to request the users' username.
  @override
  @JsonKey(name: 'request_username')
  final bool? requestUsername;

  /// Optional. Pass True to request the users' photo.
  @override
  @JsonKey(name: 'request_photo')
  final bool? requestPhoto;

  @override
  String toString() {
    return 'KeyboardButtonRequestUsers(requestId: $requestId, userIsBot: $userIsBot, userIsPremium: $userIsPremium, maxQuantity: $maxQuantity, requestName: $requestName, requestUsername: $requestUsername, requestPhoto: $requestPhoto)';
  }

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyboardButtonRequestUsersImplCopyWith<_$KeyboardButtonRequestUsersImpl>
      get copyWith => __$$KeyboardButtonRequestUsersImplCopyWithImpl<
          _$KeyboardButtonRequestUsersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyboardButtonRequestUsersImplToJson(
      this,
    );
  }
}

abstract class _KeyboardButtonRequestUsers
    implements KeyboardButtonRequestUsers {
  const factory _KeyboardButtonRequestUsers(
          {@JsonKey(name: 'request_id') required final int requestId,
          @JsonKey(name: 'user_is_bot') final bool? userIsBot,
          @JsonKey(name: 'user_is_premium') final bool? userIsPremium,
          @JsonKey(name: 'max_quantity') final int? maxQuantity,
          @JsonKey(name: 'request_name') final bool? requestName,
          @JsonKey(name: 'request_username') final bool? requestUsername,
          @JsonKey(name: 'request_photo') final bool? requestPhoto}) =
      _$KeyboardButtonRequestUsersImpl;

  factory _KeyboardButtonRequestUsers.fromJson(Map<String, dynamic> json) =
      _$KeyboardButtonRequestUsersImpl.fromJson;

  /// Signed 32-bit identifier of the request.
  @override
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Optional. Pass True to request a bot, pass False to request a regular
  /// user. If not specified, no additional restrictions are applied.
  @override
  @JsonKey(name: 'user_is_bot')
  bool? get userIsBot;

  /// Optional. Pass True to request a premium user, pass False to request a
  /// non-premium user. If not specified, no additional restrictions are
  /// applied.
  @override
  @JsonKey(name: 'user_is_premium')
  bool? get userIsPremium;

  /// Optional. The maximum number of users to be selected; 1-10. Defaults to
  /// 1.
  @override
  @JsonKey(name: 'max_quantity')
  int? get maxQuantity;

  /// Optional. Pass True to request the users' first and last name.
  @override
  @JsonKey(name: 'request_name')
  bool? get requestName;

  /// Optional. Pass True to request the users' username.
  @override
  @JsonKey(name: 'request_username')
  bool? get requestUsername;

  /// Optional. Pass True to request the users' photo.
  @override
  @JsonKey(name: 'request_photo')
  bool? get requestPhoto;

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyboardButtonRequestUsersImplCopyWith<_$KeyboardButtonRequestUsersImpl>
      get copyWith => throw _privateConstructorUsedError;
}
