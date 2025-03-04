import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'mask_position.freezed.dart';
part 'mask_position.g.dart';

/// This object describes the position on faces where a mask should be placed by
/// default.
@freezed
class MaskPosition with _$MaskPosition {
  /// Constructs a [MaskPosition] object
  const factory MaskPosition({
    /// The part of the face relative to which the mask should be placed. One of
    /// "forehead", "eyes", "mouth", or "chin".
    @JsonKey(name: 'point') required MaskPositionPoint point,

    /// Shift by X-axis measured in widths of the mask scaled to the face size,
    /// from left to right. For example, choosing -1.0 will place mask just to
    /// the left of the default mask position.
    @JsonKey(name: 'x_shift') required double xShift,

    /// Shift by Y-axis measured in heights of the mask scaled to the face size,
    /// from top to bottom. For example, 1.0 will place the mask just below the
    /// default mask position.
    @JsonKey(name: 'y_shift') required double yShift,

    /// Mask scaling coefficient. For example, 2.0 means double size.
    @JsonKey(name: 'scale') required double scale,
  }) = _MaskPosition;

  /// Creates a [MaskPosition] object from a JSON map
  factory MaskPosition.fromJson(Map<String, dynamic> json) =>
      _$MaskPositionFromJson(json);
}
