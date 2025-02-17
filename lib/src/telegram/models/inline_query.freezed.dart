// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InlineQuery _$InlineQueryFromJson(Map<String, dynamic> json) {
  return _InlineQuery.fromJson(json);
}

/// @nodoc
mixin _$InlineQuery {
  /// Unique identifier for this query
  String get id => throw _privateConstructorUsedError;

  /// Sender
  User get from => throw _privateConstructorUsedError;

  /// Text of the query (up to 256 characters)
  String get query => throw _privateConstructorUsedError;

  /// Offset of the results to be returned, can be controlled by the bot
  String get offset => throw _privateConstructorUsedError;

  /// Optional. Type of the chat from which the inline query was sent.
  /// Can be either "sender" for a private chat with the inline query sender,
  /// "private", "group", "supergroup", or "channel". The chat type should be
  /// always known for requests sent from official clients and most third-party
  /// clients, unless the request was sent from a secret chat
  @JsonKey(name: 'chat_type')
  ChatType? get chatType => throw _privateConstructorUsedError;

  /// Optional. Sender location, only for bots that request user location
  Location? get location => throw _privateConstructorUsedError;

  /// Serializes this InlineQuery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InlineQueryCopyWith<InlineQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InlineQueryCopyWith<$Res> {
  factory $InlineQueryCopyWith(
          InlineQuery value, $Res Function(InlineQuery) then) =
      _$InlineQueryCopyWithImpl<$Res, InlineQuery>;
  @useResult
  $Res call(
      {String id,
      User from,
      String query,
      String offset,
      @JsonKey(name: 'chat_type') ChatType? chatType,
      Location? location});

  $UserCopyWith<$Res> get from;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$InlineQueryCopyWithImpl<$Res, $Val extends InlineQuery>
    implements $InlineQueryCopyWith<$Res> {
  _$InlineQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? query = null,
    Object? offset = null,
    Object? chatType = freezed,
    Object? location = freezed,
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
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as String,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as ChatType?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value) as $Val);
    });
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InlineQueryImplCopyWith<$Res>
    implements $InlineQueryCopyWith<$Res> {
  factory _$$InlineQueryImplCopyWith(
          _$InlineQueryImpl value, $Res Function(_$InlineQueryImpl) then) =
      __$$InlineQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User from,
      String query,
      String offset,
      @JsonKey(name: 'chat_type') ChatType? chatType,
      Location? location});

  @override
  $UserCopyWith<$Res> get from;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$InlineQueryImplCopyWithImpl<$Res>
    extends _$InlineQueryCopyWithImpl<$Res, _$InlineQueryImpl>
    implements _$$InlineQueryImplCopyWith<$Res> {
  __$$InlineQueryImplCopyWithImpl(
      _$InlineQueryImpl _value, $Res Function(_$InlineQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? query = null,
    Object? offset = null,
    Object? chatType = freezed,
    Object? location = freezed,
  }) {
    return _then(_$InlineQueryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as User,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as String,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as ChatType?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InlineQueryImpl implements _InlineQuery {
  const _$InlineQueryImpl(
      {required this.id,
      required this.from,
      required this.query,
      required this.offset,
      @JsonKey(name: 'chat_type') this.chatType,
      this.location});

  factory _$InlineQueryImpl.fromJson(Map<String, dynamic> json) =>
      _$$InlineQueryImplFromJson(json);

  /// Unique identifier for this query
  @override
  final String id;

  /// Sender
  @override
  final User from;

  /// Text of the query (up to 256 characters)
  @override
  final String query;

  /// Offset of the results to be returned, can be controlled by the bot
  @override
  final String offset;

  /// Optional. Type of the chat from which the inline query was sent.
  /// Can be either "sender" for a private chat with the inline query sender,
  /// "private", "group", "supergroup", or "channel". The chat type should be
  /// always known for requests sent from official clients and most third-party
  /// clients, unless the request was sent from a secret chat
  @override
  @JsonKey(name: 'chat_type')
  final ChatType? chatType;

  /// Optional. Sender location, only for bots that request user location
  @override
  final Location? location;

  @override
  String toString() {
    return 'InlineQuery(id: $id, from: $from, query: $query, offset: $offset, chatType: $chatType, location: $location)';
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InlineQueryImplCopyWith<_$InlineQueryImpl> get copyWith =>
      __$$InlineQueryImplCopyWithImpl<_$InlineQueryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InlineQueryImplToJson(
      this,
    );
  }
}

abstract class _InlineQuery implements InlineQuery {
  const factory _InlineQuery(
      {required final String id,
      required final User from,
      required final String query,
      required final String offset,
      @JsonKey(name: 'chat_type') final ChatType? chatType,
      final Location? location}) = _$InlineQueryImpl;

  factory _InlineQuery.fromJson(Map<String, dynamic> json) =
      _$InlineQueryImpl.fromJson;

  /// Unique identifier for this query
  @override
  String get id;

  /// Sender
  @override
  User get from;

  /// Text of the query (up to 256 characters)
  @override
  String get query;

  /// Offset of the results to be returned, can be controlled by the bot
  @override
  String get offset;

  /// Optional. Type of the chat from which the inline query was sent.
  /// Can be either "sender" for a private chat with the inline query sender,
  /// "private", "group", "supergroup", or "channel". The chat type should be
  /// always known for requests sent from official clients and most third-party
  /// clients, unless the request was sent from a secret chat
  @override
  @JsonKey(name: 'chat_type')
  ChatType? get chatType;

  /// Optional. Sender location, only for bots that request user location
  @override
  Location? get location;

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InlineQueryImplCopyWith<_$InlineQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
