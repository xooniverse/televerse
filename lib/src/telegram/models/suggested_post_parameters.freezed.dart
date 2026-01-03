// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggested_post_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SuggestedPostParameters {
  /// Optional. Proposed price for the post. If the field is omitted,
  /// then the post is unpaid.
  ///
  /// The price is specified in Telegram Stars and represents the cost
  /// that users must pay to access or interact with the suggested post.
  @JsonKey(name: 'price')
  SuggestedPostPrice? get price;

  /// Optional. Proposed send date of the post. If specified, then the date
  /// must be between 300 second and 2678400 seconds (30 days) in the future.
  /// If the field is omitted, then the post can be published at any time
  /// within 30 days at the sole discretion of the user who approves it.
  ///
  /// The value is a Unix timestamp representing when the post should be sent.
  @JsonKey(name: 'send_date')
  int? get sendDate;

  /// Create a copy of SuggestedPostParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuggestedPostParametersCopyWith<SuggestedPostParameters> get copyWith =>
      _$SuggestedPostParametersCopyWithImpl<SuggestedPostParameters>(
        this as SuggestedPostParameters,
        _$identity,
      );

  /// Serializes this SuggestedPostParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'SuggestedPostParameters(price: $price, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class $SuggestedPostParametersCopyWith<$Res> {
  factory $SuggestedPostParametersCopyWith(
    SuggestedPostParameters value,
    $Res Function(SuggestedPostParameters) _then,
  ) = _$SuggestedPostParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'price') SuggestedPostPrice? price,
    @JsonKey(name: 'send_date') int? sendDate,
  });

  $SuggestedPostPriceCopyWith<$Res>? get price;
}

/// @nodoc
class _$SuggestedPostParametersCopyWithImpl<$Res>
    implements $SuggestedPostParametersCopyWith<$Res> {
  _$SuggestedPostParametersCopyWithImpl(this._self, this._then);

  final SuggestedPostParameters _self;
  final $Res Function(SuggestedPostParameters) _then;

  /// Create a copy of SuggestedPostParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? price = freezed, Object? sendDate = freezed}) {
    return _then(
      _self.copyWith(
        price: freezed == price
            ? _self.price
            : price // ignore: cast_nullable_to_non_nullable
                  as SuggestedPostPrice?,
        sendDate: freezed == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of SuggestedPostParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res>? get price {
    if (_self.price == null) {
      return null;
    }

    return $SuggestedPostPriceCopyWith<$Res>(_self.price!, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SuggestedPostParameters].
extension SuggestedPostParametersPatterns on SuggestedPostParameters {
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
    TResult Function(_SuggestedPostParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostParameters() when $default != null:
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
    TResult Function(_SuggestedPostParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostParameters():
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
    TResult? Function(_SuggestedPostParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SuggestedPostParameters() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SuggestedPostParameters implements SuggestedPostParameters {
  const _SuggestedPostParameters({
    @JsonKey(name: 'price') this.price,
    @JsonKey(name: 'send_date') this.sendDate,
  });
  factory _SuggestedPostParameters.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostParametersFromJson(json);

  /// Optional. Proposed price for the post. If the field is omitted,
  /// then the post is unpaid.
  ///
  /// The price is specified in Telegram Stars and represents the cost
  /// that users must pay to access or interact with the suggested post.
  @override
  @JsonKey(name: 'price')
  final SuggestedPostPrice? price;

  /// Optional. Proposed send date of the post. If specified, then the date
  /// must be between 300 second and 2678400 seconds (30 days) in the future.
  /// If the field is omitted, then the post can be published at any time
  /// within 30 days at the sole discretion of the user who approves it.
  ///
  /// The value is a Unix timestamp representing when the post should be sent.
  @override
  @JsonKey(name: 'send_date')
  final int? sendDate;

  /// Create a copy of SuggestedPostParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuggestedPostParametersCopyWith<_SuggestedPostParameters> get copyWith =>
      __$SuggestedPostParametersCopyWithImpl<_SuggestedPostParameters>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$SuggestedPostParametersToJson(this);
  }

  @override
  String toString() {
    return 'SuggestedPostParameters(price: $price, sendDate: $sendDate)';
  }
}

/// @nodoc
abstract mixin class _$SuggestedPostParametersCopyWith<$Res>
    implements $SuggestedPostParametersCopyWith<$Res> {
  factory _$SuggestedPostParametersCopyWith(
    _SuggestedPostParameters value,
    $Res Function(_SuggestedPostParameters) _then,
  ) = __$SuggestedPostParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'price') SuggestedPostPrice? price,
    @JsonKey(name: 'send_date') int? sendDate,
  });

  @override
  $SuggestedPostPriceCopyWith<$Res>? get price;
}

/// @nodoc
class __$SuggestedPostParametersCopyWithImpl<$Res>
    implements _$SuggestedPostParametersCopyWith<$Res> {
  __$SuggestedPostParametersCopyWithImpl(this._self, this._then);

  final _SuggestedPostParameters _self;
  final $Res Function(_SuggestedPostParameters) _then;

  /// Create a copy of SuggestedPostParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? price = freezed, Object? sendDate = freezed}) {
    return _then(
      _SuggestedPostParameters(
        price: freezed == price
            ? _self.price
            : price // ignore: cast_nullable_to_non_nullable
                  as SuggestedPostPrice?,
        sendDate: freezed == sendDate
            ? _self.sendDate
            : sendDate // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of SuggestedPostParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestedPostPriceCopyWith<$Res>? get price {
    if (_self.price == null) {
      return null;
    }

    return $SuggestedPostPriceCopyWith<$Res>(_self.price!, (value) {
      return _then(_self.copyWith(price: value));
    });
  }
}
