// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_rating.freezed.dart';
part 'user_rating.g.dart';

/// This object describes the rating of a user based on their Telegram Star spendings.
@freezed
abstract class UserRating with _$UserRating {
  /// Creates the [UserRating] object.
  const factory UserRating({
    /// Current level of the user, indicating their reliability when purchasing digital goods and services. A higher level suggests a more trustworthy customer; a negative level is likely reason for concern.
    @JsonKey(name: 'level') required int level,

    /// Numerical value of the user's rating; the higher the rating, the better
    @JsonKey(name: 'rating') required int rating,

    /// The rating value required to get the current level
    @JsonKey(name: 'current_level_rating') required int currentLevelRating,

    /// Optional. The rating value required to get to the next level; omitted if the maximum level was reached
    @JsonKey(name: 'next_level_rating') int? nextLevelRating,
  }) = _UserRating;

  /// Creates the [UserRating] object from a JSON map.
  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
}
