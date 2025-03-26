// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost_added.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBoostAdded {
  /// Number of boosts added by the user
  @JsonKey(name: 'boost_count')
  int get boostCount;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostAddedCopyWith<ChatBoostAdded> get copyWith =>
      _$ChatBoostAddedCopyWithImpl<ChatBoostAdded>(
          this as ChatBoostAdded, _$identity);

  /// Serializes this ChatBoostAdded to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatBoostAdded(boostCount: $boostCount)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostAddedCopyWith<$Res> {
  factory $ChatBoostAddedCopyWith(
          ChatBoostAdded value, $Res Function(ChatBoostAdded) _then) =
      _$ChatBoostAddedCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'boost_count') int boostCount});
}

/// @nodoc
class _$ChatBoostAddedCopyWithImpl<$Res>
    implements $ChatBoostAddedCopyWith<$Res> {
  _$ChatBoostAddedCopyWithImpl(this._self, this._then);

  final ChatBoostAdded _self;
  final $Res Function(ChatBoostAdded) _then;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boostCount = null,
  }) {
    return _then(_self.copyWith(
      boostCount: null == boostCount
          ? _self.boostCount
          : boostCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ChatBoostAdded implements ChatBoostAdded {
  const _ChatBoostAdded(
      {@JsonKey(name: 'boost_count') required this.boostCount});
  factory _ChatBoostAdded.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostAddedFromJson(json);

  /// Number of boosts added by the user
  @override
  @JsonKey(name: 'boost_count')
  final int boostCount;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatBoostAddedCopyWith<_ChatBoostAdded> get copyWith =>
      __$ChatBoostAddedCopyWithImpl<_ChatBoostAdded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostAddedToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'ChatBoostAdded(boostCount: $boostCount)';
  }
}

/// @nodoc
abstract mixin class _$ChatBoostAddedCopyWith<$Res>
    implements $ChatBoostAddedCopyWith<$Res> {
  factory _$ChatBoostAddedCopyWith(
          _ChatBoostAdded value, $Res Function(_ChatBoostAdded) _then) =
      __$ChatBoostAddedCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'boost_count') int boostCount});
}

/// @nodoc
class __$ChatBoostAddedCopyWithImpl<$Res>
    implements _$ChatBoostAddedCopyWith<$Res> {
  __$ChatBoostAddedCopyWithImpl(this._self, this._then);

  final _ChatBoostAdded _self;
  final $Res Function(_ChatBoostAdded) _then;

  /// Create a copy of ChatBoostAdded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? boostCount = null,
  }) {
    return _then(_ChatBoostAdded(
      boostCount: null == boostCount
          ? _self.boostCount
          : boostCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
