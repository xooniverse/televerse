// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chat_boosts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserChatBoosts _$UserChatBoostsFromJson(Map<String, dynamic> json) {
  return _UserChatBoosts.fromJson(json);
}

/// @nodoc
mixin _$UserChatBoosts {
  /// The list of boosts added to the chat by the user
  @JsonKey(name: 'boosts')
  List<ChatBoost> get boosts => throw _privateConstructorUsedError;

  /// Serializes this UserChatBoosts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserChatBoostsCopyWith<UserChatBoosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChatBoostsCopyWith<$Res> {
  factory $UserChatBoostsCopyWith(
          UserChatBoosts value, $Res Function(UserChatBoosts) then) =
      _$UserChatBoostsCopyWithImpl<$Res, UserChatBoosts>;
  @useResult
  $Res call({@JsonKey(name: 'boosts') List<ChatBoost> boosts});
}

/// @nodoc
class _$UserChatBoostsCopyWithImpl<$Res, $Val extends UserChatBoosts>
    implements $UserChatBoostsCopyWith<$Res> {
  _$UserChatBoostsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boosts = null,
  }) {
    return _then(_value.copyWith(
      boosts: null == boosts
          ? _value.boosts
          : boosts // ignore: cast_nullable_to_non_nullable
              as List<ChatBoost>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserChatBoostsImplCopyWith<$Res>
    implements $UserChatBoostsCopyWith<$Res> {
  factory _$$UserChatBoostsImplCopyWith(_$UserChatBoostsImpl value,
          $Res Function(_$UserChatBoostsImpl) then) =
      __$$UserChatBoostsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'boosts') List<ChatBoost> boosts});
}

/// @nodoc
class __$$UserChatBoostsImplCopyWithImpl<$Res>
    extends _$UserChatBoostsCopyWithImpl<$Res, _$UserChatBoostsImpl>
    implements _$$UserChatBoostsImplCopyWith<$Res> {
  __$$UserChatBoostsImplCopyWithImpl(
      _$UserChatBoostsImpl _value, $Res Function(_$UserChatBoostsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boosts = null,
  }) {
    return _then(_$UserChatBoostsImpl(
      boosts: null == boosts
          ? _value._boosts
          : boosts // ignore: cast_nullable_to_non_nullable
              as List<ChatBoost>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserChatBoostsImpl implements _UserChatBoosts {
  const _$UserChatBoostsImpl(
      {@JsonKey(name: 'boosts') required final List<ChatBoost> boosts})
      : _boosts = boosts;

  factory _$UserChatBoostsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserChatBoostsImplFromJson(json);

  /// The list of boosts added to the chat by the user
  final List<ChatBoost> _boosts;

  /// The list of boosts added to the chat by the user
  @override
  @JsonKey(name: 'boosts')
  List<ChatBoost> get boosts {
    if (_boosts is EqualUnmodifiableListView) return _boosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boosts);
  }

  @override
  String toString() {
    return 'UserChatBoosts(boosts: $boosts)';
  }

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserChatBoostsImplCopyWith<_$UserChatBoostsImpl> get copyWith =>
      __$$UserChatBoostsImplCopyWithImpl<_$UserChatBoostsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserChatBoostsImplToJson(
      this,
    );
  }
}

abstract class _UserChatBoosts implements UserChatBoosts {
  const factory _UserChatBoosts(
          {@JsonKey(name: 'boosts') required final List<ChatBoost> boosts}) =
      _$UserChatBoostsImpl;

  factory _UserChatBoosts.fromJson(Map<String, dynamic> json) =
      _$UserChatBoostsImpl.fromJson;

  /// The list of boosts added to the chat by the user
  @override
  @JsonKey(name: 'boosts')
  List<ChatBoost> get boosts;

  /// Create a copy of UserChatBoosts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserChatBoostsImplCopyWith<_$UserChatBoostsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
