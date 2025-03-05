// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'user.dart';
import 'chat.dart';

part 'affiliate_info.freezed.dart';
part 'affiliate_info.g.dart';

/// Contains information about the affiliate that received a commission via this
/// transaction.
@freezed
class AffiliateInfo with _$AffiliateInfo {
  /// Constructs an [AffiliateInfo] object.
  const factory AffiliateInfo({
    /// The bot or the user that received an affiliate commission if it was
    /// received by a bot or a user.
    @JsonKey(name: 'affiliate_user') User? affiliateUser,

    /// The chat that received an affiliate commission if it was received by a
    /// chat.
    @JsonKey(name: 'affiliate_chat') Chat? affiliateChat,

    /// The number of Telegram Stars received by the affiliate for each 1000
    /// Telegram Stars received by the bot from referred users.
    @JsonKey(name: 'commission_per_mille') required int commissionPerMille,

    /// Integer amount of Telegram Stars received by the affiliate from the
    /// transaction, rounded to 0; can be negative for refunds.
    @JsonKey(name: 'amount') required int amount,

    /// The number of 1/1000000000 shares of Telegram Stars received by the
    /// affiliate; from -999999999 to 999999999; can be negative for refunds.
    @JsonKey(name: 'nanostar_amount') int? nanostarAmount,
  }) = _AffiliateInfo;

  /// Creates an [AffiliateInfo] object from JSON.
  factory AffiliateInfo.fromJson(Map<String, dynamic> json) =>
      _$AffiliateInfoFromJson(json);
}
