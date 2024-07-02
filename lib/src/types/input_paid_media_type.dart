part of 'types.dart';

/// This object represents the type of the input paid media.
enum InputPaidMediaType {
  /// Represents a photo paid media.
  photo("photo"),

  /// Represents a video paid media.
  video("video"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [InputPaidMediaType].
  const InputPaidMediaType(this.value);

  /// Constructs a new [InputPaidMediaType] from a [String].
  static InputPaidMediaType fromJson(String value) {
    return InputPaidMediaType.values.firstWhere((e) => e.value == value);
  }

  /// Converts this [InputPaidMediaType] to a [String].
  String toJson() {
    return value;
  }
}
