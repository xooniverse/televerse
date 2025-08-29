// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/src/telegram/models/suggested_post_price.dart';

part 'suggested_post_parameters.freezed.dart';
part 'suggested_post_parameters.g.dart';

/// Contains parameters of a post that is being suggested by the bot.
///
/// This object is used when suggesting posts through the Telegram Bot API,
/// allowing bots to propose content with specific pricing and scheduling options.
@freezed
abstract class SuggestedPostParameters with _$SuggestedPostParameters {
  /// Creates a new [SuggestedPostParameters] object.
  const factory SuggestedPostParameters({
    /// Optional. Proposed price for the post. If the field is omitted,
    /// then the post is unpaid.
    ///
    /// The price is specified in Telegram Stars and represents the cost
    /// that users must pay to access or interact with the suggested post.
    @JsonKey(name: 'price') SuggestedPostPrice? price,

    /// Optional. Proposed send date of the post. If specified, then the date
    /// must be between 300 second and 2678400 seconds (30 days) in the future.
    /// If the field is omitted, then the post can be published at any time
    /// within 30 days at the sole discretion of the user who approves it.
    ///
    /// The value is a Unix timestamp representing when the post should be sent.
    @JsonKey(name: 'send_date') int? sendDate,
  }) = _SuggestedPostParameters;

  /// Creates a new [SuggestedPostParameters] object from a JSON [Map].
  factory SuggestedPostParameters.fromJson(Map<String, dynamic> json) =>
      _$SuggestedPostParametersFromJson(json);
}

/// Extension for SuggestedPostParameters to add convenience methods
extension SuggestedPostParametersExt on SuggestedPostParameters {
  /// Gets the send date as a DateTime object, if set
  DateTime? get sendDateTime {
    return sendDate != null
        ? DateTime.fromMillisecondsSinceEpoch(sendDate! * 1000)
        : null;
  }

  /// Checks if the post has a price set (is a paid post)
  bool get isPaidPost => price != null;

  /// Checks if the post has a scheduled send date
  bool get isScheduled => sendDate != null;
}
