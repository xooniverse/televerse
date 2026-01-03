// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invoice {
  /// Product name
  @JsonKey(name: 'title')
  String get title;

  /// Product description
  @JsonKey(name: 'description')
  String get description;

  /// Unique bot deep-linking parameter that can be used to generate this
  /// invoice
  @JsonKey(name: 'start_parameter')
  String get startParameter;

  /// Three-letter ISO 4217 currency code
  @JsonKey(name: 'currency')
  String get currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of
  /// currencies).
  @JsonKey(name: 'total_amount')
  int get totalAmount;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InvoiceCopyWith<Invoice> get copyWith =>
      _$InvoiceCopyWithImpl<Invoice>(this as Invoice, _$identity);

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'Invoice(title: $title, description: $description, startParameter: $startParameter, currency: $currency, totalAmount: $totalAmount)';
  }
}

/// @nodoc
abstract mixin class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) _then) =
      _$InvoiceCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'start_parameter') String startParameter,
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'total_amount') int totalAmount,
  });
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res> implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._self, this._then);

  final Invoice _self;
  final $Res Function(Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? startParameter = null,
    Object? currency = null,
    Object? totalAmount = null,
  }) {
    return _then(
      _self.copyWith(
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        startParameter: null == startParameter
            ? _self.startParameter
            : startParameter // ignore: cast_nullable_to_non_nullable
                  as String,
        currency: null == currency
            ? _self.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        totalAmount: null == totalAmount
            ? _self.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [Invoice].
extension InvoicePatterns on Invoice {
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
    TResult Function(_Invoice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Invoice() when $default != null:
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
    TResult Function(_Invoice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Invoice():
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
    TResult? Function(_Invoice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Invoice() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Invoice implements Invoice {
  const _Invoice({
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'description') required this.description,
    @JsonKey(name: 'start_parameter') required this.startParameter,
    @JsonKey(name: 'currency') required this.currency,
    @JsonKey(name: 'total_amount') required this.totalAmount,
  });
  factory _Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  /// Product name
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Product description
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Unique bot deep-linking parameter that can be used to generate this
  /// invoice
  @override
  @JsonKey(name: 'start_parameter')
  final String startParameter;

  /// Three-letter ISO 4217 currency code
  @override
  @JsonKey(name: 'currency')
  final String currency;

  /// Total price in the smallest units of the currency (integer, not
  /// float/double). For example, for a price of US$ 1.45 pass amount = 145.
  /// See the exp parameter in currencies.json, it shows the number of digits
  /// past the decimal point for each currency (2 for the majority of
  /// currencies).
  @override
  @JsonKey(name: 'total_amount')
  final int totalAmount;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InvoiceCopyWith<_Invoice> get copyWith =>
      __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InvoiceToJson(this);
  }

  @override
  String toString() {
    return 'Invoice(title: $title, description: $description, startParameter: $startParameter, currency: $currency, totalAmount: $totalAmount)';
  }
}

/// @nodoc
abstract mixin class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) _then) =
      __$InvoiceCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String description,
    @JsonKey(name: 'start_parameter') String startParameter,
    @JsonKey(name: 'currency') String currency,
    @JsonKey(name: 'total_amount') int totalAmount,
  });
}

/// @nodoc
class __$InvoiceCopyWithImpl<$Res> implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(this._self, this._then);

  final _Invoice _self;
  final $Res Function(_Invoice) _then;

  /// Create a copy of Invoice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? startParameter = null,
    Object? currency = null,
    Object? totalAmount = null,
  }) {
    return _then(
      _Invoice(
        title: null == title
            ? _self.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        startParameter: null == startParameter
            ? _self.startParameter
            : startParameter // ignore: cast_nullable_to_non_nullable
                  as String,
        currency: null == currency
            ? _self.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as String,
        totalAmount: null == totalAmount
            ? _self.totalAmount
            : totalAmount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}
