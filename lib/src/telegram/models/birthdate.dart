part of 'models.dart';

/// Represents a user's birthdate.
class Birthdate {
  /// Day of the user's birth; 1-31.
  final int day;

  /// Month of the user's birth; 1-12.
  final int month;

  /// Optional. Year of the user's birth.
  final int? year;

  /// Creates a [Birthdate] object.
  const Birthdate({
    required this.day,
    required this.month,
    this.year,
  });

  /// Creates a [Birthdate] object from a JSON map.
  factory Birthdate.fromJson(Map<String, dynamic> json) {
    return Birthdate(
      day: json['day'],
      month: json['month'],
      year: json['year'],
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'month': month,
      'year': year,
    }..removeWhere(_nullFilter);
  }
}
