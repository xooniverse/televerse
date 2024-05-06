part of '../models.dart';

/// This object describes the type of a background.
abstract class BackgroundType {
  /// Type of the background.
  BackgroundTypeType get type;

  /// Creates a new [BackgroundType] object.
  /// This method decides which [BackgroundType] subclass to use based on the [type] field.
  static BackgroundType create(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'fill':
        return BackgroundTypeFill.fromJson(json);
      case 'wallpaper':
        return BackgroundTypeWallpaper.fromJson(json);
      case 'pattern':
        return BackgroundTypePattern.fromJson(json);
      case 'chat_theme':
        return BackgroundTypeChatTheme.fromJson(json);
      default:
        throw ArgumentError('Invalid background type');
    }
  }

  /// Creates a new [BackgroundType] object from JSON.
  const BackgroundType();

  /// Converts a [BackgroundType] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
