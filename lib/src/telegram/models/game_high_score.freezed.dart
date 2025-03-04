// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_high_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameHighScore _$GameHighScoreFromJson(Map<String, dynamic> json) {
  return _GameHighScore.fromJson(json);
}

/// @nodoc
mixin _$GameHighScore {
  /// Position in high score table for the game
  @JsonKey(name: 'position')
  int get position => throw _privateConstructorUsedError;

  /// User
  @JsonKey(name: 'user')
  User get user => throw _privateConstructorUsedError;

  /// Score
  @JsonKey(name: 'score')
  int get score => throw _privateConstructorUsedError;

  /// Serializes this GameHighScore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameHighScoreCopyWith<GameHighScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHighScoreCopyWith<$Res> {
  factory $GameHighScoreCopyWith(
          GameHighScore value, $Res Function(GameHighScore) then) =
      _$GameHighScoreCopyWithImpl<$Res, GameHighScore>;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int position,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'score') int score});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$GameHighScoreCopyWithImpl<$Res, $Val extends GameHighScore>
    implements $GameHighScoreCopyWith<$Res> {
  _$GameHighScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? user = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameHighScoreImplCopyWith<$Res>
    implements $GameHighScoreCopyWith<$Res> {
  factory _$$GameHighScoreImplCopyWith(
          _$GameHighScoreImpl value, $Res Function(_$GameHighScoreImpl) then) =
      __$$GameHighScoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int position,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'score') int score});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$GameHighScoreImplCopyWithImpl<$Res>
    extends _$GameHighScoreCopyWithImpl<$Res, _$GameHighScoreImpl>
    implements _$$GameHighScoreImplCopyWith<$Res> {
  __$$GameHighScoreImplCopyWithImpl(
      _$GameHighScoreImpl _value, $Res Function(_$GameHighScoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? user = null,
    Object? score = null,
  }) {
    return _then(_$GameHighScoreImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameHighScoreImpl implements _GameHighScore {
  const _$GameHighScoreImpl(
      {@JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'score') required this.score});

  factory _$GameHighScoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameHighScoreImplFromJson(json);

  /// Position in high score table for the game
  @override
  @JsonKey(name: 'position')
  final int position;

  /// User
  @override
  @JsonKey(name: 'user')
  final User user;

  /// Score
  @override
  @JsonKey(name: 'score')
  final int score;

  @override
  String toString() {
    return 'GameHighScore(position: $position, user: $user, score: $score)';
  }

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameHighScoreImplCopyWith<_$GameHighScoreImpl> get copyWith =>
      __$$GameHighScoreImplCopyWithImpl<_$GameHighScoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameHighScoreImplToJson(
      this,
    );
  }
}

abstract class _GameHighScore implements GameHighScore {
  const factory _GameHighScore(
      {@JsonKey(name: 'position') required final int position,
      @JsonKey(name: 'user') required final User user,
      @JsonKey(name: 'score') required final int score}) = _$GameHighScoreImpl;

  factory _GameHighScore.fromJson(Map<String, dynamic> json) =
      _$GameHighScoreImpl.fromJson;

  /// Position in high score table for the game
  @override
  @JsonKey(name: 'position')
  int get position;

  /// User
  @override
  @JsonKey(name: 'user')
  User get user;

  /// Score
  @override
  @JsonKey(name: 'score')
  int get score;

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameHighScoreImplCopyWith<_$GameHighScoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
