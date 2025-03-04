// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query_result_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQueryResultGame _$InlineQueryResultGameFromJson(
    Map<String, dynamic> json) {
  return _InlineQueryResultGame.fromJson(json);
}

/// @nodoc
mixin _$InlineQueryResultGame {
  /// Type of the result, always [InlineQueryResultType.game]
  @JsonKey(name: 'type')
  InlineQueryResultType get type => throw _privateConstructorUsedError;

  /// Unique identifier for this result, 1-64 Bytes
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Short name of the game
  @JsonKey(name: 'game_short_name')
  String get gameShortName => throw _privateConstructorUsedError;

  /// Optional. Inline keyboard attached to the message
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup => throw _privateConstructorUsedError;

  /// Serializes this InlineQueryResultGame to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryResultGameCopyWith<InlineQueryResultGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryResultGameCopyWith<$Res> {
  factory $InlineQueryResultGameCopyWith(InlineQueryResultGame value,
          $Res Function(InlineQueryResultGame) then) =
      _$InlineQueryResultGameCopyWithImpl<$Res, InlineQueryResultGame>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'game_short_name') String gameShortName,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup});
}

/// @nodoc
class _$InlineQueryResultGameCopyWithImpl<$Res,
        $Val extends InlineQueryResultGame>
    implements $InlineQueryResultGameCopyWith<$Res> {
  _$InlineQueryResultGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameShortName: null == gameShortName
          ? _value.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InlineQueryResultGameImplCopyWith<$Res>
    implements $InlineQueryResultGameCopyWith<$Res> {
  factory _$$InlineQueryResultGameImplCopyWith(
          _$InlineQueryResultGameImpl value,
          $Res Function(_$InlineQueryResultGameImpl) then) =
      __$$InlineQueryResultGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') InlineQueryResultType type,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'game_short_name') String gameShortName,
      @JsonKey(name: 'reply_markup') InlineKeyboardMarkup? replyMarkup});
}

/// @nodoc
class __$$InlineQueryResultGameImplCopyWithImpl<$Res>
    extends _$InlineQueryResultGameCopyWithImpl<$Res,
        _$InlineQueryResultGameImpl>
    implements _$$InlineQueryResultGameImplCopyWith<$Res> {
  __$$InlineQueryResultGameImplCopyWithImpl(_$InlineQueryResultGameImpl _value,
      $Res Function(_$InlineQueryResultGameImpl) _then)
      : super(_value, _then);

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
    return _then(_$InlineQueryResultGameImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InlineQueryResultType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameShortName: null == gameShortName
          ? _value.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String,
      replyMarkup: freezed == replyMarkup
          ? _value.replyMarkup
          : replyMarkup // ignore: cast_nullable_to_non_nullable
              as InlineKeyboardMarkup?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryResultGameImpl implements _InlineQueryResultGame {
  const _$InlineQueryResultGameImpl(
      {@JsonKey(name: 'type') this.type = InlineQueryResultType.game,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'game_short_name') required this.gameShortName,
      @JsonKey(name: 'reply_markup') this.replyMarkup});

  factory _$InlineQueryResultGameImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryResultGameImplFromJson(json);

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

  @override
  String toString() {
    return 'InlineQueryResultGame(type: $type, id: $id, gameShortName: $gameShortName, replyMarkup: $replyMarkup)';
  }

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryResultGameImplCopyWith<_$InlineQueryResultGameImpl>
      get copyWith => __$$InlineQueryResultGameImplCopyWithImpl<
          _$InlineQueryResultGameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryResultGameImplToJson(
      this,
    );
  }
}

abstract class _InlineQueryResultGame implements InlineQueryResultGame {
  const factory _InlineQueryResultGame(
      {@JsonKey(name: 'type') final InlineQueryResultType type,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'game_short_name') required final String gameShortName,
      @JsonKey(name: 'reply_markup')
      final InlineKeyboardMarkup? replyMarkup}) = _$InlineQueryResultGameImpl;

  factory _InlineQueryResultGame.fromJson(Map<String, dynamic> json) =
      _$InlineQueryResultGameImpl.fromJson;

  /// Type of the result, always [InlineQueryResultType.game]
  @override
  @JsonKey(name: 'type')
  InlineQueryResultType get type;

  /// Unique identifier for this result, 1-64 Bytes
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Short name of the game
  @override
  @JsonKey(name: 'game_short_name')
  String get gameShortName;

  /// Optional. Inline keyboard attached to the message
  @override
  @JsonKey(name: 'reply_markup')
  InlineKeyboardMarkup? get replyMarkup;

  /// Create a copy of InlineQueryResultGame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryResultGameImplCopyWith<_$InlineQueryResultGameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
