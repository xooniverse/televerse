// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/message.dart';

part 'suggested_post_declined.freezed.dart';
part 'suggested_post_declined.g.dart';

/// Describes a service message about the rejection of a suggested post.
@freezed
abstract class SuggestedPostDeclined with _$SuggestedPostDeclined {
  /// Creates a new [SuggestedPostDeclined] object.
  const factory SuggestedPostDeclined({
    /// Optional. Message containing the suggested post. Note that the Message object in this field will not contain the reply_to_message field even if it itself is a reply.
    @JsonKey(name: 'suggested_post_message') Message? suggestedPostMessage,

    /// Optional. Comment with which the post was declined
    @JsonKey(name: 'comment') String? comment,
  }) = _SuggestedPostDeclined;

  /// Creates a new [SuggestedPostDeclined] object from a JSON [Map].
  factory SuggestedPostDeclined.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostDeclinedFromJson(json);
}
