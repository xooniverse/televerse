part of 'models.dart';

/// Represents a background type where the background is a pattern combined with a background fill.
class BackgroundTypePattern extends BackgroundType {
  @override
  BackgroundTypeType get type => BackgroundTypeType.pattern;

  /// Document with the pattern.
  final Document document;

  /// The background fill that is combined with the pattern.
  final BackgroundFill fill;

  /// Intensity of the pattern when it is shown above the filled background; 0-100.
  final int intensity;

  /// True, if the background fill must be applied only to the pattern itself. All other pixels are black in this case. For dark themes only.
  final bool isInverted;

  /// True, if the background moves slightly when the device is tilted.
  final bool isMoving;

  /// Constructs a [BackgroundTypePattern] object.
  const BackgroundTypePattern({
    required this.document,
    required this.fill,
    required this.intensity,
    required this.isInverted,
    required this.isMoving,
  });

  /// Creates a [BackgroundTypePattern] object from JSON.
  factory BackgroundTypePattern.fromJson(Map<String, dynamic> json) {
    return BackgroundTypePattern(
      document: Document.fromJson(json['document']),
      fill: BackgroundFill.fromJson(json['fill']),
      intensity: json['intensity'],
      isInverted: json['is_inverted'] ?? false,
      isMoving: json['is_moving'] ?? false,
    );
  }

  /// Converts a [BackgroundTypePattern] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'document': document.toJson(),
      'fill': fill.toJson(),
      'intensity': intensity,
      'is_inverted': isInverted,
      'is_moving': isMoving,
    };
  }
}
