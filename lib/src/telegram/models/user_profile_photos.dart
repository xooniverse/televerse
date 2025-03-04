import 'package:freezed_annotation/freezed_annotation.dart';
import 'photo_size.dart';

part 'user_profile_photos.freezed.dart';
part 'user_profile_photos.g.dart';

/// This object represent a user's profile pictures.
@freezed
class UserProfilePhotos with _$UserProfilePhotos {
  /// Constructs a [UserProfilePhotos] object
  const factory UserProfilePhotos({
    /// Total number of profile pictures the target user has
    @JsonKey(name: 'total_count') required int totalCount,

    /// Requested profile pictures (in up to 4 sizes each)
    @JsonKey(name: 'photos') required List<List<PhotoSize>> photos,
  }) = _UserProfilePhotos;

  /// Creates a [UserProfilePhotos] object from JSON object
  factory UserProfilePhotos.fromJson(Map<String, dynamic> json) =>
      _$UserProfilePhotosFromJson(json);
}
