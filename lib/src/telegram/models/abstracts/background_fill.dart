part of '../models.dart';

/// This object describes the way a background is filled based on the selected colors.
abstract class BackgroundFill {
  /// Type of the background fill.
  BackgroundFillType get type;

  /// Creates a new [BackgroundFill] object.
  /// This method decides which [BackgroundFill] subclass to use based on the [type] field.
  factory BackgroundFill.fromJson(Map<String, dynamic> json) {
    return switch (BackgroundFillType.fromJson(json['type'])) {
      BackgroundFillType.solid => BackgroundFillSolid.fromJson(json),
      BackgroundFillType.gradient => BackgroundFillGradient.fromJson(json),
      BackgroundFillType.freeformGradient =>
        BackgroundFillFreeformGradient.fromJson(json),
    };
  }

  /// Creates a new [BackgroundFill] object from JSON.
  const BackgroundFill();

  /// Converts a [BackgroundFill] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
