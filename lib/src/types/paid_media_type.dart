part of 'types.dart';

/// This object represents the type of the paid media.
enum PaidMediaType {
  /// Represents a preview of paid media.
  preview("preview"),

  /// Represents a photo paid media.
  photo("photo"),

  /// Represents a video paid media.
  video("video"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [PaidMediaType].
  const PaidMediaType(this.value);

  /// Constructs a new [PaidMediaType] from a [String].
  static PaidMediaType fromJson(String value) {
    return PaidMediaType.values.firstWhere((e) => e.value == value);
  }

  /// Converts this [PaidMediaType] to a [String].
  String toJson() {
    return value;
  }
}
