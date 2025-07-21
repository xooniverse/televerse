import 'package:freezed_annotation/freezed_annotation.dart';

/// This object represents the type of the input paid media.
@JsonEnum()
enum InputPaidMediaType {
  /// Represents a photo paid media.
  @JsonValue("photo")
  photo,

  /// Represents a video paid media.
  @JsonValue("video")
  video,
  ;
}
