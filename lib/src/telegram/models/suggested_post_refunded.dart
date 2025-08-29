// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';

part 'suggested_post_refunded.freezed.dart';
part 'suggested_post_refunded.g.dart';

/// Describes a service message about a payment refund for a suggested post.
@freezed
abstract class SuggestedPostRefunded with _$SuggestedPostRefunded {
  /// Creates a new [SuggestedPostRefunded] object.
  const factory SuggestedPostRefunded({
    /// Optional. Message containing the suggested post. Note that the Message
    /// object in this field will not contain the reply_to_message field even
    /// if it itself is a reply.
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,

    /// Reason for the refund. Currently, one of "post_deleted" if the post was
    /// deleted within 24 hours of being posted or removed from scheduled messages
    /// without being posted, or "payment_refunded" if the payer refunded their payment.
    @JsonKey(name: 'reason') required String reason,
  }) = _SuggestedPostRefunded;

  /// Creates a new [SuggestedPostRefunded] object from a JSON [Map].
  factory SuggestedPostRefunded.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostRefundedFromJson(json);
}
