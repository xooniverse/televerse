part of 'models.dart';

/// Represents the opening hours of a business.
class BusinessOpeningHours {
  /// Unique name of the time zone for which the opening hours are defined.
  final String timeZoneName;

  /// Opening hours intervals for the business.
  final List<BusinessOpeningHoursInterval> openingHours;

  /// Creates a [BusinessOpeningHours] object.
  const BusinessOpeningHours({
    required this.timeZoneName,
    required this.openingHours,
  });

  /// Creates a [BusinessOpeningHours] object from a JSON map.
  factory BusinessOpeningHours.fromJson(Map<String, dynamic> json) {
    return BusinessOpeningHours(
      timeZoneName: json['time_zone_name'],
      openingHours: (json['opening_hours'] as List<dynamic>)
          .map((e) => BusinessOpeningHoursInterval.fromJson(e))
          .toList(),
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'time_zone_name': timeZoneName,
      'opening_hours':
          openingHours.map((interval) => interval.toJson()).toList(),
    };
  }
}
