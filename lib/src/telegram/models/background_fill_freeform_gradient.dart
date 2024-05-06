part of 'models.dart';

/// Represents a background fill where the background is a freeform gradient that rotates after every message in the chat.
class BackgroundFillFreeformGradient extends BackgroundFill {
  @override
  BackgroundFillType get type => BackgroundFillType.freeformGradient;

  /// A list of the 3 or 4 base colors that are used to generate the freeform gradient in the RGB24 format.
  final List<int> colors;

  /// Constructs a [BackgroundFillFreeformGradient] object.
  const BackgroundFillFreeformGradient({
    required this.colors,
  });

  /// Creates a [BackgroundFillFreeformGradient] object from JSON.
  factory BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) {
    return BackgroundFillFreeformGradient(
      colors: List<int>.from(json['colors']),
    );
  }

  /// Converts a [BackgroundFillFreeformGradient] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'colors': colors,
    };
  }
}
