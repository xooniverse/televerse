// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';
import 'package:televerse/src/telegram/models/suggested_post_price.dart';

part 'suggested_post_approved.freezed.dart';
part 'suggested_post_approved.g.dart';

/// Describes a service message about the approval of a suggested post.
@freezed
abstract class SuggestedPostApproved with _$SuggestedPostApproved {
  /// Creates a new [SuggestedPostApproved] object.
  const factory SuggestedPostApproved({
    /// Optional. Message containing the suggested post. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,

    /// Optional. Amount paid for the post
    @JsonKey(name: 'price') SuggestedPostPrice? price,

    /// Date when the post will be published
    @JsonKey(name: 'send_date') required int sendDate,
  }) = _SuggestedPostApproved;

  /// Creates a new [SuggestedPostApproved] object from a JSON [Map].
  factory SuggestedPostApproved.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostApprovedFromJson(json);
}
