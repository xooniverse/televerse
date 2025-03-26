// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQueryResultGame {
  /// Type of the result, always [InlineQueryResultType.game]
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id;

  /// Short name of the game
  @JsonKey(name: 'game_short_name')
  String get gameShortName;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryResultGameCopyWith<InlineQueryResultGame> get copyWith =>
      _$InlineQueryResultGameCopyWithImpl<InlineQueryResultGame>(
          this as InlineQueryResultGame, _$identity);

  /// Serializes this InlineQueryResultGame to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQueryResultGame(type: $type, id: $id, gameShortName: $gameShortName, replyMarkup: $replyMarkup)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryResultGameCopyWith<$Res> {
  factory $InlineQueryResultGameCopyWith(InlineQueryResultGame value,
          $Res Function(InlineQueryResultGame) _then) =
      _$InlineQueryResultGameCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'game_short_name') String gameShortName,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup});
}

/// @nodoc
class _$InlineQueryResultGameCopyWithImpl<$Res>
    implements $InlineQueryResultGameCopyWith<$Res> {
  _$InlineQueryResultGameCopyWithImpl(this._self, this._then);

  final InlineQueryResultGame _self;
  final $Res Function(InlineQueryResultGame) _then;

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? gameShortName = null,
    Object? replyMarkup = freezed,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameShortName: null == gameShortName
          ? _self.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQueryResultGame implements InlineQueryResultGame {
  const _InlineQueryResultGame(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.game,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'game_short_name') required this.gameShortName,
      @JsonKey(name: 'reply_markup') this.replyMarkup});
  factory _InlineQueryResultGame.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultGameFromJson(json);

  /// Type of the result, always [InlineQueryResultType.game]
  @override
  @JsonKey(name: 'type')
  final InlineQueryResultType type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Short name of the game
  @override
  @JsonKey(name: 'game_short_name')
  final String gameShortName;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  final InlineKeyboardMarkup? replyMarkup;

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryResultGameCopyWith<_InlineQueryResultGame> get copyWith =>
      __$InlineQueryResultGameCopyWithImpl<_InlineQueryResultGame>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryResultGameToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'InlineQueryResultGame(type: $type, id: $id, gameShortName: $gameShortName, replyMarkup: $replyMarkup)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryResultGameCopyWith<$Res>
    implements $InlineQueryResultGameCopyWith<$Res> {
  factory _$InlineQueryResultGameCopyWith(_InlineQueryResultGame value,
          $Res Function(_InlineQueryResultGame) _then) =
      __$InlineQueryResultGameCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'game_short_name') String gameShortName,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup});
}

/// @nodoc
class __$InlineQueryResultGameCopyWithImpl<$Res>
    implements _$InlineQueryResultGameCopyWith<$Res> {
  __$InlineQueryResultGameCopyWithImpl(this._self, this._then);

  final _InlineQueryResultGame _self;
  final $Res Function(_InlineQueryResultGame) _then;

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? gameShortName = null,
    Object? replyMarkup = freezed,
  }) {
    return _then(_InlineQueryResultGame(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameShortName: null == gameShortName
          ? _self.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _self.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
    ));
  }
}
