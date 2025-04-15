// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_address.freezed.dart';
part 'location_address.g.dart';

/// Describes the physical address of a location.
@freezed
abstract class LocationAddress with _$LocationAddress {
  /// Creates a new [LocationAddress] object.
  const factory LocationAddress({
    /// The two-letter ISO 3166-1 alpha-2 country code of the country where the location is located
    @JsonKey(name: 'country_code') required String countryCode,

    /// Optional. State of the location
    @JsonKey(name: 'state') String? state,

    /// Optional. City of the location
    @JsonKey(name: 'city') String? city,

    /// Optional. Street address of the location
    @JsonKey(name: 'street') String? street,
  }) = _LocationAddress;

  /// Creates a new [LocationAddress] object from a JSON [Map].
  factory LocationAddress.fromJson(Map<String, dynamic> json) =>
      _$LocationAddressFromJson(json);
}
