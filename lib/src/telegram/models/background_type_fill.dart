part of 'models.dart';

/// Represents a background type where the background is automatically filled based on selected colors.
class BackgroundTypeFill extends BackgroundType {
  @override
  BackgroundTypeType get type => BackgroundTypeType.fill;

  /// The background fill.
  final BackgroundFill fill;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  final int darkThemeDimming;

  /// Constructs a [BackgroundTypeFill] object.
  const BackgroundTypeFill({
    required this.fill,
    required this.darkThemeDimming,
  });

  /// Creates a [BackgroundTypeFill] object from JSON.
  factory BackgroundTypeFill.fromJson(Map<String, dynamic> json) {
    return BackgroundTypeFill(
      fill: BackgroundFill.fromJson(json['fill']),
      darkThemeDimming: json['dark_theme_dimming'],
    );
  }

  /// Converts a [BackgroundTypeFill] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'fill': fill.toJson(),
      'dark_theme_dimming': darkThemeDimming,
    };
  }
}
