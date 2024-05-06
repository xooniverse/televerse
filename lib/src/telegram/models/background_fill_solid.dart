part of 'models.dart';

/// Represents a background fill where the background is filled using the selected color.
class BackgroundFillSolid extends BackgroundFill {
  @override
  BackgroundFillType get type => BackgroundFillType.solid;

  /// The color of the background fill in the RGB24 format.
  final int color;

  /// Constructs a [BackgroundFillSolid] object.
  const BackgroundFillSolid({
    required this.color,
  });

  /// Creates a [BackgroundFillSolid] object from JSON.
  factory BackgroundFillSolid.fromJson(Map<String, dynamic> json) {
    return BackgroundFillSolid(
      color: json['color'],
    );
  }

  /// Converts a [BackgroundFillSolid] object to JSON.
  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type.value,
      'color': color,
    };
  }
}
