// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'star_transaction.dart';

part 'star_transactions.freezed.dart';
part 'star_transactions.g.dart';

/// This object represents a list of Telegram Star transactions.
@freezed
class StarTransactions with _$StarTransactions {
  /// Creates a new [StarTransactions] object.
  const factory StarTransactions({
    /// The list of transactions.
    @JsonKey(name: 'transactions') required List<StarTransaction> transactions,
  }) = _StarTransactions;

  /// Creates a new [StarTransactions] object from json.
  factory StarTransactions.fromJson(Map<String, dynamic> json) =>
      _$StarTransactionsFromJson(json);
}
