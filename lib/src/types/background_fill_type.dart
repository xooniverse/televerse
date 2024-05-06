part of 'types.dart';

/// This object represents the type of a BackgroundFill
enum BackgroundFillType {
  /// Solid Fill
  solid("solid"),

  /// The background is a gradient fill.
  gradient("gradient"),

  /// The background is a freeform gradient that rotates after every message in the chat.
  freeformGradient("freeformGradient"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [BackgroundFillType].
  const BackgroundFillType(this.value);

  factory BackgroundFillType.fromString(String val) {
    switch (val) {
      case "solid":
        return solid;
      case "gradient":
        return gradient;
      case "freeform_gradient":
        return freeformGradient;
      default:
        throw ArgumentError("That's not a possible value");
    }
  }
}
