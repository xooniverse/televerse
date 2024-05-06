part of 'models.dart';

/// Represents a background type where the background is a wallpaper in JPEG format.
class BackgroundTypeWallpaper extends BackgroundType {
  @override
  BackgroundTypeType get type => BackgroundTypeType.wallpaper;

  /// Document with the wallpaper.
  final Document document;

  /// Dimming of the background in dark themes, as a percentage; 0-100.
  final int darkThemeDimming;

  /// True, if the wallpaper is downscaled to fit in a 450x450 square and then box-blurred with radius 12.
  final bool isBlurred;

  /// True, if the background moves slightly when the device is tilted.
  final bool isMoving;

  /// Constructs a [BackgroundTypeWallpaper] object.
  const BackgroundTypeWallpaper({
    required this.document,
    required this.darkThemeDimming,
    required this.isBlurred,
    required this.isMoving,
  });

  /// Creates a [BackgroundTypeWallpaper] object from JSON.
  factory BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) {
    return BackgroundTypeWallpaper(
      document: Document.fromJson(json['document']),
      darkThemeDimming: json['dark_theme_dimming'],
      isBlurred: json['is_blurred'] ?? false,
      isMoving: json['is_moving'] ?? false,
    );
  }

  /// Converts a [BackgroundTypeWallpaper] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'document': document.toJson(),
      'dark_theme_dimming': darkThemeDimming,
      'is_blurred': isBlurred,
      'is_moving': isMoving,
    };
  }
}
