// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'callback_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CallbackQuery _$CallbackQueryFromJson(Map<String, dynamic> json) {
  return _CallbackQuery.fromJson(json);
}

/// @nodoc
mixin _$CallbackQuery {
  /// Unique identifier for this query
  String get id => throw _privateConstructorUsedError;

  /// Sender
  User get from => throw _privateConstructorUsedError;

  /// Optional. Message sent by the bot with the callback button that
  /// originated the query
  MaybeInaccessibleMessage? get message => throw _privateConstructorUsedError;

  /// Optional. Identifier of the message sent via the bot in inline mode,
  /// that originated the query.
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId => throw _privateConstructorUsedError;

  /// Global identifier, uniquely corresponding to the chat to which the
  /// message with the callback button was sent. Useful for high scores in
  /// games.
  @JsonKey(name: 'chat_instance')
  String get chatInstance => throw _privateConstructorUsedError;

  /// Optional. Data associated with the callback button. Be aware that the
  /// message originated the query can contain no callback buttons with this
  /// data.
  String? get data => throw _privateConstructorUsedError;

  /// Optional. Short name of a Game to be returned, serves as the unique
  /// identifier for the game
  @JsonKey(name: 'game_short_name')
  String? get gameShortName => throw _privateConstructorUsedError;

  /// Serializes this CallbackQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallbackQueryCopyWith<CallbackQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallbackQueryCopyWith<$Res> {
  factory $CallbackQueryCopyWith(
          CallbackQuery value, $Res Function(CallbackQuery) then) =
      _$CallbackQueryCopyWithImpl<$Res, CallbackQuery>;
  @useResult
  $Res call(
      {String id,
      User from,
      MaybeInaccessibleMessage? message,
      @JsonKey(name: 'inline_message_id') String? inlineMessageId,
      @JsonKey(name: 'chat_instance') String chatInstance,
      String? data,
      @JsonKey(name: 'game_short_name') String? gameShortName});

  $UserCopyWith<$Res> get from;
}

/// @nodoc
class _$CallbackQueryCopyWithImpl<$Res, $Val extends CallbackQuery>
    implements $CallbackQueryCopyWith<$Res> {
  _$CallbackQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? message = freezed,
    Object? inlineMessageId = freezed,
    Object? chatInstance = null,
    Object? data = freezed,
    Object? gameShortName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MaybeInaccessibleMessage?,
      inlineMessageId: freezed == inlineMessageId
          ? _value.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatInstance: null == chatInstance
          ? _value.chatInstance
          : chatInstance // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      gameShortName: freezed == gameShortName
          ? _value.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CallbackQueryImplCopyWith<$Res>
    implements $CallbackQueryCopyWith<$Res> {
  factory _$$CallbackQueryImplCopyWith(
          _$CallbackQueryImpl value, $Res Function(_$CallbackQueryImpl) then) =
      __$$CallbackQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User from,
      MaybeInaccessibleMessage? message,
      @JsonKey(name: 'inline_message_id') String? inlineMessageId,
      @JsonKey(name: 'chat_instance') String chatInstance,
      String? data,
      @JsonKey(name: 'game_short_name') String? gameShortName});

  @override
  $UserCopyWith<$Res> get from;
}

/// @nodoc
class __$$CallbackQueryImplCopyWithImpl<$Res>
    extends _$CallbackQueryCopyWithImpl<$Res, _$CallbackQueryImpl>
    implements _$$CallbackQueryImplCopyWith<$Res> {
  __$$CallbackQueryImplCopyWithImpl(
      _$CallbackQueryImpl _value, $Res Function(_$CallbackQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? message = freezed,
    Object? inlineMessageId = freezed,
    Object? chatInstance = null,
    Object? data = freezed,
    Object? gameShortName = freezed,
  }) {
    return _then(_$CallbackQueryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MaybeInaccessibleMessage?,
      inlineMessageId: freezed == inlineMessageId
          ? _value.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatInstance: null == chatInstance
          ? _value.chatInstance
          : chatInstance // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      gameShortName: freezed == gameShortName
          ? _value.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CallbackQueryImpl implements _CallbackQuery {
  const _$CallbackQueryImpl(
      {required this.id,
      required this.from,
      this.message,
      @JsonKey(name: 'inline_message_id') this.inlineMessageId,
      @JsonKey(name: 'chat_instance') required this.chatInstance,
      this.data,
      @JsonKey(name: 'game_short_name') this.gameShortName});

  factory _$CallbackQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CallbackQueryImplFromJson(json);

  /// Unique identifier for this query
  @override
  final String id;

  /// Sender
  @override
  final User from;

  /// Optional. Message sent by the bot with the callback button that
  /// originated the query
  @override
  final MaybeInaccessibleMessage? message;

  /// Optional. Identifier of the message sent via the bot in inline mode,
  /// that originated the query.
  @override
  @JsonKey(name: 'inline_message_id')
  final String? inlineMessageId;

  /// Global identifier, uniquely corresponding to the chat to which the
  /// message with the callback button was sent. Useful for high scores in
  /// games.
  @override
  @JsonKey(name: 'chat_instance')
  final String chatInstance;

  /// Optional. Data associated with the callback button. Be aware that the
  /// message originated the query can contain no callback buttons with this
  /// data.
  @override
  final String? data;

  /// Optional. Short name of a Game to be returned, serves as the unique
  /// identifier for the game
  @override
  @JsonKey(name: 'game_short_name')
  final String? gameShortName;

  @override
  String toString() {
    return 'CallbackQuery(id: $id, from: $from, message: $message, inlineMessageId: $inlineMessageId, chatInstance: $chatInstance, data: $data, gameShortName: $gameShortName)';
  }

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallbackQueryImplCopyWith<_$CallbackQueryImpl> get copyWith =>
      __$$CallbackQueryImplCopyWithImpl<_$CallbackQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CallbackQueryImplToJson(
      this,
    );
  }
}

abstract class _CallbackQuery implements CallbackQuery {
  const factory _CallbackQuery(
          {required final String id,
          required final User from,
          final MaybeInaccessibleMessage? message,
          @JsonKey(name: 'inline_message_id') final String? inlineMessageId,
          @JsonKey(name: 'chat_instance') required final String chatInstance,
          final String? data,
          @JsonKey(name: 'game_short_name') final String? gameShortName}) =
      _$CallbackQueryImpl;

  factory _CallbackQuery.fromJson(Map<String, dynamic> json) =
      _$CallbackQueryImpl.fromJson;

  /// Unique identifier for this query
  @override
  String get id;

  /// Sender
  @override
  User get from;

  /// Optional. Message sent by the bot with the callback button that
  /// originated the query
  @override
  MaybeInaccessibleMessage? get message;

  /// Optional. Identifier of the message sent via the bot in inline mode,
  /// that originated the query.
  @override
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId;

  /// Global identifier, uniquely corresponding to the chat to which the
  /// message with the callback button was sent. Useful for high scores in
  /// games.
  @override
  @JsonKey(name: 'chat_instance')
  String get chatInstance;

  /// Optional. Data associated with the callback button. Be aware that the
  /// message originated the query can contain no callback buttons with this
  /// data.
  @override
  String? get data;

  /// Optional. Short name of a Game to be returned, serves as the unique
  /// identifier for the game
  @override
  @JsonKey(name: 'game_short_name')
  String? get gameShortName;

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallbackQueryImplCopyWith<_$CallbackQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
