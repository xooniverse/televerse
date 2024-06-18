part of 'models.dart';

/// The withdrawal succeeded.
class RevenueWithdrawalStateSucceeded extends RevenueWithdrawalState {
  @override
  RevenueWithdrawalStateType get type => RevenueWithdrawalStateType.succeeded;

  /// Date the withdrawal was completed in Unix time.
  final int date;

  /// An HTTPS URL that can be used to see transaction details.
  final String url;

  /// Constructs a [RevenueWithdrawalStateSucceeded] object.
  const RevenueWithdrawalStateSucceeded({
    required this.date,
    required this.url,
  });

  /// Creates a [RevenueWithdrawalStateSucceeded] object from JSON.
  factory RevenueWithdrawalStateSucceeded.fromJson(Map<String, dynamic> json) {
    return RevenueWithdrawalStateSucceeded(
      date: json['date'],
      url: json['url'],
    );
  }

  /// Converts a [RevenueWithdrawalStateSucceeded] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.toJson(),
      'date': date,
      'url': url,
    };
  }
}
