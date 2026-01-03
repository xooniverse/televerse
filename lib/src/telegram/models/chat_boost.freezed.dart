// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_boost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatBoost {
  /// Unique identifier of the boost
  @JsonKey(name: 'boost_id')
  String get boostId;

  /// Point in time (Unix timestamp) when the chat was boosted
  @JsonKey(name: 'add_date')
  int get addDate;

  /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
  @JsonKey(name: 'expiration_date')
  int get expirationDate;

  /// Source of the added boost
  @JsonKey(name: 'source')
  ChatBoostSource get source;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChatBoostCopyWith<ChatBoost> get copyWith =>
      _$ChatBoostCopyWithImpl<ChatBoost>(this as ChatBoost, _$identity);

  /// Serializes this ChatBoost to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ChatBoost(boostId: $boostId, addDate: $addDate, expirationDate: $expirationDate, source: $source)';
  }
}

/// @nodoc
abstract mixin class $ChatBoostCopyWith<$Res> {
  factory $ChatBoostCopyWith(ChatBoost value, $Res Function(ChatBoost) _then) =
      _$ChatBoostCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'boost_id') String boostId,
    @JsonKey(name: 'add_date') int addDate,
    @JsonKey(name: 'expiration_date') int expirationDate,
    @JsonKey(name: 'source') ChatBoostSource source,
  });

  $ChatBoostSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ChatBoostCopyWithImpl<$Res> implements $ChatBoostCopyWith<$Res> {
  _$ChatBoostCopyWithImpl(this._self, this._then);

  final ChatBoost _self;
  final $Res Function(ChatBoost) _then;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boostId = null,
    Object? addDate = null,
    Object? expirationDate = null,
    Object? source = null,
  }) {
    return _then(
      _self.copyWith(
        boostId: null == boostId
            ? _self.boostId
            : boostId // ignore: cast_nullable_to_non_nullable
                  as String,
        addDate: null == addDate
            ? _self.addDate
            : addDate // ignore: cast_nullable_to_non_nullable
                  as int,
        expirationDate: null == expirationDate
            ? _self.expirationDate
            : expirationDate // ignore: cast_nullable_to_non_nullable
                  as int,
        source: null == source
            ? _self.source
            : source // ignore: cast_nullable_to_non_nullable
                  as ChatBoostSource,
      ),
    );
  }

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<$Res> get source {
    return $ChatBoostSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ChatBoost].
extension ChatBoostPatterns on ChatBoost {
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
    TResult Function(_ChatBoost value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChatBoost() when $default != null:
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
    TResult Function(_ChatBoost value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatBoost():
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
    TResult? Function(_ChatBoost value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChatBoost() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ChatBoost implements ChatBoost {
  const _ChatBoost({
    @JsonKey(name: 'boost_id') required this.boostId,
    @JsonKey(name: 'add_date') required this.addDate,
    @JsonKey(name: 'expiration_date') required this.expirationDate,
    @JsonKey(name: 'source') required this.source,
  });
  factory _ChatBoost.fromJson(Map<String, dynamic> json) =>
      _$ChatBoostFromJson(json);

  /// Unique identifier of the boost
  @override
  @JsonKey(name: 'boost_id')
  final String boostId;

  /// Point in time (Unix timestamp) when the chat was boosted
  @override
  @JsonKey(name: 'add_date')
  final int addDate;

  /// Point in time (Unix timestamp) when the boost will automatically expire, unless the booster's Telegram Premium subscription is prolonged
  @override
  @JsonKey(name: 'expiration_date')
  final int expirationDate;

  /// Source of the added boost
  @override
  @JsonKey(name: 'source')
  final ChatBoostSource source;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChatBoostCopyWith<_ChatBoost> get copyWith =>
      __$ChatBoostCopyWithImpl<_ChatBoost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChatBoostToJson(this);
  }

  @override
  String toString() {
    return 'ChatBoost(boostId: $boostId, addDate: $addDate, expirationDate: $expirationDate, source: $source)';
  }
}

/// @nodoc
abstract mixin class _$ChatBoostCopyWith<$Res>
    implements $ChatBoostCopyWith<$Res> {
  factory _$ChatBoostCopyWith(
    _ChatBoost value,
    $Res Function(_ChatBoost) _then,
  ) = __$ChatBoostCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'boost_id') String boostId,
    @JsonKey(name: 'add_date') int addDate,
    @JsonKey(name: 'expiration_date') int expirationDate,
    @JsonKey(name: 'source') ChatBoostSource source,
  });

  @override
  $ChatBoostSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$ChatBoostCopyWithImpl<$Res> implements _$ChatBoostCopyWith<$Res> {
  __$ChatBoostCopyWithImpl(this._self, this._then);

  final _ChatBoost _self;
  final $Res Function(_ChatBoost) _then;

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? boostId = null,
    Object? addDate = null,
    Object? expirationDate = null,
    Object? source = null,
  }) {
    return _then(
      _ChatBoost(
        boostId: null == boostId
            ? _self.boostId
            : boostId // ignore: cast_nullable_to_non_nullable
                  as String,
        addDate: null == addDate
            ? _self.addDate
            : addDate // ignore: cast_nullable_to_non_nullable
                  as int,
        expirationDate: null == expirationDate
            ? _self.expirationDate
            : expirationDate // ignore: cast_nullable_to_non_nullable
                  as int,
        source: null == source
            ? _self.source
            : source // ignore: cast_nullable_to_non_nullable
                  as ChatBoostSource,
      ),
    );
  }

  /// Create a copy of ChatBoost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatBoostSourceCopyWith<$Res> get source {
    return $ChatBoostSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}
