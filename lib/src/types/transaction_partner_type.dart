part of 'types.dart';

/// This object represents the type of the transaction partner.
enum TransactionPartnerType {
  /// Represents a withdrawal transaction with Fragment.
  fragment("fragment"),

  /// Represents a transaction with a user.
  user("user"),

  /// Represents a transaction with an unknown source or recipient.
  other("other"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [TransactionPartnerType].
  const TransactionPartnerType(this.value);

  /// Constructs a new [TransactionPartnerType] from a [String].
  static TransactionPartnerType fromJson(String value) {
    return TransactionPartnerType.values.firstWhere((e) => e.value == value);
  }

  /// Converts this [TransactionPartnerType] to a [String].
  String toJson() {
    return value;
  }
}
