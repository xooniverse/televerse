// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:televerse/telegram.dart' show InputProfilePhotoType;
import 'package:televerse/televerse.dart' show InputFileConverter, InputFile;
part 'input_profile_photo.freezed.dart';
part 'input_profile_photo.g.dart';

/// Interface to expose the `type` property on InputProfilePhoto
abstract interface class _WithProfilePhotoType {
  /// Type of the profile photo
  InputProfilePhotoType get type;
}

/// This object describes a profile photo to set. It can be one of
/// - InputProfilePhotoStatic
/// - InputProfilePhotoAnimated
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class InputProfilePhoto
    with _$InputProfilePhoto
    implements _WithProfilePhotoType {
  /// Private constructor
  const InputProfilePhoto._();

  /// The InputFile getter
  InputFile get file {
    return switch (this) {
      InputProfilePhotoStatic(photo: final photo) => photo,
      InputProfilePhotoAnimated(animation: final animation) => animation,
    };
  }

  /// A static profile photo in the .JPG format.
  const factory InputProfilePhoto.static({
    /// Type of the profile photo, always "static"
    @JsonKey(name: 'type')
    @Default(InputProfilePhotoType.static)
    final InputProfilePhotoType type,

    /// The static profile photo. Profile photos can't be reused and can only be
    /// uploaded as a new file.
    @JsonKey(name: 'photo') @InputFileConverter() required InputFile photo,
  }) = InputProfilePhotoStatic;

  /// An animated profile photo in the MPEG4 format.
  const factory InputProfilePhoto.animated({
    /// Type of the profile photo, always "animated"
    @JsonKey(name: 'type')
    @Default(InputProfilePhotoType.animated)
    final InputProfilePhotoType type,

    /// The animated profile photo. Profile photos can't be reused and can only be
    /// uploaded as a new file.
    @JsonKey(name: 'animation')
    @InputFileConverter()
    required InputFile animation,

    /// Optional. Timestamp in seconds of the frame that will be used as the
    /// static profile photo. Defaults to 0.0.
    @JsonKey(name: 'main_frame_timestamp') double? mainFrameTimestamp,
  }) = InputProfilePhotoAnimated;

  /// Creates a new [InputProfilePhoto] object from a JSON [Map].
  factory InputProfilePhoto.fromJson(Map<String, dynamic> json) =>
      _$InputProfilePhotoFromJson(json);
}
