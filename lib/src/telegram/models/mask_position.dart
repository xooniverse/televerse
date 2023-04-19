part of models;

/// This object describes the position on faces where a mask should be placed by default.
class MaskPosition {
  /// The part of the face relative to which the mask should be placed. One of “forehead”, “eyes”, “mouth”, or “chin”.
  MaskPositionPoint point;

  /// Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. For example, choosing -1.0 will place mask just to the left of the default mask position.
  double xShift;

  /// Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. For example, 1.0 will place the mask just below the default mask position.
  double yShift;

  /// Mask scaling coefficient. For example, 2.0 means double size.
  double scale;

  /// Constructs a [MaskPosition] object
  MaskPosition({
    required this.point,
    required this.xShift,
    required this.yShift,
    required this.scale,
  });

  /// Creates a [MaskPosition] object from a JSON map
  factory MaskPosition.fromJson(Map<String, dynamic> json) {
    return MaskPosition(
      point: MaskPositionPoint.fromJson(json['point']),
      xShift: json['x_shift'] as double,
      yShift: json['y_shift'] as double,
      scale: json['scale'] as double,
    );
  }

  /// Converts a [MaskPosition] object to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'point': point.toJson(),
      'x_shift': xShift,
      'y_shift': yShift,
      'scale': scale,
    };
  }
}
