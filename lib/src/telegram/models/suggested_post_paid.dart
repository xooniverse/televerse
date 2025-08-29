// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';
import 'package:televerse/src/telegram/models/star_amount.dart';

part 'suggested_post_paid.freezed.dart';
part 'suggested_post_paid.g.dart';

/// Describes a service message about a successful payment for a suggested post.
@freezed
abstract class SuggestedPostPaid with _$SuggestedPostPaid {
  /// Creates a new [SuggestedPostPaid] object.
  const factory SuggestedPostPaid({
    /// Optional. Message containing the suggested post. Note that the Message
    /// object in this field will not contain the reply_to_message field even
    /// if it itself is a reply.
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,

    /// Currency in which the payment was made. Currently, one of "XTR" for
    /// Telegram Stars or "TON" for toncoins
    @JsonKey(name: 'currency') required String currency,

    /// Optional. The amount of the currency that was received by the channel
    /// in nanotoncoins; for payments in toncoins only
    @JsonKey(name: 'amount') int? amount,

    /// Optional. The amount of Telegram Stars that was received by the channel;
    /// for payments in Telegram Stars only
    @JsonKey(name: 'star_amount') StarAmount? starAmount,
  }) = _SuggestedPostPaid;

  /// Creates a new [SuggestedPostPaid] object from a JSON [Map].
  factory SuggestedPostPaid.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostPaidFromJson(json);
}
