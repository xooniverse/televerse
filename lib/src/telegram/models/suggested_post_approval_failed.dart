// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';
import 'package:televerse/src/telegram/models/suggested_post_price.dart';

part 'suggested_post_approval_failed.freezed.dart';
part 'suggested_post_approval_failed.g.dart';

/// Describes a service message about the failed approval of a suggested post. Currently, only caused by insufficient user funds at the time of approval.
@freezed
abstract class SuggestedPostApprovalFailed with _$SuggestedPostApprovalFailed {
  /// Creates a new [SuggestedPostApprovalFailed] object.
  const factory SuggestedPostApprovalFailed({
    /// Optional. Message containing the suggested post whose approval has failed. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,

    /// Expected price of the post
    @JsonKey(name: 'price') required SuggestedPostPrice price,
  }) = _SuggestedPostApprovalFailed;

  /// Creates a new [SuggestedPostApprovalFailed] object from a JSON [Map].
  factory SuggestedPostApprovalFailed.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostApprovalFailedFromJson(json);
}
