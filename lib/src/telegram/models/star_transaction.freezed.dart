// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'star_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StarTransaction _$StarTransactionFromJson(Map<String, dynamic> json) {
  return _StarTransaction.fromJson(json);
}

/// @nodoc
mixin _$StarTransaction {
  /// Unique identifier of the transaction. Coincides with the identifier of
  /// the original transaction for refund transactions. Coincides with
  /// [SuccessfulPayment.telegramPaymentChargeId] for successful incoming
  /// payments from users.
  String get id => throw _privateConstructorUsedError;

  /// Number of Telegram Stars transferred by the transaction.
  int get amount => throw _privateConstructorUsedError;

  /// Date the transaction was created in Unix time.
  int get date => throw _privateConstructorUsedError;

  /// Optional. Source of an incoming transaction (e.g., a user purchasing
  /// goods or services, Fragment refunding a failed withdrawal). Only for
  /// incoming transactions.
  TransactionPartner? get source => throw _privateConstructorUsedError;

  /// Optional. Receiver of an outgoing transaction (e.g., a user for a
  /// purchase refund, Fragment for a withdrawal). Only for outgoing
  /// transactions.
  TransactionPartner? get receiver => throw _privateConstructorUsedError;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars
  /// transferred by the transaction; from 0 to 999999999
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount => throw _privateConstructorUsedError;

  /// Serializes this StarTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StarTransactionCopyWith<StarTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarTransactionCopyWith<$Res> {
  factory $StarTransactionCopyWith(
          StarTransaction value, $Res Function(StarTransaction) then) =
      _$StarTransactionCopyWithImpl<$Res, StarTransaction>;
  @useResult
  $Res call(
      {String id,
      int amount,
      int date,
      TransactionPartner? source,
      TransactionPartner? receiver,
      @JsonKey(name: 'nanostar_amount') int? nanostarAmount});

  $TransactionPartnerCopyWith<$Res>? get source;
  $TransactionPartnerCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$StarTransactionCopyWithImpl<$Res, $Val extends StarTransaction>
    implements $StarTransactionCopyWith<$Res> {
  _$StarTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TransactionPartner?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as TransactionPartner?,
      nanostarAmount: freezed == nanostarAmount
          ? _value.nanostarAmount
          : nanostarAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $TransactionPartnerCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionPartnerCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $TransactionPartnerCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StarTransactionImplCopyWith<$Res>
    implements $StarTransactionCopyWith<$Res> {
  factory _$$StarTransactionImplCopyWith(_$StarTransactionImpl value,
          $Res Function(_$StarTransactionImpl) then) =
      __$$StarTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int amount,
      int date,
      TransactionPartner? source,
      TransactionPartner? receiver,
      @JsonKey(name: 'nanostar_amount') int? nanostarAmount});

  @override
  $TransactionPartnerCopyWith<$Res>? get source;
  @override
  $TransactionPartnerCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$StarTransactionImplCopyWithImpl<$Res>
    extends _$StarTransactionCopyWithImpl<$Res, _$StarTransactionImpl>
    implements _$$StarTransactionImplCopyWith<$Res> {
  __$$StarTransactionImplCopyWithImpl(
      _$StarTransactionImpl _value, $Res Function(_$StarTransactionImpl) _then)
      : super(_value, _then);

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
    return _then(_$StarTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TransactionPartner?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as TransactionPartner?,
      nanostarAmount: freezed == nanostarAmount
          ? _value.nanostarAmount
          : nanostarAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StarTransactionImpl implements _StarTransaction {
  const _$StarTransactionImpl(
      {required this.id,
      required this.amount,
      required this.date,
      this.source,
      this.receiver,
      @JsonKey(name: 'nanostar_amount') this.nanostarAmount});

  factory _$StarTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$StarTransactionImplFromJson(json);

  /// Unique identifier of the transaction. Coincides with the identifier of
  /// the original transaction for refund transactions. Coincides with
  /// [SuccessfulPayment.telegramPaymentChargeId] for successful incoming
  /// payments from users.
  @override
  final String id;

  /// Number of Telegram Stars transferred by the transaction.
  @override
  final int amount;

  /// Date the transaction was created in Unix time.
  @override
  final int date;

  /// Optional. Source of an incoming transaction (e.g., a user purchasing
  /// goods or services, Fragment refunding a failed withdrawal). Only for
  /// incoming transactions.
  @override
  final TransactionPartner? source;

  /// Optional. Receiver of an outgoing transaction (e.g., a user for a
  /// purchase refund, Fragment for a withdrawal). Only for outgoing
  /// transactions.
  @override
  final TransactionPartner? receiver;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars
  /// transferred by the transaction; from 0 to 999999999
  @override
  @JsonKey(name: 'nanostar_amount')
  final int? nanostarAmount;

  @override
  String toString() {
    return 'StarTransaction(id: $id, amount: $amount, date: $date, source: $source, receiver: $receiver, nanostarAmount: $nanostarAmount)';
  }

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StarTransactionImplCopyWith<_$StarTransactionImpl> get copyWith =>
      __$$StarTransactionImplCopyWithImpl<_$StarTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StarTransactionImplToJson(
      this,
    );
  }
}

abstract class _StarTransaction implements StarTransaction {
  const factory _StarTransaction(
          {required final String id,
          required final int amount,
          required final int date,
          final TransactionPartner? source,
          final TransactionPartner? receiver,
          @JsonKey(name: 'nanostar_amount') final int? nanostarAmount}) =
      _$StarTransactionImpl;

  factory _StarTransaction.fromJson(Map<String, dynamic> json) =
      _$StarTransactionImpl.fromJson;

  /// Unique identifier of the transaction. Coincides with the identifier of
  /// the original transaction for refund transactions. Coincides with
  /// [SuccessfulPayment.telegramPaymentChargeId] for successful incoming
  /// payments from users.
  @override
  String get id;

  /// Number of Telegram Stars transferred by the transaction.
  @override
  int get amount;

  /// Date the transaction was created in Unix time.
  @override
  int get date;

  /// Optional. Source of an incoming transaction (e.g., a user purchasing
  /// goods or services, Fragment refunding a failed withdrawal). Only for
  /// incoming transactions.
  @override
  TransactionPartner? get source;

  /// Optional. Receiver of an outgoing transaction (e.g., a user for a
  /// purchase refund, Fragment for a withdrawal). Only for outgoing
  /// transactions.
  @override
  TransactionPartner? get receiver;

  /// Optional. The number of 1/1000000000 shares of Telegram Stars
  /// transferred by the transaction; from 0 to 999999999
  @override
  @JsonKey(name: 'nanostar_amount')
  int? get nanostarAmount;

  /// Create a copy of StarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StarTransactionImplCopyWith<_$StarTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
