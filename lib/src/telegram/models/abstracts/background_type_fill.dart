part of '../models.dart';

/// This object describes the type of a background.
abstract class BackgroundType {
  /// Type of the background.
  BackgroundTypeType get type;

  /// Creates a new [BackgroundType] object.
  /// This method decides which [BackgroundType] subclass to use based on the [type] field.
  static BackgroundType create(Map<String, dynamic> json) {
    return switch (BackgroundTypeType.fromJson(json['type'])) {
      BackgroundTypeType.fill => BackgroundTypeFill.fromJson(json),
      BackgroundTypeType.wallpaper => BackgroundTypeWallpaper.fromJson(json),
      BackgroundTypeType.pattern => BackgroundTypePattern.fromJson(json),
      BackgroundTypeType.chatTheme => BackgroundTypeChatTheme.fromJson(json),
    };
  }

  /// Creates a new [BackgroundType] object from JSON.
  const BackgroundType();

  /// Converts a [BackgroundType] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
