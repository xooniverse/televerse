part of 'models.dart';

/// Represents an interval of opening hours for a business.
class BusinessOpeningHoursInterval {
  /// The minute's sequence number in a week, starting on Monday, marking the start
  /// of the time interval during which the business is open; 0 - 7 24 60
  final int openingMinute;

  /// The minute's sequence number in a week, starting on Monday, marking the end
  /// of the time interval during which the business is open; 0 - 8 24 60
  final int closingMinute;

  /// Creates a [BusinessOpeningHoursInterval] object.
  const BusinessOpeningHoursInterval({
    required this.openingMinute,
    required this.closingMinute,
  });

  /// Creates a [BusinessOpeningHoursInterval] object from a JSON map.
  factory BusinessOpeningHoursInterval.fromJson(Map<String, dynamic> json) {
    return BusinessOpeningHoursInterval(
      openingMinute: json['opening_minute'],
      closingMinute: json['closing_minute'],
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'opening_minute': openingMinute,
      'closing_minute': closingMinute,
    };
  }
}
