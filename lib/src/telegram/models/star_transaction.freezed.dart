// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StarTransaction {
  /// Unique identifier of the transaction. Coincides with the identifier of
  /// the original transaction for refund transactions. Coincides with
  /// `SuccessfulPayment` for successful incoming
  /// payments from users.
  @JsonKey(name: 'id')
  String get id;

  /// Number of Telegram Stars transferred by the transaction.
  @JsonKey(name: 'amount')
  int get amount;

  /// Date the transaction was created in Unix time.
  @JsonKey(name: 'date')
  int get date;

  /// Optional. Source of an incoming transaction (e.g., a user purchasing
  /// goods or services, Fragment refunding a failed withdrawal). Only for
  /// incoming transactions.
  @JsonKey(name: 'source')
  TransactionPartner? get source;

  /// Optional. Receiver of an outgoing transaction (e.g., a user for a
  /// purchase refund, Fragment for a withdrawal). Only for outgoing
  /// transactions.
  @JsonKey(name: 'receiver')
  TransactionPartner? get receiver;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars
  /// transferred by the transaction; from 0 to 999999999
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount;

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StarTransactionCopyWith<StarTransaction> get copyWith =>
      _$StarTransactionCopyWithImpl<StarTransaction>(
        this as StarTransaction,
        _$identity,
      );

  /// Serializes this StarTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StarTransaction(id: $id, amount: $amount, date: $date, source: $source, receiver: $receiver, nanostarAmount: $nanostarAmount)';
  }
}

/// @nodoc
abstract mixin class $StarTransactionCopyWith<$Res> {
  factory $StarTransactionCopyWith(
    StarTransaction value,
    $Res Function(StarTransaction) _then,
  ) = _$StarTransactionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'amount') int amount,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'source') TransactionPartner? source,
    @JsonKey(name: 'receiver') TransactionPartner? receiver,
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  });

  $TransactionPartnerCopyWith<$Res>? get source;
  $TransactionPartnerCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$StarTransactionCopyWithImpl<$Res>
    implements $StarTransactionCopyWith<$Res> {
  _$StarTransactionCopyWithImpl(this._self, this._then);

  final StarTransaction _self;
  final $Res Function(StarTransaction) _then;

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? date = null,
    Object? source = freezed,
    Object? receiver = freezed,
    Object? nanostarAmount = freezed,
  }) {
    return _then(
      _self.copyWith(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        source: freezed == source
            ? _self.source
            : source // ignore: cast_nullable_to_non_nullable
                  as TransactionPartner?,
        receiver: freezed == receiver
            ? _self.receiver
            : receiver // ignore: cast_nullable_to_non_nullable
                  as TransactionPartner?,
        nanostarAmount: freezed == nanostarAmount
            ? _self.nanostarAmount
            : nanostarAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<$Res>? get source {
    if (_self.source == null) {
      return null;
    }

    return $TransactionPartnerCopyWith<$Res>(_self.source!, (value) {
      return _then(_self.copyWith(source: value));
    });
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<$Res>? get receiver {
    if (_self.receiver == null) {
      return null;
    }

    return $TransactionPartnerCopyWith<$Res>(_self.receiver!, (value) {
      return _then(_self.copyWith(receiver: value));
    });
  }
}

/// Adds pattern-matching-related methods to [StarTransaction].
extension StarTransactionPatterns on StarTransaction {
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
    TResult Function(_StarTransaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StarTransaction() when $default != null:
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
    TResult Function(_StarTransaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StarTransaction():
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
    TResult? Function(_StarTransaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StarTransaction() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StarTransaction implements StarTransaction {
  const _StarTransaction({
    @JsonKey(name: 'id') required this.id,
    @JsonKey(name: 'amount') required this.amount,
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'source') this.source,
    @JsonKey(name: 'receiver') this.receiver,
    @JsonKey(name: 'nanostar_amount') this.nanostarAmount,
  });
  factory _StarTransaction.fromJson(Map<String, dynamic> json) =>
      _$StarTransactionFromJson(json);

  /// Unique identifier of the transaction. Coincides with the identifier of
  /// the original transaction for refund transactions. Coincides with
  /// `SuccessfulPayment` for successful incoming
  /// payments from users.
  @override
  @JsonKey(name: 'id')
  final String id;

  /// Number of Telegram Stars transferred by the transaction.
  @override
  @JsonKey(name: 'amount')
  final int amount;

  /// Date the transaction was created in Unix time.
  @override
  @JsonKey(name: 'date')
  final int date;

  /// Optional. Source of an incoming transaction (e.g., a user purchasing
  /// goods or services, Fragment refunding a failed withdrawal). Only for
  /// incoming transactions.
  @override
  @JsonKey(name: 'source')
  final TransactionPartner? source;

  /// Optional. Receiver of an outgoing transaction (e.g., a user for a
  /// purchase refund, Fragment for a withdrawal). Only for outgoing
  /// transactions.
  @override
  @JsonKey(name: 'receiver')
  final TransactionPartner? receiver;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars
  /// transferred by the transaction; from 0 to 999999999
  @override
  @JsonKey(name: 'nanostar_amount')
  final int? nanostarAmount;

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StarTransactionCopyWith<_StarTransaction> get copyWith =>
      __$StarTransactionCopyWithImpl<_StarTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StarTransactionToJson(this);
  }

  @override
  String toString() {
    return 'StarTransaction(id: $id, amount: $amount, date: $date, source: $source, receiver: $receiver, nanostarAmount: $nanostarAmount)';
  }
}

/// @nodoc
abstract mixin class _$StarTransactionCopyWith<$Res>
    implements $StarTransactionCopyWith<$Res> {
  factory _$StarTransactionCopyWith(
    _StarTransaction value,
    $Res Function(_StarTransaction) _then,
  ) = __$StarTransactionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'amount') int amount,
    @JsonKey(name: 'date') int date,
    @JsonKey(name: 'source') TransactionPartner? source,
    @JsonKey(name: 'receiver') TransactionPartner? receiver,
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  });

  @override
  $TransactionPartnerCopyWith<$Res>? get source;
  @override
  $TransactionPartnerCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$StarTransactionCopyWithImpl<$Res>
    implements _$StarTransactionCopyWith<$Res> {
  __$StarTransactionCopyWithImpl(this._self, this._then);

  final _StarTransaction _self;
  final $Res Function(_StarTransaction) _then;

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? date = null,
    Object? source = freezed,
    Object? receiver = freezed,
    Object? nanostarAmount = freezed,
  }) {
    return _then(
      _StarTransaction(
        id: null == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _self.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        date: null == date
            ? _self.date
            : date // ignore: cast_nullable_to_non_nullable
                  as int,
        source: freezed == source
            ? _self.source
            : source // ignore: cast_nullable_to_non_nullable
                  as TransactionPartner?,
        receiver: freezed == receiver
            ? _self.receiver
            : receiver // ignore: cast_nullable_to_non_nullable
                  as TransactionPartner?,
        nanostarAmount: freezed == nanostarAmount
            ? _self.nanostarAmount
            : nanostarAmount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<$Res>? get source {
    if (_self.source == null) {
      return null;
    }

    return $TransactionPartnerCopyWith<$Res>(_self.source!, (value) {
      return _then(_self.copyWith(source: value));
    });
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<$Res>? get receiver {
    if (_self.receiver == null) {
      return null;
    }

    return $TransactionPartnerCopyWith<$Res>(_self.receiver!, (value) {
      return _then(_self.copyWith(receiver: value));
    });
  }
}
