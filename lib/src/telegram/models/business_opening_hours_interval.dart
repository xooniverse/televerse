import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_opening_hours_interval.freezed.dart';
part 'business_opening_hours_interval.g.dart';

/// Represents an interval of opening hours for a business.
@freezed
class BusinessOpeningHoursInterval with _$BusinessOpeningHoursInterval {
  /// Creates a [BusinessOpeningHoursInterval] object.
  const factory BusinessOpeningHoursInterval({
    /// The minute's sequence number in a week, starting on Monday, marking the start
    /// of the time interval during which the business is open; 0 - 7 24 60
    @JsonKey(name: 'opening_minute') required int openingMinute,

    /// The minute's sequence number in a week, starting on Monday, marking the end
    /// of the time interval during which the business is open; 0 - 8 24 60
    @JsonKey(name: 'closing_minute') required int closingMinute,
  }) = _BusinessOpeningHoursInterval;

  /// Creates a [BusinessOpeningHoursInterval] object from a JSON map.
  factory BusinessOpeningHoursInterval.fromJson(Map<String, dynamic> json) =>
      _$BusinessOpeningHoursIntervalFromJson(json);
}
