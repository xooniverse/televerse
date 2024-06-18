part of 'models.dart';

/// This object describes a Telegram Star transaction.
class StarTransaction {
  /// Unique identifier of the transaction.
  /// Coincides with the identifier of the original transaction for refund transactions.
  /// Coincides with [SuccessfulPayment.telegramPaymentChargeId] for successful incoming payments from users.
  final String id;

  /// Number of Telegram Stars transferred by the transaction.
  final int amount;

  /// Date the transaction was created in Unix time.
  final int date;

  /// Optional. Source of an incoming transaction (e.g., a user purchasing goods or services,
  /// Fragment refunding a failed withdrawal). Only for incoming transactions.
  final TransactionPartner? source;

  /// Optional. Receiver of an outgoing transaction (e.g., a user for a purchase refund,
  /// Fragment for a withdrawal). Only for outgoing transactions.
  final TransactionPartner? receiver;

  /// Creates a new [StarTransaction] object.
  const StarTransaction({
    required this.id,
    required this.amount,
    required this.date,
    this.source,
    this.receiver,
  });

  /// Creates a new [StarTransaction] object from json.
  factory StarTransaction.fromJson(Map<String, dynamic> json) {
    return StarTransaction(
      id: json['id'],
      amount: json['amount'],
      date: json['date'],
      source: json['source'] != null
          ? TransactionPartner.fromJson(json['source'])
          : null,
      receiver: json['receiver'] != null
          ? TransactionPartner.fromJson(json['receiver'])
          : null,
    );
  }

  /// Converts a [StarTransaction] object to json.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'date': date,
      'source': source?.toJson(),
      'receiver': receiver?.toJson(),
    };
  }
}
