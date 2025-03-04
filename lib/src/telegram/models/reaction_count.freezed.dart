// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reaction_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionCount _$ReactionCountFromJson(Map<String, dynamic> json) {
  return _ReactionCount.fromJson(json);
}

/// @nodoc
mixin _$ReactionCount {
  /// Type of the reaction.
  @JsonKey(name: 'type')
  ReactionType get type => throw _privateConstructorUsedError;

  /// Number of times the reaction was added.
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;

  /// Serializes this ReactionCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionCountCopyWith<ReactionCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionCountCopyWith<$Res> {
  factory $ReactionCountCopyWith(
          ReactionCount value, $Res Function(ReactionCount) then) =
      _$ReactionCountCopyWithImpl<$Res, ReactionCount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') ReactionType type,
      @JsonKey(name: 'total_count') int totalCount});

  $ReactionTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ReactionCountCopyWithImpl<$Res, $Val extends ReactionCount>
    implements $ReactionCountCopyWith<$Res> {
  _$ReactionCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReactionTypeCopyWith<$Res> get type {
    return $ReactionTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReactionCountImplCopyWith<$Res>
    implements $ReactionCountCopyWith<$Res> {
  factory _$$ReactionCountImplCopyWith(
          _$ReactionCountImpl value, $Res Function(_$ReactionCountImpl) then) =
      __$$ReactionCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') ReactionType type,
      @JsonKey(name: 'total_count') int totalCount});

  @override
  $ReactionTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$ReactionCountImplCopyWithImpl<$Res>
    extends _$ReactionCountCopyWithImpl<$Res, _$ReactionCountImpl>
    implements _$$ReactionCountImplCopyWith<$Res> {
  __$$ReactionCountImplCopyWithImpl(
      _$ReactionCountImpl _value, $Res Function(_$ReactionCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? totalCount = null,
  }) {
    return _then(_$ReactionCountImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ReactionType,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionCountImpl implements _ReactionCount {
  const _$ReactionCountImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'total_count') required this.totalCount});

  factory _$ReactionCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionCountImplFromJson(json);

  /// Type of the reaction.
  @override
  @JsonKey(name: 'type')
  final ReactionType type;

  /// Number of times the reaction was added.
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;

  @override
  String toString() {
    return 'ReactionCount(type: $type, totalCount: $totalCount)';
  }

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionCountImplCopyWith<_$ReactionCountImpl> get copyWith =>
      __$$ReactionCountImplCopyWithImpl<_$ReactionCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionCountImplToJson(
      this,
    );
  }
}

abstract class _ReactionCount implements ReactionCount {
  const factory _ReactionCount(
          {@JsonKey(name: 'type') required final ReactionType type,
          @JsonKey(name: 'total_count') required final int totalCount}) =
      _$ReactionCountImpl;

  factory _ReactionCount.fromJson(Map<String, dynamic> json) =
      _$ReactionCountImpl.fromJson;

  /// Type of the reaction.
  @override
  @JsonKey(name: 'type')
  ReactionType get type;

  /// Number of times the reaction was added.
  @override
  @JsonKey(name: 'total_count')
  int get totalCount;

  /// Create a copy of ReactionCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionCountImplCopyWith<_$ReactionCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
