part of 'models.dart';

/// Represents the location of a business.
class BusinessLocation {
  /// Address of the business.
  final String address;

  /// Optional. Location of the business.
  final Location? location;

  /// Creates a [BusinessLocation] object.
  const BusinessLocation({
    required this.address,
    this.location,
  });

  /// Creates a [BusinessLocation] object from a JSON map.
  factory BusinessLocation.fromJson(Map<String, dynamic> json) {
    return BusinessLocation(
      address: json['address'],
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
    );
  }

  /// Converts this object to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'location': location?.toJson(),
    };
  }
}
