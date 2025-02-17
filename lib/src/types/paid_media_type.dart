import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of a `PaidMedia`
@JsonEnum(fieldRename: FieldRename.snake)
enum PaidMediaType {
  /// Preview of paid media
  @JsonValue('preview')
  preview,

  /// Photo paid media
  @JsonValue('photo')
  photo,

  /// Video paid media
  @JsonValue('video')
  video;
}
