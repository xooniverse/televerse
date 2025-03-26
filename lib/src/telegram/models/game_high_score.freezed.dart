// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_high_score.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameHighScore {
  /// Position in high score table for the game
  @JsonKey(name: 'position')
  int get position;

  /// User
  @JsonKey(name: 'user')
  User get user;

  /// Score
  @JsonKey(name: 'score')
  int get score;

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GameHighScoreCopyWith<GameHighScore> get copyWith =>
      _$GameHighScoreCopyWithImpl<GameHighScore>(
          this as GameHighScore, _$identity);

  /// Serializes this GameHighScore to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'GameHighScore(position: $position, user: $user, score: $score)';
  }
}

/// @nodoc
abstract mixin class $GameHighScoreCopyWith<$Res> {
  factory $GameHighScoreCopyWith(
          GameHighScore value, $Res Function(GameHighScore) _then) =
      _$GameHighScoreCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int position,
      @JsonKey(name: 'user') User user,
      @JsonKey(name: 'score') int score});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$GameHighScoreCopyWithImpl<$Res>
    implements $GameHighScoreCopyWith<$Res> {
  _$GameHighScoreCopyWithImpl(this._self, this._then);

  final GameHighScore _self;
  final $Res Function(GameHighScore) _then;

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? user = null,
    Object? score = null,
  }) {
    return _then(_self.copyWith(
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      score: null == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GameHighScore implements GameHighScore {
  const _GameHighScore(
      {@JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'score') required this.score});
  factory _GameHighScore.fromJson(Map<String, dynamic> json) =>
      _$GameHighScoreFromJson(json);

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

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GameHighScoreCopyWith<_GameHighScore> get copyWith =>
      __$GameHighScoreCopyWithImpl<_GameHighScore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GameHighScoreToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'GameHighScore(position: $position, user: $user, score: $score)';
  }
}

/// @nodoc
abstract mixin class _$GameHighScoreCopyWith<$Res>
    implements $GameHighScoreCopyWith<$Res> {
  factory _$GameHighScoreCopyWith(
          _GameHighScore value, $Res Function(_GameHighScore) _then) =
      __$GameHighScoreCopyWithImpl;
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
class __$GameHighScoreCopyWithImpl<$Res>
    implements _$GameHighScoreCopyWith<$Res> {
  __$GameHighScoreCopyWithImpl(this._self, this._then);

  final _GameHighScore _self;
  final $Res Function(_GameHighScore) _then;

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? position = null,
    Object? user = null,
    Object? score = null,
  }) {
    return _then(_GameHighScore(
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      score: null == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of GameHighScore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}
