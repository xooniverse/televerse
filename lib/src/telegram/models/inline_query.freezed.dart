// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inline_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InlineQuery {
  /// Unique identifier for this query
  @JsonKey(name: 'id')
  String get id;

  /// Sender
  @JsonKey(name: 'from')
  User get from;

  /// Text of the query (up to 256 characters)
  @JsonKey(name: 'query')
  String get query;

  /// Offset of the results to be returned, can be controlled by the bot
  @JsonKey(name: 'offset')
  String get offset;

  /// Optional. Type of the chat from which the inline query was sent.
  /// Can be either "sender" for a private chat with the inline query sender,
  /// "private", "group", "supergroup", or "channel". The chat type should be
  /// always known for requests sent from official clients and most third-party
  /// clients, unless the request was sent from a secret chat
  @JsonKey(name: 'chat_type')
  ChatType? get chatType;

  /// Optional. Sender location, only for bots that request user location
  Location? get location;

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InlineQueryCopyWith<InlineQuery> get copyWith =>
      _$InlineQueryCopyWithImpl<InlineQuery>(this as InlineQuery, _$identity);

  /// Serializes this InlineQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'InlineQuery(id: $id, from: $from, query: $query, offset: $offset, chatType: $chatType, location: $location)';
  }
}

/// @nodoc
abstract mixin class $InlineQueryCopyWith<$Res> {
  factory $InlineQueryCopyWith(
    InlineQuery value,
    $Res Function(InlineQuery) _then,
  ) = _$InlineQueryCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'query') String query,
    @JsonKey(name: 'offset') String offset,
    @JsonKey(name: 'chat_type') ChatType? chatType,
    Location? location,
  });

  $UserCopyWith<$Res> get from;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$InlineQueryCopyWithImpl<$Res> implements $InlineQueryCopyWith<$Res> {
  _$InlineQueryCopyWithImpl(this._self, this._then);

  final InlineQuery _self;
  final $Res Function(InlineQuery) _then;

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
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        query: null == query
            ? _self.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        offset: null == offset
            ? _self.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as String,
        chatType: freezed == chatType
            ? _self.chatType
            : chatType // ignore: cast_nullable_to_non_nullable
                  as ChatType?,
        location: freezed == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location?,
      ),
    );
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InlineQuery].
extension InlineQueryPatterns on InlineQuery {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_InlineQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InlineQuery() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_InlineQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQuery():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_InlineQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InlineQuery() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InlineQuery implements InlineQuery {
  const _InlineQuery({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'from') required this.from,
    @JsonKey(name: 'query') required this.query,
    @JsonKey(name: 'offset') required this.offset,
    @JsonKey(name: 'chat_type') this.chatType,
    this.location,
  });
  factory _InlineQuery.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryFromJson(json);

  /// Unique identifier for this query
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Sender
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Text of the query (up to 256 characters)
  @override
  @JsonKey(name: 'query')
  final String query;

  /// Offset of the results to be returned, can be controlled by the bot
  @override
  @JsonKey(name: 'offset')
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

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InlineQueryCopyWith<_InlineQuery> get copyWith =>
      __$InlineQueryCopyWithImpl<_InlineQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InlineQueryToJson(this);
  }

  @override
  String toString() {
    return 'InlineQuery(id: $id, from: $from, query: $query, offset: $offset, chatType: $chatType, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$InlineQueryCopyWith<$Res>
    implements $InlineQueryCopyWith<$Res> {
  factory _$InlineQueryCopyWith(
    _InlineQuery value,
    $Res Function(_InlineQuery) _then,
  ) = __$InlineQueryCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'query') String query,
    @JsonKey(name: 'offset') String offset,
    @JsonKey(name: 'chat_type') ChatType? chatType,
    Location? location,
  });

  @override
  $UserCopyWith<$Res> get from;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$InlineQueryCopyWithImpl<$Res> implements _$InlineQueryCopyWith<$Res> {
  __$InlineQueryCopyWithImpl(this._self, this._then);

  final _InlineQuery _self;
  final $Res Function(_InlineQuery) _then;

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? query = null,
    Object? offset = null,
    Object? chatType = freezed,
    Object? location = freezed,
  }) {
    return _then(
      _InlineQuery(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        query: null == query
            ? _self.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        offset: null == offset
            ? _self.offset
            : offset // ignore: cast_nullable_to_non_nullable
                  as String,
        chatType: freezed == chatType
            ? _self.chatType
            : chatType // ignore: cast_nullable_to_non_nullable
                  as ChatType?,
        location: freezed == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location?,
      ),
    );
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of InlineQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_self.location!, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}
