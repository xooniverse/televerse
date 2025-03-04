import 'package:freezed_annotation/freezed_annotation.dart';
import 'location.dart';

part 'business_location.freezed.dart';
part 'business_location.g.dart';

/// Represents the location of a business.
@freezed
class BusinessLocation with _$BusinessLocation {
  /// Creates a [BusinessLocation] object.
  const factory BusinessLocation({
    /// Address of the business.
    @JsonKey(name: 'address') required String address,

    /// Optional. Location of the business.
    @JsonKey(name: 'location') Location? location,
  }) = _BusinessLocation;

  /// Creates a [BusinessLocation] object from a JSON map.
  factory BusinessLocation.fromJson(Map<String, dynamic> json) =>
      _$BusinessLocationFromJson(json);
}
