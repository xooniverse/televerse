// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'giveaway_completed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiveawayCompleted _$GiveawayCompletedFromJson(Map<String, dynamic> json) {
  return _GiveawayCompleted.fromJson(json);
}

/// @nodoc
mixin _$GiveawayCompleted {
  /// Number of winners in the giveaway
  @JsonKey(name: 'winner_count')
  int get winnerCount => throw _privateConstructorUsedError;

  /// Number of undistributed prizes
  @JsonKey(name: 'unclaimed_prize_count')
  int? get unclaimedPrizeCount => throw _privateConstructorUsedError;

  /// Message with the giveaway that was completed, if it wasn't deleted
  @JsonKey(name: 'giveaway_message')
  Message? get giveawayMessage => throw _privateConstructorUsedError;

  /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise,
  /// currently, the giveaway is a Telegram Premium giveaway.
  @JsonKey(name: 'is_star_giveaway')
  bool? get isStarGiveaway => throw _privateConstructorUsedError;

  /// Serializes this GiveawayCompleted to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiveawayCompletedCopyWith<GiveawayCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiveawayCompletedCopyWith<$Res> {
  factory $GiveawayCompletedCopyWith(
          GiveawayCompleted value, $Res Function(GiveawayCompleted) then) =
      _$GiveawayCompletedCopyWithImpl<$Res, GiveawayCompleted>;
  @useResult
  $Res call(
      {@JsonKey(name: 'winner_count') int winnerCount,
      @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,
      @JsonKey(name: 'giveaway_message') Message? giveawayMessage,
      @JsonKey(name: 'is_star_giveaway') bool? isStarGiveaway});
}

/// @nodoc
class _$GiveawayCompletedCopyWithImpl<$Res, $Val extends GiveawayCompleted>
    implements $GiveawayCompletedCopyWith<$Res> {
  _$GiveawayCompletedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnerCount = null,
    Object? unclaimedPrizeCount = freezed,
    Object? giveawayMessage = freezed,
    Object? isStarGiveaway = freezed,
  }) {
    return _then(_value.copyWith(
      winnerCount: null == winnerCount
          ? _value.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
      unclaimedPrizeCount: freezed == unclaimedPrizeCount
          ? _value.unclaimedPrizeCount
          : unclaimedPrizeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      giveawayMessage: freezed == giveawayMessage
          ? _value.giveawayMessage
          : giveawayMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      isStarGiveaway: freezed == isStarGiveaway
          ? _value.isStarGiveaway
          : isStarGiveaway // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiveawayCompletedImplCopyWith<$Res>
    implements $GiveawayCompletedCopyWith<$Res> {
  factory _$$GiveawayCompletedImplCopyWith(_$GiveawayCompletedImpl value,
          $Res Function(_$GiveawayCompletedImpl) then) =
      __$$GiveawayCompletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'winner_count') int winnerCount,
      @JsonKey(name: 'unclaimed_prize_count') int? unclaimedPrizeCount,
      @JsonKey(name: 'giveaway_message') Message? giveawayMessage,
      @JsonKey(name: 'is_star_giveaway') bool? isStarGiveaway});
}

/// @nodoc
class __$$GiveawayCompletedImplCopyWithImpl<$Res>
    extends _$GiveawayCompletedCopyWithImpl<$Res, _$GiveawayCompletedImpl>
    implements _$$GiveawayCompletedImplCopyWith<$Res> {
  __$$GiveawayCompletedImplCopyWithImpl(_$GiveawayCompletedImpl _value,
      $Res Function(_$GiveawayCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winnerCount = null,
    Object? unclaimedPrizeCount = freezed,
    Object? giveawayMessage = freezed,
    Object? isStarGiveaway = freezed,
  }) {
    return _then(_$GiveawayCompletedImpl(
      winnerCount: null == winnerCount
          ? _value.winnerCount
          : winnerCount // ignore: cast_nullable_to_non_nullable
              as int,
      unclaimedPrizeCount: freezed == unclaimedPrizeCount
          ? _value.unclaimedPrizeCount
          : unclaimedPrizeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      giveawayMessage: freezed == giveawayMessage
          ? _value.giveawayMessage
          : giveawayMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      isStarGiveaway: freezed == isStarGiveaway
          ? _value.isStarGiveaway
          : isStarGiveaway // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiveawayCompletedImpl implements _GiveawayCompleted {
  const _$GiveawayCompletedImpl(
      {@JsonKey(name: 'winner_count') required this.winnerCount,
      @JsonKey(name: 'unclaimed_prize_count') this.unclaimedPrizeCount,
      @JsonKey(name: 'giveaway_message') this.giveawayMessage,
      @JsonKey(name: 'is_star_giveaway') this.isStarGiveaway});

  factory _$GiveawayCompletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiveawayCompletedImplFromJson(json);

  /// Number of winners in the giveaway
  @override
  @JsonKey(name: 'winner_count')
  final int winnerCount;

  /// Number of undistributed prizes
  @override
  @JsonKey(name: 'unclaimed_prize_count')
  final int? unclaimedPrizeCount;

  /// Message with the giveaway that was completed, if it wasn't deleted
  @override
  @JsonKey(name: 'giveaway_message')
  final Message? giveawayMessage;

  /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise,
  /// currently, the giveaway is a Telegram Premium giveaway.
  @override
  @JsonKey(name: 'is_star_giveaway')
  final bool? isStarGiveaway;

  @override
  String toString() {
    return 'GiveawayCompleted(winnerCount: $winnerCount, unclaimedPrizeCount: $unclaimedPrizeCount, giveawayMessage: $giveawayMessage, isStarGiveaway: $isStarGiveaway)';
  }

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiveawayCompletedImplCopyWith<_$GiveawayCompletedImpl> get copyWith =>
      __$$GiveawayCompletedImplCopyWithImpl<_$GiveawayCompletedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiveawayCompletedImplToJson(
      this,
    );
  }
}

abstract class _GiveawayCompleted implements GiveawayCompleted {
  const factory _GiveawayCompleted(
      {@JsonKey(name: 'winner_count') required final int winnerCount,
      @JsonKey(name: 'unclaimed_prize_count') final int? unclaimedPrizeCount,
      @JsonKey(name: 'giveaway_message') final Message? giveawayMessage,
      @JsonKey(name: 'is_star_giveaway')
      final bool? isStarGiveaway}) = _$GiveawayCompletedImpl;

  factory _GiveawayCompleted.fromJson(Map<String, dynamic> json) =
      _$GiveawayCompletedImpl.fromJson;

  /// Number of winners in the giveaway
  @override
  @JsonKey(name: 'winner_count')
  int get winnerCount;

  /// Number of undistributed prizes
  @override
  @JsonKey(name: 'unclaimed_prize_count')
  int? get unclaimedPrizeCount;

  /// Message with the giveaway that was completed, if it wasn't deleted
  @override
  @JsonKey(name: 'giveaway_message')
  Message? get giveawayMessage;

  /// Optional. True, if the giveaway is a Telegram Star giveaway. Otherwise,
  /// currently, the giveaway is a Telegram Premium giveaway.
  @override
  @JsonKey(name: 'is_star_giveaway')
  bool? get isStarGiveaway;

  /// Create a copy of GiveawayCompleted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiveawayCompletedImplCopyWith<_$GiveawayCompletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
