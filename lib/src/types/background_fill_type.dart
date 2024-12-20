part of 'types.dart';

/// This object represents the type of a BackgroundFill
enum BackgroundFillType {
  /// Solid Fill
  solid("solid"),

  /// The background is a gradient fill.
  gradient("gradient"),

  /// The background is a freeform gradient that rotates after every message in the chat.
  freeformGradient("freeform_gradient"),
  ;

  /// The value of this enum.
  final String value;

  /// Constructs a new [BackgroundFillType].
  const BackgroundFillType(this.value);

  factory BackgroundFillType.fromJson(String json) {
    return values.singleWhere((e) => e.value == json);
  }
}
