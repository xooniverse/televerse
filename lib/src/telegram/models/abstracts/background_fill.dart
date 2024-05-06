part of '../models.dart';

/// This object describes the way a background is filled based on the selected colors.
abstract class BackgroundFill {
  /// Type of the background fill.
  BackgroundFillType get type;

  /// Creates a new [BackgroundFill] object.
  /// This method decides which [BackgroundFill] subclass to use based on the [type] field.
  factory BackgroundFill.fromJson(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'solid':
        return BackgroundFillSolid.fromJson(json);
      case 'gradient':
        return BackgroundFillGradient.fromJson(json);
      case 'freeform_gradient':
        return BackgroundFillFreeformGradient.fromJson(json);
      default:
        throw ArgumentError('Invalid background fill type');
    }
  }

  /// Creates a new [BackgroundFill] object from JSON.
  const BackgroundFill();

  /// Converts a [BackgroundFill] to a [Map] for JSON encoding.
  Map<String, dynamic> toJson();
}
