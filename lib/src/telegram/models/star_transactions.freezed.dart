// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StarTransactions {
  /// The list of transactions.
  @JsonKey(name: 'transactions')
  List<StarTransaction> get transactions;

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StarTransactionsCopyWith<StarTransactions> get copyWith =>
      _$StarTransactionsCopyWithImpl<StarTransactions>(
          this as StarTransactions, _$identity);

  /// Serializes this StarTransactions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return 'StarTransactions(transactions: $transactions)';
  }
}

/// @nodoc
abstract mixin class $StarTransactionsCopyWith<$Res> {
  factory $StarTransactionsCopyWith(
          StarTransactions value, $Res Function(StarTransactions) _then) =
      _$StarTransactionsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'transactions') List<StarTransaction> transactions});
}

/// @nodoc
class _$StarTransactionsCopyWithImpl<$Res>
    implements $StarTransactionsCopyWith<$Res> {
  _$StarTransactionsCopyWithImpl(this._self, this._then);

  final StarTransactions _self;
  final $Res Function(StarTransactions) _then;

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_self.copyWith(
      transactions: null == transactions
          ? _self.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<StarTransaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StarTransactions implements StarTransactions {
  const _StarTransactions(
      {@JsonKey(name: 'transactions')
      required final List<StarTransaction> transactions})
      : _transactions = transactions;
  factory _StarTransactions.fromJson(Map<String, dynamic> json) =>
      _$StarTransactionsFromJson(json);

  /// The list of transactions.
  final List<StarTransaction> _transactions;

  /// The list of transactions.
  @override
  @JsonKey(name: 'transactions')
  List<StarTransaction> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StarTransactionsCopyWith<_StarTransactions> get copyWith =>
      __$StarTransactionsCopyWithImpl<_StarTransactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StarTransactionsToJson(
      this,
    );
  }

  @override
  String toString() {
    return 'StarTransactions(transactions: $transactions)';
  }
}

/// @nodoc
abstract mixin class _$StarTransactionsCopyWith<$Res>
    implements $StarTransactionsCopyWith<$Res> {
  factory _$StarTransactionsCopyWith(
          _StarTransactions value, $Res Function(_StarTransactions) _then) =
      __$StarTransactionsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transactions') List<StarTransaction> transactions});
}

/// @nodoc
class __$StarTransactionsCopyWithImpl<$Res>
    implements _$StarTransactionsCopyWith<$Res> {
  __$StarTransactionsCopyWithImpl(this._self, this._then);

  final _StarTransactions _self;
  final $Res Function(_StarTransactions) _then;

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_StarTransactions(
      transactions: null == transactions
          ? _self._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<StarTransaction>,
    ));
  }
}
