import 'package:freezed_annotation/freezed_annotation.dart';

/// The source of a `PassportElementError`
@JsonEnum(fieldRename: FieldRename.snake)
enum PassportElementErrorSource {
  /// Data field error source
  @JsonValue('data')
  data,

  /// Front side error source
  @JsonValue('front_side')
  frontSide,

  /// Reverse side error source
  @JsonValue('reverse_side')
  reverseSide,

  /// Selfie error source
  @JsonValue('selfie')
  selfie,

  /// File error source
  @JsonValue('file')
  file,

  /// Files error source
  @JsonValue('files')
  files,

  /// Translation file error source
  @JsonValue('translation_file')
  translationFile,

  /// Translation files error source
  @JsonValue('translation_files')
  translationFiles,

  /// Unspecified error source
  @JsonValue('unspecified')
  unspecified;
}
