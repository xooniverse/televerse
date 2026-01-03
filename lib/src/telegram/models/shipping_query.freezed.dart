// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShippingQuery {
  /// Unique query identifier
  @JsonKey(name: 'id')
  String get id;

  /// User who sent the query
  @JsonKey(name: 'from')
  User get from;

  /// Bot specified invoice payload
  @JsonKey(name: 'invoice_payload')
  String get invoicePayload;

  /// User specified shipping address
  @JsonKey(name: 'shipping_address')
  ShippingAddress get shippingAddress;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShippingQueryCopyWith<ShippingQuery> get copyWith =>
      _$ShippingQueryCopyWithImpl<ShippingQuery>(
        this as ShippingQuery,
        _$identity,
      );

  /// Serializes this ShippingQuery to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'ShippingQuery(id: $id, from: $from, invoicePayload: $invoicePayload, shippingAddress: $shippingAddress)';
  }
}

/// @nodoc
abstract mixin class $ShippingQueryCopyWith<$Res> {
  factory $ShippingQueryCopyWith(
    ShippingQuery value,
    $Res Function(ShippingQuery) _then,
  ) = _$ShippingQueryCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'invoice_payload') String invoicePayload,
    @JsonKey(name: 'shipping_address') ShippingAddress shippingAddress,
  });

  $UserCopyWith<$Res> get from;
  $ShippingAddressCopyWith<$Res> get shippingAddress;
}

/// @nodoc
class _$ShippingQueryCopyWithImpl<$Res>
    implements $ShippingQueryCopyWith<$Res> {
  _$ShippingQueryCopyWithImpl(this._self, this._then);

  final ShippingQuery _self;
  final $Res Function(ShippingQuery) _then;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? invoicePayload = null,
    Object? shippingAddress = null,
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
        invoicePayload: null == invoicePayload
            ? _self.invoicePayload
            : invoicePayload // ignore: cast_nullable_to_non_nullable
                  as String,
        shippingAddress: null == shippingAddress
            ? _self.shippingAddress
            : shippingAddress // ignore: cast_nullable_to_non_nullable
                  as ShippingAddress,
      ),
    );
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res> get shippingAddress {
    return $ShippingAddressCopyWith<$Res>(_self.shippingAddress, (value) {
      return _then(_self.copyWith(shippingAddress: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ShippingQuery].
extension ShippingQueryPatterns on ShippingQuery {
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
    TResult Function(_ShippingQuery value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShippingQuery() when $default != null:
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
    TResult Function(_ShippingQuery value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShippingQuery():
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
    TResult? Function(_ShippingQuery value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShippingQuery() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ShippingQuery implements ShippingQuery {
  const _ShippingQuery({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'from') required this.from,
    @JsonKey(name: 'invoice_payload') required this.invoicePayload,
    @JsonKey(name: 'shipping_address') required this.shippingAddress,
  });
  factory _ShippingQuery.fromJson(Map<String, dynamic> json) =>
      _$ShippingQueryFromJson(json);

  /// Unique query identifier
  @override
  @JsonKey(name: 'id')
  final String id;

  /// User who sent the query
  @override
  @JsonKey(name: 'from')
  final User from;

  /// Bot specified invoice payload
  @override
  @JsonKey(name: 'invoice_payload')
  final String invoicePayload;

  /// User specified shipping address
  @override
  @JsonKey(name: 'shipping_address')
  final ShippingAddress shippingAddress;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShippingQueryCopyWith<_ShippingQuery> get copyWith =>
      __$ShippingQueryCopyWithImpl<_ShippingQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShippingQueryToJson(this);
  }

  @override
  String toString() {
    return 'ShippingQuery(id: $id, from: $from, invoicePayload: $invoicePayload, shippingAddress: $shippingAddress)';
  }
}

/// @nodoc
abstract mixin class _$ShippingQueryCopyWith<$Res>
    implements $ShippingQueryCopyWith<$Res> {
  factory _$ShippingQueryCopyWith(
    _ShippingQuery value,
    $Res Function(_ShippingQuery) _then,
  ) = __$ShippingQueryCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'from') User from,
    @JsonKey(name: 'invoice_payload') String invoicePayload,
    @JsonKey(name: 'shipping_address') ShippingAddress shippingAddress,
  });

  @override
  $UserCopyWith<$Res> get from;
  @override
  $ShippingAddressCopyWith<$Res> get shippingAddress;
}

/// @nodoc
class __$ShippingQueryCopyWithImpl<$Res>
    implements _$ShippingQueryCopyWith<$Res> {
  __$ShippingQueryCopyWithImpl(this._self, this._then);

  final _ShippingQuery _self;
  final $Res Function(_ShippingQuery) _then;

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? from = null,
    Object? invoicePayload = null,
    Object? shippingAddress = null,
  }) {
    return _then(
      _ShippingQuery(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        from: null == from
            ? _self.from
            : from // ignore: cast_nullable_to_non_nullable
                  as User,
        invoicePayload: null == invoicePayload
            ? _self.invoicePayload
            : invoicePayload // ignore: cast_nullable_to_non_nullable
                  as String,
        shippingAddress: null == shippingAddress
            ? _self.shippingAddress
            : shippingAddress // ignore: cast_nullable_to_non_nullable
                  as ShippingAddress,
      ),
    );
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get from {
    return $UserCopyWith<$Res>(_self.from, (value) {
      return _then(_self.copyWith(from: value));
    });
  }

  /// Create a copy of ShippingQuery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res> get shippingAddress {
    return $ShippingAddressCopyWith<$Res>(_self.shippingAddress, (value) {
      return _then(_self.copyWith(shippingAddress: value));
    });
  }
}
