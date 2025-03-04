// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StarTransactions _$StarTransactionsFromJson(Map<String, dynamic> json) {
  return _StarTransactions.fromJson(json);
}

/// @nodoc
mixin _$StarTransactions {
  /// The list of transactions.
  @JsonKey(name: 'transactions')
  List<StarTransaction> get transactions => throw _privateConstructorUsedError;

  /// Serializes this StarTransactions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StarTransactionsCopyWith<StarTransactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarTransactionsCopyWith<$Res> {
  factory $StarTransactionsCopyWith(
          StarTransactions value, $Res Function(StarTransactions) then) =
      _$StarTransactionsCopyWithImpl<$Res, StarTransactions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transactions') List<StarTransaction> transactions});
}

/// @nodoc
class _$StarTransactionsCopyWithImpl<$Res, $Val extends StarTransactions>
    implements $StarTransactionsCopyWith<$Res> {
  _$StarTransactionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_value.copyWith(
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<StarTransaction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StarTransactionsImplCopyWith<$Res>
    implements $StarTransactionsCopyWith<$Res> {
  factory _$$StarTransactionsImplCopyWith(_$StarTransactionsImpl value,
          $Res Function(_$StarTransactionsImpl) then) =
      __$$StarTransactionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transactions') List<StarTransaction> transactions});
}

/// @nodoc
class __$$StarTransactionsImplCopyWithImpl<$Res>
    extends _$StarTransactionsCopyWithImpl<$Res, _$StarTransactionsImpl>
    implements _$$StarTransactionsImplCopyWith<$Res> {
  __$$StarTransactionsImplCopyWithImpl(_$StarTransactionsImpl _value,
      $Res Function(_$StarTransactionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactions = null,
  }) {
    return _then(_$StarTransactionsImpl(
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<StarTransaction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StarTransactionsImpl implements _StarTransactions {
  const _$StarTransactionsImpl(
      {@JsonKey(name: 'transactions')
      required final List<StarTransaction> transactions})
      : _transactions = transactions;

  factory _$StarTransactionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StarTransactionsImplFromJson(json);

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

  @override
  String toString() {
    return 'StarTransactions(transactions: $transactions)';
  }

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StarTransactionsImplCopyWith<_$StarTransactionsImpl> get copyWith =>
      __$$StarTransactionsImplCopyWithImpl<_$StarTransactionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StarTransactionsImplToJson(
      this,
    );
  }
}

abstract class _StarTransactions implements StarTransactions {
  const factory _StarTransactions(
          {@JsonKey(name: 'transactions')
          required final List<StarTransaction> transactions}) =
      _$StarTransactionsImpl;

  factory _StarTransactions.fromJson(Map<String, dynamic> json) =
      _$StarTransactionsImpl.fromJson;

  /// The list of transactions.
  @override
  @JsonKey(name: 'transactions')
  List<StarTransaction> get transactions;

  /// Create a copy of StarTransactions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StarTransactionsImplCopyWith<_$StarTransactionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
