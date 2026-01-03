// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationAddress {
  /// The two-letter ISO 3166-1 alpha-2 country code of the country where the location is located
  @JsonKey(name: 'country_code')
  String get countryCode;

  /// Optional. State of the location
  @JsonKey(name: 'state')
  String? get state;

  /// Optional. City of the location
  @JsonKey(name: 'city')
  String? get city;

  /// Optional. Street address of the location
  @JsonKey(name: 'street')
  String? get street;

  /// Create a copy of LocationAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationAddressCopyWith<LocationAddress> get copyWith =>
      _$LocationAddressCopyWithImpl<LocationAddress>(
        this as LocationAddress,
        _$identity,
      );

  /// Serializes this LocationAddress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'LocationAddress(countryCode: $countryCode, state: $state, city: $city, street: $street)';
  }
}

/// @nodoc
abstract mixin class $LocationAddressCopyWith<$Res> {
  factory $LocationAddressCopyWith(
    LocationAddress value,
    $Res Function(LocationAddress) _then,
  ) = _$LocationAddressCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
  });
}

/// @nodoc
class _$LocationAddressCopyWithImpl<$Res>
    implements $LocationAddressCopyWith<$Res> {
  _$LocationAddressCopyWithImpl(this._self, this._then);

  final LocationAddress _self;
  final $Res Function(LocationAddress) _then;

  /// Create a copy of LocationAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryCode = null,
    Object? state = freezed,
    Object? city = freezed,
    Object? street = freezed,
  }) {
    return _then(
      _self.copyWith(
        countryCode: null == countryCode
            ? _self.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        state: freezed == state
            ? _self.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _self.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        street: freezed == street
            ? _self.street
            : street // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [LocationAddress].
extension LocationAddressPatterns on LocationAddress {
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
    TResult Function(_LocationAddress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LocationAddress() when $default != null:
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
    TResult Function(_LocationAddress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationAddress():
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
    TResult? Function(_LocationAddress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LocationAddress() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LocationAddress implements LocationAddress {
  const _LocationAddress({
    @JsonKey(name: 'country_code') required this.countryCode,
    @JsonKey(name: 'state') this.state,
    @JsonKey(name: 'city') this.city,
    @JsonKey(name: 'street') this.street,
  });
  factory _LocationAddress.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressFromJson(json);

  /// The two-letter ISO 3166-1 alpha-2 country code of the country where the location is located
  @override
  @JsonKey(name: 'country_code')
  final String countryCode;

  /// Optional. State of the location
  @override
  @JsonKey(name: 'state')
  final String? state;

  /// Optional. City of the location
  @override
  @JsonKey(name: 'city')
  final String? city;

  /// Optional. Street address of the location
  @override
  @JsonKey(name: 'street')
  final String? street;

  /// Create a copy of LocationAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationAddressCopyWith<_LocationAddress> get copyWith =>
      __$LocationAddressCopyWithImpl<_LocationAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationAddressToJson(this);
  }

  @override
  String toString() {
    return 'LocationAddress(countryCode: $countryCode, state: $state, city: $city, street: $street)';
  }
}

/// @nodoc
abstract mixin class _$LocationAddressCopyWith<$Res>
    implements $LocationAddressCopyWith<$Res> {
  factory _$LocationAddressCopyWith(
    _LocationAddress value,
    $Res Function(_LocationAddress) _then,
  ) = __$LocationAddressCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'country_code') String countryCode,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
  });
}

/// @nodoc
class __$LocationAddressCopyWithImpl<$Res>
    implements _$LocationAddressCopyWith<$Res> {
  __$LocationAddressCopyWithImpl(this._self, this._then);

  final _LocationAddress _self;
  final $Res Function(_LocationAddress) _then;

  /// Create a copy of LocationAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? countryCode = null,
    Object? state = freezed,
    Object? city = freezed,
    Object? street = freezed,
  }) {
    return _then(
      _LocationAddress(
        countryCode: null == countryCode
            ? _self.countryCode
            : countryCode // ignore: cast_nullable_to_non_nullable
                  as String,
        state: freezed == state
            ? _self.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String?,
        city: freezed == city
            ? _self.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String?,
        street: freezed == street
            ? _self.street
            : street // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
