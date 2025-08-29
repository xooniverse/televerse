// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/suggested_post_price.dart';

part 'suggested_post_info.freezed.dart';
part 'suggested_post_info.g.dart';

/// Contains information about a suggested post.
@freezed
abstract class SuggestedPostInfo with _$SuggestedPostInfo {
  /// Creates a new [SuggestedPostInfo] object.
  const factory SuggestedPostInfo({
    /// State of the suggested post. Currently, it can be one of "pending", "approved", "declined".
    @JsonKey(name: 'state') required String state,

    /// Optional. Proposed price of the post. If the field is omitted, then the post is unpaid.
    @JsonKey(name: 'price') SuggestedPostPrice? price,

    /// Optional. Proposed send date of the post. If the field is omitted, then the post can be published at any time within 30 days at the sole discretion of the user or administrator who approves it.
    @JsonKey(name: 'send_date') int? sendDate,
  }) = _SuggestedPostInfo;

  /// Creates a new [SuggestedPostInfo] object from a JSON [Map].
  factory SuggestedPostInfo.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostInfoFromJson(json);
}
