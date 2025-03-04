import 'package:freezed_annotation/freezed_annotation.dart';
import 'transaction_partner.dart';

part 'star_transaction.freezed.dart';
part 'star_transaction.g.dart';

/// This object describes a Telegram Star transaction.
@freezed
class StarTransaction with _$StarTransaction {
  /// Creates a new [StarTransaction] object.
  const factory StarTransaction({
    /// Unique identifier of the transaction. Coincides with the identifier of
    /// the original transaction for refund transactions. Coincides with
    /// `SuccessfulPayment` for successful incoming
    /// payments from users.
    @JsonKey(name: 'id') required String id,

    /// Number of Telegram Stars transferred by the transaction.
    @JsonKey(name: 'amount') required int amount,

    /// Date the transaction was created in Unix time.
    @JsonKey(name: 'date') required int date,

    /// Optional. Source of an incoming transaction (e.g., a user purchasing
    /// goods or services, Fragment refunding a failed withdrawal). Only for
    /// incoming transactions.
    @JsonKey(name: 'source') TransactionPartner? source,

    /// Optional. Receiver of an outgoing transaction (e.g., a user for a
    /// purchase refund, Fragment for a withdrawal). Only for outgoing
    /// transactions.
    @JsonKey(name: 'receiver') TransactionPartner? receiver,

    /// Optional. The number of 1/1000000000 shares of Telegram Stars
    /// transferred by the transaction; from 0 to 999999999
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  }) = _StarTransaction;

  /// Creates a new [StarTransaction] object from json.
  factory StarTransaction.fromJson(Map<String, dynamic> json) =>
      _$StarTransactionFromJson(json);
}
