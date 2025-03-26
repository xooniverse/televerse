// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_button_request_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyboardButtonRequestUsers {
  /// Signed 32-bit identifier of the request.
  @JsonKey(name: 'request_id')
  int get requestId;

  /// Optional. Pass True to request a bot, pass False to request a regular
  /// user. If not specified, no additional restrictions are applied.
  @JsonKey(name: 'user_is_bot')
  bool? get userIsBot;

  /// Optional. Pass True to request a premium user, pass False to request a
  /// non-premium user. If not specified, no additional restrictions are
  /// applied.
  @JsonKey(name: 'user_is_premium')
  bool? get userIsPremium;

  /// Optional. The maximum number of users to be selected; 1-10. Defaults to
  /// 1.
  @JsonKey(name: 'max_quantity')
  int? get maxQuantity;

  /// Optional. Pass True to request the users' first and last name.
  @JsonKey(name: 'request_name')
  bool? get requestName;

  /// Optional. Pass True to request the users' username.
  @JsonKey(name: 'request_username')
  bool? get requestUsername;

  /// Optional. Pass True to request the users' photo.
  @JsonKey(name: 'request_photo')
  bool? get requestPhoto;

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyboardButtonRequestUsersCopyWith<KeyboardButtonRequestUsers>
      get copyWith =>
          _$KeyboardButtonRequestUsersCopyWithImpl<KeyboardButtonRequestUsers>(
              this as KeyboardButtonRequestUsers, _$identity);

  /// Serializes this KeyboardButtonRequestUsers to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'KeyboardButtonRequestUsers(requestId: $requestId, userIsBot: $userIsBot, userIsPremium: $userIsPremium, maxQuantity: $maxQuantity, requestName: $requestName, requestUsername: $requestUsername, requestPhoto: $requestPhoto)';
  }
}

/// @nodoc
abstract mixin class $KeyboardButtonRequestUsersCopyWith<$Res> {
  factory $KeyboardButtonRequestUsersCopyWith(KeyboardButtonRequestUsers value,
          $Res Function(KeyboardButtonRequestUsers) _then) =
      _$KeyboardButtonRequestUsersCopyWithImpl;
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
class _$KeyboardButtonRequestUsersCopyWithImpl<$Res>
    implements $KeyboardButtonRequestUsersCopyWith<$Res> {
  _$KeyboardButtonRequestUsersCopyWithImpl(this._self, this._then);

  final KeyboardButtonRequestUsers _self;
  final $Res Function(KeyboardButtonRequestUsers) _then;

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
    return _then(_self.copyWith(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      userIsBot: freezed == userIsBot
          ? _self.userIsBot
          : userIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsPremium: freezed == userIsPremium
          ? _self.userIsPremium
          : userIsPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxQuantity: freezed == maxQuantity
          ? _self.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      requestName: freezed == requestName
          ? _self.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _self.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _self.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _KeyboardButtonRequestUsers implements KeyboardButtonRequestUsers {
  const _KeyboardButtonRequestUsers(
      {@JsonKey(name: 'request_id') required this.requestId,
      @JsonKey(name: 'user_is_bot') this.userIsBot,
      @JsonKey(name: 'user_is_premium') this.userIsPremium,
      @JsonKey(name: 'max_quantity') this.maxQuantity,
      @JsonKey(name: 'request_name') this.requestName,
      @JsonKey(name: 'request_username') this.requestUsername,
      @JsonKey(name: 'request_photo') this.requestPhoto});
  factory _KeyboardButtonRequestUsers.fromJson(Map<String, dynamic> json) =>
      _$KeyboardButtonRequestUsersFromJson(json);

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

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyboardButtonRequestUsersCopyWith<_KeyboardButtonRequestUsers>
      get copyWith => __$KeyboardButtonRequestUsersCopyWithImpl<
          _KeyboardButtonRequestUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyboardButtonRequestUsersToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'KeyboardButtonRequestUsers(requestId: $requestId, userIsBot: $userIsBot, userIsPremium: $userIsPremium, maxQuantity: $maxQuantity, requestName: $requestName, requestUsername: $requestUsername, requestPhoto: $requestPhoto)';
  }
}

/// @nodoc
abstract mixin class _$KeyboardButtonRequestUsersCopyWith<$Res>
    implements $KeyboardButtonRequestUsersCopyWith<$Res> {
  factory _$KeyboardButtonRequestUsersCopyWith(
          _KeyboardButtonRequestUsers value,
          $Res Function(_KeyboardButtonRequestUsers) _then) =
      __$KeyboardButtonRequestUsersCopyWithImpl;
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
class __$KeyboardButtonRequestUsersCopyWithImpl<$Res>
    implements _$KeyboardButtonRequestUsersCopyWith<$Res> {
  __$KeyboardButtonRequestUsersCopyWithImpl(this._self, this._then);

  final _KeyboardButtonRequestUsers _self;
  final $Res Function(_KeyboardButtonRequestUsers) _then;

  /// Create a copy of KeyboardButtonRequestUsers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requestId = null,
    Object? userIsBot = freezed,
    Object? userIsPremium = freezed,
    Object? maxQuantity = freezed,
    Object? requestName = freezed,
    Object? requestUsername = freezed,
    Object? requestPhoto = freezed,
  }) {
    return _then(_KeyboardButtonRequestUsers(
      requestId: null == requestId
          ? _self.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      userIsBot: freezed == userIsBot
          ? _self.userIsBot
          : userIsBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIsPremium: freezed == userIsPremium
          ? _self.userIsPremium
          : userIsPremium // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxQuantity: freezed == maxQuantity
          ? _self.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      requestName: freezed == requestName
          ? _self.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestUsername: freezed == requestUsername
          ? _self.requestUsername
          : requestUsername // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestPhoto: freezed == requestPhoto
          ? _self.requestPhoto
          : requestPhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}
