part of '../models.dart';

/// This object describes the source of a transaction, or its recipient for outgoing transactions.
/// Currently, it can be one of [TransactionPartnerFragment], [TransactionPartnerUser], [TransactionPartnerOther].
abstract class TransactionPartner {
  /// Type of the transaction partner.
  TransactionPartnerType get type;

  /// Creates a new [TransactionPartner] object.
  /// This method decides which [TransactionPartner] subclass to use based on the [type] field.
  static TransactionPartner fromJson(Map<String, dynamic> json) {
    return switch (json['type']) {
      'fragment' => TransactionPartnerFragment.fromJson(json),
      'user' => TransactionPartnerUser.fromJson(json),
      'other' => TransactionPartnerOther.fromJson(json),
      _ => throw ArgumentError('Invalid transaction partner type')
    };
  }

  /// Creates a new [TransactionPartner] object from JSON.
  const TransactionPartner();

  /// Converts a [TransactionPartner] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
