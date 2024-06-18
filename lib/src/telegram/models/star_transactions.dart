part of 'models.dart';

/// This object represents a list of Telegram Star transactions.
class StarTransactions {
  /// The list of transactions.
  final List<StarTransaction> transactions;

  /// Creates a new [StarTransactions] object.
  const StarTransactions({
    required this.transactions,
  });

  /// Creates a new [StarTransactions] object from json.
  factory StarTransactions.fromJson(Map<String, dynamic> json) {
    return StarTransactions(
      transactions: (json['transactions'] as List)
          .map((item) => StarTransaction.fromJson(item))
          .toList(),
    );
  }

  /// Converts a [StarTransactions] object to json.
  Map<String, dynamic> toJson() {
    return {
      'transactions': transactions.map((item) => item.toJson()).toList(),
    };
  }
}
