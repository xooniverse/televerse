part of 'models.dart';

/// Represents a background fill where the background is a gradient fill.
class BackgroundFillGradient extends BackgroundFill {
  @override
  BackgroundFillType get type => BackgroundFillType.gradient;

  /// Top color of the gradient in the RGB24 format.
  final int topColor;

  /// Bottom color of the gradient in the RGB24 format.
  final int bottomColor;

  /// Clockwise rotation angle of the background fill in degrees; 0-359.
  final int rotationAngle;

  /// Constructs a [BackgroundFillGradient] object.
  const BackgroundFillGradient({
    required this.topColor,
    required this.bottomColor,
    required this.rotationAngle,
  });

  /// Creates a [BackgroundFillGradient] object from JSON.
  factory BackgroundFillGradient.fromJson(Map<String, dynamic> json) {
    return BackgroundFillGradient(
      topColor: json['top_color'],
      bottomColor: json['bottom_color'],
      rotationAngle: json['rotation_angle'],
    );
  }

  /// Converts a [BackgroundFillGradient] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'top_color': topColor,
      'bottom_color': bottomColor,
      'rotation_angle': rotationAngle,
    };
  }
}
