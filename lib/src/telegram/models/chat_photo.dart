// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_photo.freezed.dart';
part 'chat_photo.g.dart';

/// This object represents a chat photo.
@freezed
abstract class ChatPhoto with _$ChatPhoto {
  /// Creates a new [ChatPhoto] object.
  const factory ChatPhoto({
    /// File identifier of small (160x160) chat photo. This file_id can be used
    /// only for photo download and only for as long as the photo is not
    /// changed.
    @JsonKey(name: 'small_file_id') required String smallFileId,

    /// Unique file identifier of small (160x160) chat photo, which is supposed
    /// to be the same over time and for different bots. Can't be used to
    /// download or reuse the file.
    @JsonKey(name: 'small_file_unique_id') required String smallFileUniqueId,

    /// File identifier of big (640x640) chat photo. This file_id can be used
    /// only for photo download and only for as long as the photo is not
    /// changed.
    @JsonKey(name: 'big_file_id') required String bigFileId,

    /// Unique file identifier of big (640x640) chat photo, which is supposed to
    /// be the same over time and for different bots. Can't be used to download
    /// or reuse the file.
    @JsonKey(name: 'big_file_unique_id') required String bigFileUniqueId,
  }) = _ChatPhoto;

  /// Creates a new [ChatPhoto] object from json.
  factory ChatPhoto.fromJson(Map<String, dynamic> json) =>
      _$ChatPhotoFromJson(json);
}
