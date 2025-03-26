// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'callback_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CallbackQuery {
  /// Unique identifier for this query
  @JsonKey(name: 'id')
  String get id;

  /// Sender
  @JsonKey(name: 'from')
  User get from;

  /// Optional. Message sent by the bot with the callback button that
  /// originated the query
  @JsonKey(name: 'message')
  MaybeInaccessibleMessage? get message;

  /// Optional. Identifier of the message sent via the bot in inline mode,
  /// that originated the query.
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId;

  /// Global identifier, uniquely corresponding to the chat to which the
  /// message with the callback button was sent. Useful for high scores in
  /// games.
  @JsonKey(name: 'chat_instance')
  String get chatInstance;

  /// Optional. Data associated with the callback button. Be aware that the
  /// message originated the query can contain no callback buttons with this
  /// data.
  @JsonKey(name: 'data')
  String? get data;

  /// Optional. Short name of a Game to be returned, serves as the unique
  /// identifier for the game
  @JsonKey(name: 'game_short_name')
  String? get gameShortName;

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CallbackQueryCopyWith<CallbackQuery> get copyWith =>
      _$CallbackQueryCopyWithImpl<CallbackQuery>(
          this as CallbackQuery, _$identity);

  /// Serializes this CallbackQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'CallbackQuery(id: $id, from: $from, message: $message, inlineMessageId: $inlineMessageId, chatInstance: $chatInstance, data: $data, gameShortName: $gameShortName)';
  }
}

/// @nodoc
abstract mixin class $CallbackQueryCopyWith<$Res> {
  factory $CallbackQueryCopyWith(
          CallbackQuery value, $Res Function(CallbackQuery) _then) =
      _$CallbackQueryCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'message') MaybeInaccessibleMessage? message,
      @JsonKey(name: 'inline_message_id') String? inlineMessageId,
      @JsonKey(name: 'chat_instance') String chatInstance,
      @JsonKey(name: 'data') String? data,
      @JsonKey(name: 'game_short_name') String? gameShortName});

  $UserCopyWith<$Res> get from;
}

/// @nodoc
class _$CallbackQueryCopyWithImpl<$Res>
    implements $CallbackQueryCopyWith<$Res> {
  _$CallbackQueryCopyWithImpl(this._self, this._then);

  final CallbackQuery _self;
  final $Res Function(CallbackQuery) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as MaybeInaccessibleMessage?,
      inlineMessageId: freezed == inlineMessageId
          ? _self.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatInstance: null == chatInstance
          ? _self.chatInstance
          : chatInstance // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      gameShortName: freezed == gameShortName
          ? _self.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _CallbackQuery implements CallbackQuery {
  const _CallbackQuery(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'from') required this.from,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'inline_message_id') this.inlineMessageId,
      @JsonKey(name: 'chat_instance') required this.chatInstance,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'game_short_name') this.gameShortName});
  factory _CallbackQuery.fromJson(Map<String, dynamic> json) =>
      _$CallbackQueryFromJson(json);

  /// Unique identifier for this query
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Sender
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Optional. Message sent by the bot with the callback button that
  /// originated the query
  @override
  @JsonKey(name: 'message')
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
  @JsonKey(name: 'data')
  final String? data;

  /// Optional. Short name of a Game to be returned, serves as the unique
  /// identifier for the game
  @override
  @JsonKey(name: 'game_short_name')
  final String? gameShortName;

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CallbackQueryCopyWith<_CallbackQuery> get copyWith =>
      __$CallbackQueryCopyWithImpl<_CallbackQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CallbackQueryToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'CallbackQuery(id: $id, from: $from, message: $message, inlineMessageId: $inlineMessageId, chatInstance: $chatInstance, data: $data, gameShortName: $gameShortName)';
  }
}

/// @nodoc
abstract mixin class _$CallbackQueryCopyWith<$Res>
    implements $CallbackQueryCopyWith<$Res> {
  factory _$CallbackQueryCopyWith(
          _CallbackQuery value, $Res Function(_CallbackQuery) _then) =
      __$CallbackQueryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'from') User from,
      @JsonKey(name: 'message') MaybeInaccessibleMessage? message,
      @JsonKey(name: 'inline_message_id') String? inlineMessageId,
      @JsonKey(name: 'chat_instance') String chatInstance,
      @JsonKey(name: 'data') String? data,
      @JsonKey(name: 'game_short_name') String? gameShortName});

  @override
  $UserCopyWith<$Res> get from;
}

/// @nodoc
class __$CallbackQueryCopyWithImpl<$Res>
    implements _$CallbackQueryCopyWith<$Res> {
  __$CallbackQueryCopyWithImpl(this._self, this._then);

  final _CallbackQuery _self;
  final $Res Function(_CallbackQuery) _then;

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? message = freezed,
    Object? inlineMessageId = freezed,
    Object? chatInstance = null,
    Object? data = freezed,
    Object? gameShortName = freezed,
  }) {
    return _then(_CallbackQuery(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as MaybeInaccessibleMessage?,
      inlineMessageId: freezed == inlineMessageId
          ? _self.inlineMessageId
          : inlineMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatInstance: null == chatInstance
          ? _self.chatInstance
          : chatInstance // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      gameShortName: freezed == gameShortName
          ? _self.gameShortName
          : gameShortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CallbackQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }
}
