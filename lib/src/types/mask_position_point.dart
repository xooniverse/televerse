part of 'types.dart';

/// This object represents the position on faces where a mask should be placed by default.
enum MaskPositionPoint {
  /// The mask should be placed relatively to the forehead.
  forehead("forehead"),

  /// The mask should be placed relatively to the eyes.
  eyes("eyes"),

  /// The mask should be placed relatively to the mouth.
  mouth("mouth"),

  /// The mask should be placed relatively to the chin.
  chin("chin");

  /// The value of this enum.
  final String value;

  /// Constructs a new [MaskPositionPoint].
  const MaskPositionPoint(this.value);

  /// Constructs a new [MaskPositionPoint] from a [String].
  factory MaskPositionPoint.fromJson(String value) =>
      MaskPositionPoint.values.firstWhere((e) => e.value == value);

  /// Converts this [MaskPositionPoint] to a [String].
  String toJson() => value;
}
