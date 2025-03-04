// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_added.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatBoostAdded _$ChatBoostAddedFromJson(Map<String, dynamic> json) {
  return _ChatBoostAdded.fromJson(json);
}

/// @nodoc
mixin _$ChatBoostAdded {
  /// Number of boosts added by the user
  @JsonKey(name: 'boost_count')
  int get boostCount => throw _privateConstructorUsedError;

  /// Serializes this ChatBoostAdded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatBoostAddedCopyWith<ChatBoostAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBoostAddedCopyWith<$Res> {
  factory $ChatBoostAddedCopyWith(
          ChatBoostAdded value, $Res Function(ChatBoostAdded) then) =
      _$ChatBoostAddedCopyWithImpl<$Res, ChatBoostAdded>;
  @useResult
  $Res call({@JsonKey(name: 'boost_count') int boostCount});
}

/// @nodoc
class _$ChatBoostAddedCopyWithImpl<$Res, $Val extends ChatBoostAdded>
    implements $ChatBoostAddedCopyWith<$Res> {
  _$ChatBoostAddedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boostCount = null,
  }) {
    return _then(_value.copyWith(
      boostCount: null == boostCount
          ? _value.boostCount
          : boostCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatBoostAddedImplCopyWith<$Res>
    implements $ChatBoostAddedCopyWith<$Res> {
  factory _$$ChatBoostAddedImplCopyWith(_$ChatBoostAddedImpl value,
          $Res Function(_$ChatBoostAddedImpl) then) =
      __$$ChatBoostAddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'boost_count') int boostCount});
}

/// @nodoc
class __$$ChatBoostAddedImplCopyWithImpl<$Res>
    extends _$ChatBoostAddedCopyWithImpl<$Res, _$ChatBoostAddedImpl>
    implements _$$ChatBoostAddedImplCopyWith<$Res> {
  __$$ChatBoostAddedImplCopyWithImpl(
      _$ChatBoostAddedImpl _value, $Res Function(_$ChatBoostAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boostCount = null,
  }) {
    return _then(_$ChatBoostAddedImpl(
      boostCount: null == boostCount
          ? _value.boostCount
          : boostCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChatBoostAddedImpl implements _ChatBoostAdded {
  const _$ChatBoostAddedImpl(
      {@JsonKey(name: 'boost_count') required this.boostCount});

  factory _$ChatBoostAddedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatBoostAddedImplFromJson(json);

  /// Number of boosts added by the user
  @override
  @JsonKey(name: 'boost_count')
  final int boostCount;

  @override
  String toString() {
    return 'ChatBoostAdded(boostCount: $boostCount)';
  }

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatBoostAddedImplCopyWith<_$ChatBoostAddedImpl> get copyWith =>
      __$$ChatBoostAddedImplCopyWithImpl<_$ChatBoostAddedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatBoostAddedImplToJson(
      this,
    );
  }
}

abstract class _ChatBoostAdded implements ChatBoostAdded {
  const factory _ChatBoostAdded(
          {@JsonKey(name: 'boost_count') required final int boostCount}) =
      _$ChatBoostAddedImpl;

  factory _ChatBoostAdded.fromJson(Map<String, dynamic> json) =
      _$ChatBoostAddedImpl.fromJson;

  /// Number of boosts added by the user
  @override
  @JsonKey(name: 'boost_count')
  int get boostCount;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatBoostAddedImplCopyWith<_$ChatBoostAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
