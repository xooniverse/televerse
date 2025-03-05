// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/televerse.dart';

part 'background_fill.freezed.dart';
part 'background_fill.g.dart';

/// This object describes the way a background is filled based on the selected
/// colors. Currently, it can be one of
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class BackgroundFill with _$BackgroundFill {
  /// Constructs a [BackgroundFillSolid] instance
  const factory BackgroundFill.solid({
    /// Type of the background fill - always `solid`
    @JsonKey(name: 'type')
    @Default(BackgroundFillType.solid)
    BackgroundFillType type,
    @JsonKey(name: 'color') required final int color,
  }) = BackgroundFillSolid;

  /// Constructs a [BackgroundFillGradient] object.
  const factory BackgroundFill.gradient({
    /// Type of the background fill - always `gradient`
    @JsonKey(name: 'type')
    @Default(BackgroundFillType.gradient)
    BackgroundFillType type,

    /// Top color of the gradient in the RGB24 format.
    @JsonKey(name: 'top_color') required final int topColor,

    /// Bottom color of the gradient in the RGB24 format.
    @JsonKey(name: 'bottom_color') required final int bottomColor,

    /// Clockwise rotation angle of the background fill in degrees, 0-359.
    @JsonKey(name: 'rotation_angle') required final int rotationAngle,
  }) = BackgroundFillGradient;

  /// Constructs a Freeform Gradient [BackgroundFill]
  const factory BackgroundFill.freeformGradient({
    /// Type of the background fill - always `freeform_gradient`
    @JsonKey(name: 'type')
    @Default(BackgroundFillType.freeformGradient)
    BackgroundFillType type,

    /// A list of the 3 or 4 base colors that are used to generate the freeform
    /// gradient in the RGB24 format.
    @JsonKey(name: 'colors') required final List<int> colors,
  }) = BackgroundFillFreeformGradient;

  factory BackgroundFill.fromJson(Map<String, Object?> json) =>
      _$BackgroundFillFromJson(json);
}
