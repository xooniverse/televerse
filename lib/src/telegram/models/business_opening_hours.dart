// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'business_opening_hours_interval.dart';

part 'business_opening_hours.freezed.dart';
part 'business_opening_hours.g.dart';

/// Represents the opening hours of a business.
@freezed
abstract class BusinessOpeningHours with _$BusinessOpeningHours {
  /// Creates a [BusinessOpeningHours] object.
  const factory BusinessOpeningHours({
    /// Unique name of the time zone for which the opening hours are defined.
    @JsonKey(name: 'time_zone_name') required String timeZoneName,

    /// Opening hours intervals for the business.
    @JsonKey(name: 'opening_hours')
    required List<BusinessOpeningHoursInterval> openingHours,
  }) = _BusinessOpeningHours;

  /// Creates a [BusinessOpeningHours] object from a JSON map.
  factory BusinessOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessOpeningHoursFromJson(json);
}
