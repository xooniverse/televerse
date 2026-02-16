// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'audio.dart';

part 'user_profile_audios.g.dart';
part 'user_profile_audios.freezed.dart';

/// This object represents the audios displayed on a user's profile.
@freezed
abstract class UserProfileAudios with _$UserProfileAudios {
  /// Creates a [UserProfileAudios] object.
  const factory UserProfileAudios({
    /// Total number of profile audios for the target user.
    @JsonKey(name: 'total_count') required int totalCount,

    /// Requested profile audios.
    @JsonKey(name: 'audios') required List<Audio> audios,
  }) = _UserProfileAudios;

  /// Creates a [UserProfileAudios] object from a JSON map.
  factory UserProfileAudios.fromJson(Map<String, dynamic> json) =>
      _$UserProfileAudiosFromJson(json);
}
