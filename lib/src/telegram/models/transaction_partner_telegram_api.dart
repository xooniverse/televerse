part of 'models.dart';

/// Describes a transaction with payment for paid broadcasting via Telegram API.
class TransactionPartnerTelegramApi extends TransactionPartner {
  @override
  TransactionPartnerType get type => TransactionPartnerType.telegramApi;

  /// The number of successful requests that exceeded regular limits and were therefore billed.
  final int? requestCount;

  /// Constructs a [TransactionPartnerTelegramApi] object.
  const TransactionPartnerTelegramApi({
    this.requestCount,
  });

  /// Creates a [TransactionPartnerTelegramApi] object from JSON.
  factory TransactionPartnerTelegramApi.fromJson(Map<String, dynamic> json) {
    return TransactionPartnerTelegramApi(
      requestCount: json['request_count'] as int?,
    );
  }

  /// Converts a [TransactionPartnerTelegramApi] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'request_count': requestCount,
    };
  }
}
