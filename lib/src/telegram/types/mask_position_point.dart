import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents the position on faces where a mask should be placed by default.
@JsonEnum(fieldRename: FieldRename.snake)
enum MaskPositionPoint {
  /// The mask should be placed relatively to the forehead.
  @JsonValue('forehead')
  forehead,

  /// The mask should be placed relatively to the eyes.
  @JsonValue('eyes')
  eyes,

  /// The mask should be placed relatively to the mouth.
  @JsonValue('mouth')
  mouth,

  /// The mask should be placed relatively to the chin.
  @JsonValue('chin')
  chin;
}
