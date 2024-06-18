part of 'models.dart';

/// Describes a transaction with a user.
class TransactionPartnerUser extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.user;

  /// Information about the user.
  final User user;

  /// Constructs a [TransactionPartnerUser] object.
  const TransactionPartnerUser({
    required this.user,
  });

  /// Creates a [TransactionPartnerUser] object from JSON.
  factory TransactionPartnerUser.fromJson(Map<String, dynamic> json) {
    return TransactionPartnerUser(
      user: User.fromJson(json['user']),
    );
  }

  /// Converts a [TransactionPartnerUser] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'user': user.toJson(),
    };
  }
}
