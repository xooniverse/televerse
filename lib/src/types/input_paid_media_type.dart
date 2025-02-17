import 'package:freezed_annotation/freezed_annotation.dart';
part 'input_paid_media_type.g.dart';

/// This object represents the type of the input paid media.
@JsonEnum(alwaysCreate: true)
enum InputPaidMediaType {
  /// Represents a photo paid media.
  @JsonValue("photo")
  photo,

  /// Represents a video paid media.
  @JsonValue("video")
  video,
  ;

  /// Converts the [InputPaidMediaType] to its corresponding JSON value.
  String toJson() => _$InputPaidMediaTypeEnumMap[this]!;
}
