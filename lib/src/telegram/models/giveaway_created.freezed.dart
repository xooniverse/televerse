// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway_created.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiveawayCreated _$GiveawayCreatedFromJson(Map<String, dynamic> json) {
  return _GiveawayCreated.fromJson(json);
}

/// @nodoc
mixin _$GiveawayCreated {
  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount => throw _privateConstructorUsedError;

  /// Serializes this GiveawayCreated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiveawayCreatedCopyWith<GiveawayCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveawayCreatedCopyWith<$Res> {
  factory $GiveawayCreatedCopyWith(
          GiveawayCreated value, $Res Function(GiveawayCreated) then) =
      _$GiveawayCreatedCopyWithImpl<$Res, GiveawayCreated>;
  @useResult
  $Res call({@JsonKey(name: 'prize_star_count') int? prizeStarCount});
}

/// @nodoc
class _$GiveawayCreatedCopyWithImpl<$Res, $Val extends GiveawayCreated>
    implements $GiveawayCreatedCopyWith<$Res> {
  _$GiveawayCreatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prizeStarCount = freezed,
  }) {
    return _then(_value.copyWith(
      prizeStarCount: freezed == prizeStarCount
          ? _value.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiveawayCreatedImplCopyWith<$Res>
    implements $GiveawayCreatedCopyWith<$Res> {
  factory _$$GiveawayCreatedImplCopyWith(_$GiveawayCreatedImpl value,
          $Res Function(_$GiveawayCreatedImpl) then) =
      __$$GiveawayCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'prize_star_count') int? prizeStarCount});
}

/// @nodoc
class __$$GiveawayCreatedImplCopyWithImpl<$Res>
    extends _$GiveawayCreatedCopyWithImpl<$Res, _$GiveawayCreatedImpl>
    implements _$$GiveawayCreatedImplCopyWith<$Res> {
  __$$GiveawayCreatedImplCopyWithImpl(
      _$GiveawayCreatedImpl _value, $Res Function(_$GiveawayCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prizeStarCount = freezed,
  }) {
    return _then(_$GiveawayCreatedImpl(
      prizeStarCount: freezed == prizeStarCount
          ? _value.prizeStarCount
          : prizeStarCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiveawayCreatedImpl implements _GiveawayCreated {
  const _$GiveawayCreatedImpl(
      {@JsonKey(name: 'prize_star_count') this.prizeStarCount});

  factory _$GiveawayCreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiveawayCreatedImplFromJson(json);

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  final int? prizeStarCount;

  @override
  String toString() {
    return 'GiveawayCreated(prizeStarCount: $prizeStarCount)';
  }

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiveawayCreatedImplCopyWith<_$GiveawayCreatedImpl> get copyWith =>
      __$$GiveawayCreatedImplCopyWithImpl<_$GiveawayCreatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiveawayCreatedImplToJson(
      this,
    );
  }
}

abstract class _GiveawayCreated implements GiveawayCreated {
  const factory _GiveawayCreated(
          {@JsonKey(name: 'prize_star_count') final int? prizeStarCount}) =
      _$GiveawayCreatedImpl;

  factory _GiveawayCreated.fromJson(Map<String, dynamic> json) =
      _$GiveawayCreatedImpl.fromJson;

  /// Optional. The number of Telegram Stars to be split between giveaway
  /// winners; for Telegram Star giveaways only
  @override
  @JsonKey(name: 'prize_star_count')
  int? get prizeStarCount;

  /// Create a copy of GiveawayCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiveawayCreatedImplCopyWith<_$GiveawayCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
