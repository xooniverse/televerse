// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chosen_inline_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChosenInlineResult {
  /// The unique identifier for the result that was chosen
  @JsonKey(name: 'result_id')
  String get resultId;

  /// The user that chose the result
  @JsonKey(name: 'from')
  User get from;

  /// Optional. Sender location, only for bots that require user location
  @JsonKey(name: 'location')
  Location? get location;

  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message. Will be also received in
  /// callback queries and can be used to edit the message.
  @JsonKey(name: 'inline_message_id')
  String? get inlineMessageId;

  /// The query that was used to obtain the result
  @JsonKey(name: 'query')
  String get query;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChosenInlineResultCopyWith<ChosenInlineResult> get copyWith =>
      _$ChosenInlineResultCopyWithImpl<ChosenInlineResult>(
        this as ChosenInlineResult,
        _$identity,
      );

  /// Serializes this ChosenInlineResult to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChosenInlineResult(resultId: $resultId, from: $from, location: $location, inlineMessageId: $inlineMessageId, query: $query)';
  }
}

/// @nodoc
abstract mixin class $ChosenInlineResultCopyWith<$Res> {
  factory $ChosenInlineResultCopyWith(
    ChosenInlineResult value,
    $Res Function(ChosenInlineResult) _then,
  ) = _$ChosenInlineResultCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'result_id') String resultId,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,
    @JsonKey(name: 'query') String query,
  });

  $UserCopyWith<$Res> get from;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$ChosenInlineResultCopyWithImpl<$Res>
    implements $ChosenInlineResultCopyWith<$Res> {
  _$ChosenInlineResultCopyWithImpl(this._self, this._then);

  final ChosenInlineResult _self;
  final $Res Function(ChosenInlineResult) _then;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultId = null,
    Object? from = null,
    Object? location = freezed,
    Object? inlineMessageId = freezed,
    Object? query = null,
  }) {
    return _then(
      _self.copyWith(
        resultId: null == resultId
            ? _self.resultId
            : resultId // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        location: freezed == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location?,
        inlineMessageId: freezed == inlineMessageId
            ? _self.inlineMessageId
            : inlineMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: null == query
            ? _self.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ChosenInlineResult
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

/// Adds pattern-matching-related methods to [ChosenInlineResult].
extension ChosenInlineResultPatterns on ChosenInlineResult {
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
    TResult Function(_ChosenInlineResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChosenInlineResult() when $default != null:
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
    TResult Function(_ChosenInlineResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChosenInlineResult():
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
    TResult? Function(_ChosenInlineResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChosenInlineResult() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChosenInlineResult implements ChosenInlineResult {
  const _ChosenInlineResult({
    @JsonKey(name: 'result_id') required this.resultId,
    @JsonKey(name: 'from') required this.from,
    @JsonKey(name: 'location') this.location,
    @JsonKey(name: 'inline_message_id') this.inlineMessageId,
    @JsonKey(name: 'query') required this.query,
  });
  factory _ChosenInlineResult.fromJson(Map<String, dynamic> json) =>
      _$ChosenInlineResultFromJson(json);

  /// The unique identifier for the result that was chosen
  @override
  @JsonKey(name: 'result_id')
  final String resultId;

  /// The user that chose the result
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Optional. Sender location, only for bots that require user location
  @override
  @JsonKey(name: 'location')
  final Location? location;

  /// Optional. Identifier of the sent inline message. Available only if there
  /// is an inline keyboard attached to the message. Will be also received in
  /// callback queries and can be used to edit the message.
  @override
  @JsonKey(name: 'inline_message_id')
  final String? inlineMessageId;

  /// The query that was used to obtain the result
  @override
  @JsonKey(name: 'query')
  final String query;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChosenInlineResultCopyWith<_ChosenInlineResult> get copyWith =>
      __$ChosenInlineResultCopyWithImpl<_ChosenInlineResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChosenInlineResultToJson(this);
  }

  @override
  String toString() {
    return 'ChosenInlineResult(resultId: $resultId, from: $from, location: $location, inlineMessageId: $inlineMessageId, query: $query)';
  }
}

/// @nodoc
abstract mixin class _$ChosenInlineResultCopyWith<$Res>
    implements $ChosenInlineResultCopyWith<$Res> {
  factory _$ChosenInlineResultCopyWith(
    _ChosenInlineResult value,
    $Res Function(_ChosenInlineResult) _then,
  ) = __$ChosenInlineResultCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'result_id') String resultId,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'location') Location? location,
    @JsonKey(name: 'inline_message_id') String? inlineMessageId,
    @JsonKey(name: 'query') String query,
  });

  @override
  $UserCopyWith<$Res> get from;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$ChosenInlineResultCopyWithImpl<$Res>
    implements _$ChosenInlineResultCopyWith<$Res> {
  __$ChosenInlineResultCopyWithImpl(this._self, this._then);

  final _ChosenInlineResult _self;
  final $Res Function(_ChosenInlineResult) _then;

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resultId = null,
    Object? from = null,
    Object? location = freezed,
    Object? inlineMessageId = freezed,
    Object? query = null,
  }) {
    return _then(
      _ChosenInlineResult(
        resultId: null == resultId
            ? _self.resultId
            : resultId // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        location: freezed == location
            ? _self.location
            : location // ignore: cast_nullable_to_non_nullable
                  as Location?,
        inlineMessageId: freezed == inlineMessageId
            ? _self.inlineMessageId
            : inlineMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: null == query
            ? _self.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }

  /// Create a copy of ChosenInlineResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ChosenInlineResult
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
