import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart';

/// Represents the type of the background fill
@JsonEnum(fieldRename: FieldRename.snake)
enum BackgroundFillType {
  /// Solid background fill - refer [BackgroundFillSolid]
  @JsonValue("solid")
  solid,

  /// Gradient background fill - refer [BackgroundFillGradient]
  @JsonValue("gradient")
  gradient,

  /// Freeform Gradient background fill - refer [BackgroundFillFreeformGradient]
  @JsonValue("freeform_gradient")
  freeformGradient,
}
